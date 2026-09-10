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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$14(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$15(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->updateList()V

    .line 252
    const-string v0, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "more="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$8(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

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

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

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

    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$16(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$8(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v4, 0xa

    if-le v0, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$17(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$8(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$17(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$9(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;->access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->access$18(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V

    .line 261
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 253
    goto :goto_0

    .line 255
    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method
