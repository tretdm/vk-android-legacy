.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardGetComments$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadDataUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$26(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 424
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$35(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 425
    return-void
.end method

.method public success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
    .locals 10
    .param p2, "total"    # I
    .param p3, "pollID"    # I
    .param p4, "pollQuestion"    # Ljava/lang/String;
    .param p5, "pollUserAnswer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/BoardComment;",
            ">;II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PollOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .local p6, "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 363
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$28(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_4

    .line 364
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$29(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$30(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 372
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    .line 374
    .local v1, "firstVisible":I
    const/4 v2, -0x1

    .line 375
    .local v2, "itemOffset":I
    if-nez v1, :cond_6

    .line 376
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 377
    add-int/lit8 v1, v1, 0x2

    .line 378
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 390
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$31(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 391
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$30(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 392
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$32(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 393
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$33(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    .line 395
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 396
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$15(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v8

    add-int/2addr v6, v8

    if-ge v6, p2, :cond_8

    const/4 v6, 0x1

    :goto_3
    invoke-static {v7, v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$16(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 397
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$17(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 398
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$15(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$34(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;I)V

    .line 399
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->footerView:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$18(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->headerView:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$15(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v6

    if-lez v6, :cond_a

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 401
    int-to-float v6, p2

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 402
    .local v4, "pages":I
    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    .line 403
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/vkontakte/android/ui/PaginationView;->setPageCount(I)V

    .line 404
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/PaginationView;->setVisibility(I)V

    .line 405
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 406
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;)V

    .line 408
    const-wide/16 v8, 0x1f4

    .line 406
    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ui/PaginationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/PaginationView;->setEnabled(Z)V

    .line 413
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 414
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x14

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 416
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$26(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 418
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$35(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 419
    return-void

    .line 356
    .end local v1    # "firstVisible":I
    .end local v2    # "itemOffset":I
    .end local v4    # "pages":I
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardComment;

    .line 357
    .local v0, "comment":Lcom/vkontakte/android/api/BoardComment;
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 358
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/high16 v8, 0x42be0000    # 95.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int v5, v7, v8

    .line 359
    .local v5, "tSize":I
    const/16 v7, 0x25c

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 360
    int-to-float v7, v5

    const v8, 0x3f2a7efa    # 0.666f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, v0, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v5, v7, v8}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 365
    .end local v0    # "comment":Lcom/vkontakte/android/api/BoardComment;
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "tSize":I
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_5

    .line 366
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 367
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$29(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-virtual {p1, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 369
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto/16 :goto_1

    .line 380
    .restart local v1    # "firstVisible":I
    .restart local v2    # "itemOffset":I
    :cond_6
    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    .line 381
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_0

    .line 382
    add-int/lit8 v1, v1, 0x1

    .line 383
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 385
    goto/16 :goto_2

    .line 386
    :cond_7
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 387
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    goto/16 :goto_2

    .line 396
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 399
    :cond_9
    const/16 v6, 0x8

    goto/16 :goto_4

    .line 400
    :cond_a
    const/16 v6, 0x8

    goto/16 :goto_5
.end method
