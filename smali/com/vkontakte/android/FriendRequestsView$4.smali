.class Lcom/vkontakte/android/FriendRequestsView$4;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGetRequests$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->loadData()V
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
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$8(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$16(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    return-void
.end method

.method public success([Lcom/vkontakte/android/api/FriendRequest;)V
    .locals 2
    .param p1, "reqs"    # [Lcom/vkontakte/android/api/FriendRequest;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$4;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    new-instance v1, Lcom/vkontakte/android/FriendRequestsView$4$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/FriendRequestsView$4$1;-><init>(Lcom/vkontakte/android/FriendRequestsView$4;[Lcom/vkontakte/android/api/FriendRequest;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/FriendRequestsView;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method
