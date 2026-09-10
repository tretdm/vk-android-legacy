.class Lcom/vkontakte/android/FriendRequestsView$5;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Lcom/vkontakte/android/FriendsGetSuggestions$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    .line 209
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

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$8(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/FriendRequestsView;->access$16(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090057

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v4, 0x0

    .line 212
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v2, v2, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 214
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/FriendRequestsView;->updateList()V

    .line 221
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$12(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 222
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v2, v2, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 224
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$16(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$8(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$15(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    invoke-static {v2, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 229
    return-void

    .line 214
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 215
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v1, Lcom/vkontakte/android/api/FriendRequest;

    invoke-direct {v1}, Lcom/vkontakte/android/api/FriendRequest;-><init>()V

    .line 216
    .local v1, "req":Lcom/vkontakte/android/api/FriendRequest;
    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    .line 217
    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    iput-object v3, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$5;->this$0:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
