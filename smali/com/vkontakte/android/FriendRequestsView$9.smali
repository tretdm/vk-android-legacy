.class Lcom/vkontakte/android/FriendRequestsView$9;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsDelete$Callback;


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

.field private final synthetic val$uid:I

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iput-object p2, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$uid:I

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
    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "user_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v1, "friends.delete"

    invoke-static {v1, v0}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 423
    return-void
.end method

.method public success(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "result"    # I

    .prologue
    .line 405
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$v:Landroid/view/View;

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

    .line 406
    .local v0, "isReq":Z
    if-eqz v0, :cond_0

    .line 407
    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 408
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    :cond_0
    return-void
.end method
