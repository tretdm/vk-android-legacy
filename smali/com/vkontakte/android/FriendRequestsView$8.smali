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

.field private final synthetic val$isSuggestion:Z

.field private final synthetic val$req:Lcom/vkontakte/android/api/FriendRequest;

.field private final synthetic val$uid:I

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/api/FriendRequest;Landroid/view/View;ZI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$8;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iput-object p2, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    iput-object p3, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$v:Landroid/view/View;

    iput-boolean p4, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$isSuggestion:Z

    iput p5, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$uid:I

    .line 316
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

    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    iput v2, v0, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 335
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$8;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090052

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 336
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$uid:I

    if-ne v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f060071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f060079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_0
    return-void
.end method

.method public success(II)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "result"    # I

    .prologue
    const/4 v6, 0x0

    .line 318
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    const/4 v3, 0x2

    iput v3, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 319
    sget-object v2, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$req:Lcom/vkontakte/android/api/FriendRequest;

    iget-object v3, v3, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$8;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 322
    .local v0, "_uid":I
    if-ne v0, p1, :cond_0

    .line 323
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$8;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$isSuggestion:Z

    invoke-static {v3, v2, v4, v5}, Lcom/vkontakte/android/FriendRequestsView;->access$19(Lcom/vkontakte/android/FriendRequestsView;Landroid/view/View;ZZ)V

    .line 326
    .end local v0    # "_uid":I
    :cond_0
    iget-boolean v2, p0, Lcom/vkontakte/android/FriendRequestsView$8;->val$isSuggestion:Z

    if-nez v2, :cond_1

    .line 327
    sget-object v2, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 328
    .local v1, "hints":[I
    sget-object v2, Lcom/vkontakte/android/Global;->friendHints:[I

    sget-object v3, Lcom/vkontakte/android/Global;->friendHints:[I

    array-length v3, v3

    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput p1, v1, v2

    .line 330
    sput-object v1, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 332
    .end local v1    # "hints":[I
    :cond_1
    return-void
.end method
