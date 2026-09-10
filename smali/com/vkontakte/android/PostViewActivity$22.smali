.class Lcom/vkontakte/android/PostViewActivity$22;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGetComments$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->loadComments(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;

.field private final synthetic val$clear:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/PostViewActivity$22;->val$clear:Z

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->access$29(Lcom/vkontakte/android/PostViewActivity;Z)V

    .line 676
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 677
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 8
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/NewsComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "comments":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/NewsComment;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 636
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2, v5}, Lcom/vkontakte/android/PostViewActivity;->access$29(Lcom/vkontakte/android/PostViewActivity;Z)V

    .line 637
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/PostViewActivity;->access$30(Lcom/vkontakte/android/PostViewActivity;J)V

    .line 639
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 640
    .local v0, "firstVisible":I
    const/4 v1, -0x1

    .line 641
    .local v1, "itemOffset":I
    if-nez v0, :cond_4

    .line 642
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v2

    if-le v2, v7, :cond_0

    .line 643
    add-int/lit8 v0, v0, 0x1

    .line 644
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 654
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$31(Lcom/vkontakte/android/PostViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$31(Lcom/vkontakte/android/PostViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$31(Lcom/vkontakte/android/PostViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 657
    iget-boolean v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->val$clear:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 658
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v5, p2}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z

    .line 659
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le p1, v2, :cond_5

    .line 660
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    .line 661
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 662
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/LoadMoreCommentsView;->setNumComments(I)V

    .line 666
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iput p1, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 667
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PostViewActivity;->updateList()V

    .line 668
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    .line 669
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 671
    :cond_3
    return-void

    .line 648
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 649
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    goto/16 :goto_0

    .line 664
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$22;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    goto :goto_1
.end method
