.class Lcom/vkontakte/android/FriendRequestsView$4$1;
.super Ljava/lang/Object;
.source "FriendRequestsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendRequestsView$4;->success(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/FriendRequestsView$4;

.field private final synthetic val$reqs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendRequestsView$4;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    iput-object p2, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->val$reqs:Ljava/util/ArrayList;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 197
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$5(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v6, 0x12c

    invoke-static {v3, v4, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 198
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$6(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 203
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v2, "toDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 208
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->val$reqs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 214
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/FriendRequestsView;->updateList()V

    .line 216
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$1(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 217
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$7(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 218
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v6

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->val$reqs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    sget v3, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    const/16 v7, 0x64

    if-le v3, v7, :cond_3

    sget v3, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v3, v7, :cond_8

    :cond_3
    const/4 v3, 0x1

    :goto_2
    invoke-static {v6, v3}, Lcom/vkontakte/android/FriendRequestsView;->access$8(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 219
    const-string v3, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "more="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView;->access$4(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$9(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/Button;

    move-result-object v6

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$4(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v7, 0xa

    if-le v3, v7, :cond_9

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$10(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$4(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$10(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v6}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/FriendRequestsView;->access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    move v5, v4

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 223
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView;->access$6(Lcom/vkontakte/android/FriendRequestsView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 224
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 225
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView$4$1;->this$1:Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-static {v3}, Lcom/vkontakte/android/FriendRequestsView$4;->access$0(Lcom/vkontakte/android/FriendRequestsView$4;)Lcom/vkontakte/android/FriendRequestsView;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/vkontakte/android/FriendRequestsView;->access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V

    .line 227
    :cond_5
    return-void

    .line 205
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    .line 206
    .local v1, "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 208
    .end local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/FriendRequest;

    .line 209
    .restart local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 210
    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_8
    move v3, v4

    .line 218
    goto/16 :goto_2

    :cond_9
    move v3, v5

    .line 220
    goto/16 :goto_3

    :cond_a
    move v3, v5

    .line 221
    goto :goto_4
.end method
