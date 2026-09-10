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
    .line 360
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2102(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 431
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2802(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 432
    return-void
.end method

.method public success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
    .locals 11
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
    .line 363
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .local p6, "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardComment;

    .line 364
    .local v0, "comment":Lcom/vkontakte/android/api/BoardComment;
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 365
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/high16 v8, 0x42be0000    # 95.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int v6, v7, v8

    .line 366
    .local v6, "tSize":I
    const/16 v7, 0x25c

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 367
    int-to-float v7, v6

    const v8, 0x3f2a7efa    # 0.666f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, v0, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto :goto_0

    .line 370
    .end local v0    # "comment":Lcom/vkontakte/android/api/BoardComment;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "tSize":I
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2400(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x14

    if-gt v7, v8, :cond_4

    .line 371
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 378
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2402(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 379
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 381
    .local v1, "firstVisible":I
    const/4 v3, -0x1

    .line 382
    .local v3, "itemOffset":I
    if-nez v1, :cond_6

    .line 383
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_1

    .line 384
    add-int/lit8 v1, v1, 0x2

    .line 385
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    .line 397
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2600(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 398
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2402(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 399
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2602(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 400
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    .line 402
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 403
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1300(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v9

    add-int/2addr v7, v9

    if-ge v7, p2, :cond_8

    const/4 v7, 0x1

    :goto_3
    invoke-static {v8, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1202(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 404
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1400(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 405
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1320(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;I)I

    .line 406
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->footerView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1200(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->headerView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1300(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v7

    if-lez v7, :cond_a

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 408
    int-to-float v7, p2

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    .line 409
    .local v5, "pages":I
    const/4 v7, 0x1

    if-le v5, v7, :cond_3

    .line 410
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/vkontakte/android/ui/PaginationView;->setPageCount(I)V

    .line 411
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/PaginationView;->setVisibility(I)V

    .line 412
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 413
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9, v10}, Lcom/vkontakte/android/ui/PaginationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/PaginationView;->setEnabled(Z)V

    .line 420
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 421
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x14

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 423
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2102(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 425
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2802(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 426
    return-void

    .line 372
    .end local v1    # "firstVisible":I
    .end local v3    # "itemOffset":I
    .end local v5    # "pages":I
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_5

    .line 373
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 374
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-virtual {p1, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 376
    :cond_5
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto/16 :goto_1

    .line 387
    .restart local v1    # "firstVisible":I
    .restart local v3    # "itemOffset":I
    :cond_6
    const/4 v7, 0x1

    if-ne v1, v7, :cond_7

    .line 388
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    .line 389
    add-int/lit8 v1, v1, 0x1

    .line 390
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    goto/16 :goto_2

    .line 393
    :cond_7
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    .line 394
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$5;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    goto/16 :goto_2

    .line 403
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 406
    :cond_9
    const/16 v7, 0x8

    goto/16 :goto_4

    .line 407
    :cond_a
    const/16 v7, 0x8

    goto/16 :goto_5
.end method
