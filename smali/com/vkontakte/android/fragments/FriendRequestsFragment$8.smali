.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;
.super Ljava/lang/Object;
.source "FriendRequestsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsDelete$Callback;


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

.field private final synthetic val$uid:I

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;->val$uid:I

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 409
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 410
    .local v0, "args":Lorg/json/JSONObject;
    const-string v1, "user_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;->val$uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    const-string v1, "friends.delete"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v0    # "args":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public success(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "result"    # I

    .prologue
    .line 400
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;->val$v:Landroid/view/View;

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

    .line 401
    .local v0, "isReq":Z
    if-eqz v0, :cond_0

    .line 402
    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 403
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 404
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    :cond_0
    return-void
.end method
