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

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    return-void
.end method

.method public success()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v3, v1, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_1

    .line 263
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendRequestsView;->updateList()V

    .line 264
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v1, :cond_0

    .line 265
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v3, 0x4

    sput v2, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-virtual {v1, v3, v2}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 266
    sget-object v1, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v2, "friends"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$7;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$15(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 270
    return-void

    .line 260
    :cond_1
    aget-object v0, v3, v1

    .line 261
    .local v0, "r":Lcom/vkontakte/android/api/FriendRequest;
    iget v5, v0, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-nez v5, :cond_2

    const/4 v5, 0x3

    iput v5, v0, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 260
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
