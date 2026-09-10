.class Lcom/vkontakte/android/FriendRequestsView$5$1;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView$5;->success(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/FriendRequestsView$5;

.field private final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView$5;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    iput-object p2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->val$users:Ljava/util/ArrayList;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$6(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 264
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/FriendRequestsView;->updateList()V

    .line 265
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$8(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 266
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$6(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 268
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$5(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 271
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView;->access$10(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v2}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$7(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 273
    return-void

    .line 258
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 259
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v1, Lcom/vkontakte/android/api/FriendRequest;

    invoke-direct {v1}, Lcom/vkontakte/android/api/FriendRequest;-><init>()V

    .line 260
    .local v1, "req":Lcom/vkontakte/android/api/FriendRequest;
    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    .line 261
    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    iput-object v3, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 262
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$5$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$5;->access$0(Lcom/vkontakte/android/FriendRequestsView$5;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
