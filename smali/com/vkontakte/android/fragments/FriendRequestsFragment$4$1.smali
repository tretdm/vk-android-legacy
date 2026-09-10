.class Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;
.super Ljava/lang/Object;
.source "FriendRequestsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->success(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1100(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1200(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->updateList()V

    .line 259
    const-string v0, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "more="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1300(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v4, 0xa

    if-le v0, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$1200(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->this$0:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$502(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z

    .line 268
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 260
    goto :goto_0

    .line 262
    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method
