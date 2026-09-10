.class Lcom/vkontakte/android/FriendRequestsView$8;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsAdd$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendRequestsView;

.field private final synthetic val$req:Lcom/vkontakte/android/api/FriendRequest;

.field private final synthetic val$uid:I

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/api/FriendRequest;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$8;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iput-object p2, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    iput-object p3, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$v:Landroid/view/View;

    iput p4, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$uid:I

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 386
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "user_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v1, "friends.add"

    invoke-static {v1, v0}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 388
    return-void
.end method

.method public success(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "result"    # I

    .prologue
    .line 364
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    invoke-static {v1}, Lcom/vkontakte/android/data/Friends;->add(Lcom/vkontakte/android/UserProfile;)V

    .line 365
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$8;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$13(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$v:Landroid/view/View;

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 371
    .local v0, "isReq":Z
    if-eqz v0, :cond_1

    .line 372
    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 373
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$8;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$8;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    :cond_1
    return-void
.end method
