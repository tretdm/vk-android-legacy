.class Lcom/vkontakte/android/BoardTopicViewActivity$4;
.super Ljava/lang/Object;
.source "BoardTopicViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardGetComments$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicViewActivity;->loadDataUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/BoardTopicViewActivity$4;)Lcom/vkontakte/android/BoardTopicViewActivity;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$25(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$33(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 343
    return-void
.end method

.method public success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
    .locals 7
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
    .line 281
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .local p6, "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$26(Lcom/vkontakte/android/BoardTopicViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_3

    .line 282
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$27(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 289
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$28(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 290
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 292
    .local v0, "firstVisible":I
    const/4 v1, -0x1

    .line 293
    .local v1, "itemOffset":I
    if-nez v0, :cond_5

    .line 294
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 295
    add-int/lit8 v0, v0, 0x2

    .line 296
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 308
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$29(Lcom/vkontakte/android/BoardTopicViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$28(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 310
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$30(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 311
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$31(Lcom/vkontakte/android/BoardTopicViewActivity;)V

    .line 313
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->updateList()V

    .line 314
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$14(Lcom/vkontakte/android/BoardTopicViewActivity;)I

    move-result v5

    add-int/2addr v3, v5

    if-ge v3, p2, :cond_7

    const/4 v3, 0x1

    :goto_2
    invoke-static {v4, v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$15(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 315
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$16(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$14(Lcom/vkontakte/android/BoardTopicViewActivity;)I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$32(Lcom/vkontakte/android/BoardTopicViewActivity;I)V

    .line 317
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    iget-object v3, v3, Lcom/vkontakte/android/BoardTopicViewActivity;->footerView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$17(Lcom/vkontakte/android/BoardTopicViewActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    iget-object v3, v3, Lcom/vkontakte/android/BoardTopicViewActivity;->headerView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$14(Lcom/vkontakte/android/BoardTopicViewActivity;)I

    move-result v3

    if-lez v3, :cond_9

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 319
    int-to-float v3, p2

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 320
    .local v2, "pages":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 321
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/ui/PaginationView;->setPageCount(I)V

    .line 322
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/PaginationView;->setVisibility(I)V

    .line 323
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 324
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/BoardTopicViewActivity$4$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/BoardTopicViewActivity$4$1;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity$4;)V

    .line 326
    const-wide/16 v5, 0x1f4

    .line 324
    invoke-virtual {v3, v4, v5, v6}, Lcom/vkontakte/android/ui/PaginationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/PaginationView;->setEnabled(Z)V

    .line 331
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 332
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 334
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$25(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 336
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$33(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 337
    return-void

    .line 283
    .end local v0    # "firstVisible":I
    .end local v1    # "itemOffset":I
    .end local v2    # "pages":I
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_4

    .line 284
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 285
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$27(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 287
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto/16 :goto_0

    .line 298
    .restart local v0    # "firstVisible":I
    .restart local v1    # "itemOffset":I
    :cond_5
    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 299
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 300
    add-int/lit8 v0, v0, 0x1

    .line 301
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 303
    goto/16 :goto_1

    .line 304
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 305
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicViewActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    goto/16 :goto_1

    .line 314
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 317
    :cond_8
    const/16 v3, 0x8

    goto/16 :goto_3

    .line 318
    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_4
.end method
