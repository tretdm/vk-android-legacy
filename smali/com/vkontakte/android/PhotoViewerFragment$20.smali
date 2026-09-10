.class Lcom/vkontakte/android/PhotoViewerFragment$20;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGetComments$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->loadComments(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;

.field private final synthetic val$clear:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->val$clear:Z

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->access$17(Lcom/vkontakte/android/PhotoViewerFragment;Z)V

    .line 702
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->refreshDone()V

    .line 703
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 9
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
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 663
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3, v6}, Lcom/vkontakte/android/PhotoViewerFragment;->access$17(Lcom/vkontakte/android/PhotoViewerFragment;Z)V

    .line 664
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/PhotoViewerFragment;->access$18(Lcom/vkontakte/android/PhotoViewerFragment;J)V

    .line 666
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 667
    .local v0, "firstVisible":I
    const/4 v1, -0x1

    .line 668
    .local v1, "itemOffset":I
    if-nez v0, :cond_3

    .line 669
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildCount()I

    move-result v3

    if-le v3, v8, :cond_0

    .line 670
    add-int/lit8 v0, v0, 0x1

    .line 671
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 681
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->refreshDone()V

    .line 682
    iget-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->val$clear:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 683
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 684
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v3

    const v4, 0x7f0600d6

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/LoadMoreCommentsView;

    .line 685
    .local v2, "loadMoreView":Lcom/vkontakte/android/LoadMoreCommentsView;
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le p1, v3, :cond_4

    .line 686
    invoke-virtual {v2, v6}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    .line 687
    invoke-virtual {v2, v6}, Lcom/vkontakte/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 688
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/LoadMoreCommentsView;->setNumComments(I)V

    .line 692
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$12(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/Photo;

    move-result-object v3

    iput p1, v3, Lcom/vkontakte/android/Photo;->nComments:I

    .line 693
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$16(Lcom/vkontakte/android/PhotoViewerFragment;)V

    .line 694
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$2(Lcom/vkontakte/android/PhotoViewerFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 695
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->setSelectionFromTop(II)V

    .line 697
    :cond_2
    return-void

    .line 675
    .end local v2    # "loadMoreView":Lcom/vkontakte/android/LoadMoreCommentsView;
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildCount()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 676
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$20;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$1(Lcom/vkontakte/android/PhotoViewerFragment;)Lcom/vkontakte/android/ui/PhotoCommentsListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    goto/16 :goto_0

    .line 690
    .restart local v2    # "loadMoreView":Lcom/vkontakte/android/LoadMoreCommentsView;
    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    goto :goto_1
.end method
