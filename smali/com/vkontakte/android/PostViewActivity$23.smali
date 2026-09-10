.class Lcom/vkontakte/android/PostViewActivity$23;
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
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/PostViewActivity$23;->val$clear:Z

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PostViewActivity;->access$30(Lcom/vkontakte/android/PostViewActivity;Z)V

    .line 826
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 827
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 13
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
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 772
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7, v10}, Lcom/vkontakte/android/PostViewActivity;->access$30(Lcom/vkontakte/android/PostViewActivity;Z)V

    .line 773
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/PostViewActivity;->access$31(Lcom/vkontakte/android/PostViewActivity;J)V

    .line 775
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 776
    .local v2, "firstVisible":I
    const/4 v4, -0x1

    .line 777
    .local v4, "itemOffset":I
    if-nez v2, :cond_6

    .line 778
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v7

    if-le v7, v12, :cond_0

    .line 779
    add-int/lit8 v2, v2, 0x1

    .line 780
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 790
    :cond_0
    :goto_0
    sget v7, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    sget-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/vkontakte/android/Global;->maybeTablet:Z

    if-eqz v7, :cond_2

    .line 791
    :cond_1
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 792
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/high16 v8, 0x42840000    # 66.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int v6, v7, v8

    .line 793
    .local v6, "tSize":I
    const/16 v7, 0x25c

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 794
    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 799
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "tSize":I
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$32(Lcom/vkontakte/android/PostViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 800
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$32(Lcom/vkontakte/android/PostViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v8}, Lcom/vkontakte/android/PostViewActivity;->access$32(Lcom/vkontakte/android/PostViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 801
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 802
    iget-boolean v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->val$clear:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 803
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v3, v7, :cond_8

    .line 808
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v10, p2}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z

    .line 809
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-le p1, v7, :cond_9

    .line 810
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$11(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    .line 811
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$11(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/vkontakte/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 812
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$11(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v8}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/LoadMoreCommentsView;->setNumComments(I)V

    .line 816
    :goto_3
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v7

    iput p1, v7, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 817
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/PostViewActivity;->updateList()V

    .line 818
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_5

    .line 819
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 821
    :cond_5
    return-void

    .line 784
    .end local v3    # "i":I
    :cond_6
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v7

    if-le v7, v11, :cond_0

    .line 785
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    goto/16 :goto_0

    .line 794
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "tSize":I
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    .line 795
    .local v0, "c":Lcom/vkontakte/android/NewsComment;
    int-to-float v8, v6

    const v9, 0x3f2a7efa    # 0.666f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, v0, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v6, v8, v9}, Lcom/vkontakte/android/NewsEntry;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_1

    .line 804
    .end local v0    # "c":Lcom/vkontakte/android/NewsComment;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "tSize":I
    .restart local v3    # "i":I
    :cond_8
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 805
    .local v1, "comm":Lcom/vkontakte/android/NewsComment;
    iget-object v7, v1, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/vkontakte/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2, v3, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 803
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 814
    .end local v1    # "comm":Lcom/vkontakte/android/NewsComment;
    :cond_9
    iget-object v7, p0, Lcom/vkontakte/android/PostViewActivity$23;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PostViewActivity;->access$11(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    goto :goto_3
.end method
