.class Lcom/vkontakte/android/FriendRequestsView$1;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendRequestsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$1;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$1;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$3(Lcom/vkontakte/android/FriendRequestsView;)V

    .line 96
    return-void
.end method
