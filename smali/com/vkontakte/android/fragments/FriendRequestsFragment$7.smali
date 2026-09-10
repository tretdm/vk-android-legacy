.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;
.super Ljava/lang/Object;
.source "FriendRequestsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsAdd$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

.field private final synthetic val$req:Lcom/vkontakte/android/api/FriendRequest;

.field private final synthetic val$uid:I

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/api/FriendRequest;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;->val$v:Landroid/view/View;

    iput p4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;->val$uid:I

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 384
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 385
    .local v0, "args":Lorg/json/JSONObject;
    const-string v1, "user_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;->val$uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v1, "friends.add"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0    # "args":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public success(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "result"    # I

    .prologue
    .line 367
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    invoke-static {v1}, Lcom/vkontakte/android/data/Friends;->add(Lcom/vkontakte/android/UserProfile;)V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$21(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;->val$v:Landroid/view/View;

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 376
    .local v0, "isReq":Z
    if-eqz v0, :cond_2

    .line 377
    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 378
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    :cond_2
    return-void
.end method
