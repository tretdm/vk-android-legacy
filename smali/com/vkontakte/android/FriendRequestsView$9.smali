.class Lcom/vkontakte/android/FriendRequestsView$9;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView;->declineRequest(ILandroid/view/View;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iput-object p2, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    iput-object p3, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$v:Landroid/view/View;

    iput p4, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$uid:I

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    iput v2, v0, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$9;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090053

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 414
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$uid:I

    if-ne v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$v:Landroid/view/View;

    const v1, 0x7f06007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$v:Landroid/view/View;

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :cond_0
    return-void
.end method

.method public success(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "result"    # I

    .prologue
    const/4 v3, 0x0

    .line 402
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    const/4 v2, 0x3

    iput v2, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 403
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v1}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 405
    .local v0, "_uid":I
    if-ne v0, p1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$9;->val$v:Landroid/view/View;

    invoke-static {v1, v2, v3, v3}, Lcom/vkontakte/android/FriendRequestsView;->access$19(Lcom/vkontakte/android/FriendRequestsView;Landroid/view/View;ZZ)V

    .line 409
    .end local v0    # "_uid":I
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView$9;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    return-void
.end method
