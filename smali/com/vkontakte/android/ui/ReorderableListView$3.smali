.class Lcom/vkontakte/android/ui/ReorderableListView$3;
.super Ljava/lang/Object;
.source "ReorderableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/ReorderableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lcom/vkontakte/android/ui/ReorderableListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ReorderableListView;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousFirstVisibleItem:I

    .line 506
    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentScrollState:I

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$11(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$12(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$13(Lcom/vkontakte/android/ui/ReorderableListView;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$14(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$15(Lcom/vkontakte/android/ui/ReorderableListView;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 4

    .prologue
    .line 558
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$11(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$7(Lcom/vkontakte/android/ui/ReorderableListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ReorderableListView;->access$7(Lcom/vkontakte/android/ui/ReorderableListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$8(Lcom/vkontakte/android/ui/ReorderableListView;J)V

    .line 561
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$16(Lcom/vkontakte/android/ui/ReorderableListView;)V

    .line 564
    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 6

    .prologue
    .line 571
    iget v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentFirstVisibleItem:I

    iget v3, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentVisibleItemCount:I

    add-int v0, v2, v3

    .line 572
    .local v0, "currentLastVisibleItem":I
    iget v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousFirstVisibleItem:I

    iget v3, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousVisibleItemCount:I

    add-int v1, v2, v3

    .line 573
    .local v1, "previousLastVisibleItem":I
    if-eq v0, v1, :cond_0

    .line 574
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$11(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$7(Lcom/vkontakte/android/ui/ReorderableListView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ReorderableListView;->access$7(Lcom/vkontakte/android/ui/ReorderableListView;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/ui/ReorderableListView;->access$8(Lcom/vkontakte/android/ui/ReorderableListView;J)V

    .line 576
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$16(Lcom/vkontakte/android/ui/ReorderableListView;)V

    .line 579
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, -0x1

    .line 513
    iput p2, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentFirstVisibleItem:I

    .line 514
    iput p3, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentVisibleItemCount:I

    .line 516
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousFirstVisibleItem:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousFirstVisibleItem:I

    .line 518
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentVisibleItemCount:I

    :goto_1
    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousVisibleItemCount:I

    .line 521
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView$3;->checkAndHandleFirstVisibleCellChange()V

    .line 522
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView$3;->checkAndHandleLastVisibleCellChange()V

    .line 524
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousFirstVisibleItem:I

    .line 525
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentVisibleItemCount:I

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousVisibleItemCount:I

    .line 526
    return-void

    .line 517
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousFirstVisibleItem:I

    goto :goto_0

    .line 519
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mPreviousVisibleItemCount:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 530
    iput p2, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->mCurrentScrollState:I

    .line 531
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$3;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0, p2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$10(Lcom/vkontakte/android/ui/ReorderableListView;I)V

    .line 532
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView$3;->isScrollCompleted()V

    .line 533
    return-void
.end method
