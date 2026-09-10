.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;
.super Ljava/lang/Object;
.source "FriendRequestsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment;->markAllAsViewed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 301
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->updateList()V

    .line 305
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$17(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 306
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    return-void

    .line 301
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/FriendRequest;

    .line 302
    .local v0, "r":Lcom/vkontakte/android/api/FriendRequest;
    iget v2, v0, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v2, :cond_0

    const/4 v2, 0x3

    iput v2, v0, Lcom/vkontakte/android/api/FriendRequest;->state:I

    goto :goto_0
.end method
