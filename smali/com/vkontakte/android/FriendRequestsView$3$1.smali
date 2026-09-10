.class Lcom/vkontakte/android/FriendRequestsView$3$1;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/FriendRequestsView$3;

.field private final synthetic val$pos:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView$3;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$3$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$3;

    iput p2, p0, Lcom/vkontakte/android/FriendRequestsView$3$1;->val$pos:I

    iput-object p3, p0, Lcom/vkontakte/android/FriendRequestsView$3$1;->val$view:Landroid/view/View;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$3$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$3;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView$3;->access$0(Lcom/vkontakte/android/FriendRequestsView$3;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$3$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$3;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView$3;->access$0(Lcom/vkontakte/android/FriendRequestsView$3;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    iget v2, p0, Lcom/vkontakte/android/FriendRequestsView$3$1;->val$pos:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$3$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$7(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)V

    .line 132
    :cond_0
    return-void
.end method
