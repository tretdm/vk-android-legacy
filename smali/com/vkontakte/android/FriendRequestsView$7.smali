.class Lcom/vkontakte/android/FriendRequestsView$7;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->markAllAsViewed()V
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
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06004e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 310
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendRequestsView;->updateList()V

    .line 314
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$10(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    return-void

    .line 310
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 311
    .local v0, "r":Lcom/vkontakte/android/api/FriendRequest;
    iget v2, v0, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v2, :cond_0

    const/4 v2, 0x3

    iput v2, v0, Lcom/vkontakte/android/api/FriendRequest;->state:I

    goto :goto_0
.end method
