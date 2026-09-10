.class Lcom/vkontakte/android/ui/ReorderableListView$6;
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

    .line 501
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    .line 504
    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentScrollState:I

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$600(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$1200(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$1300(Lcom/vkontakte/android/ui/ReorderableListView;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$1400(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$1500(Lcom/vkontakte/android/ui/ReorderableListView;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 4

    .prologue
    .line 556
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$600(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$300(Lcom/vkontakte/android/ui/ReorderableListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/ReorderableListView;->access$300(Lcom/vkontakte/android/ui/ReorderableListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$700(Lcom/vkontakte/android/ui/ReorderableListView;J)V

    .line 559
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ReorderableListView;->access$1600(Lcom/vkontakte/android/ui/ReorderableListView;)V

    .line 562
    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 6

    .prologue
    .line 569
    iget v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    iget v3, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    add-int v0, v2, v3

    .line 570
    .local v0, "currentLastVisibleItem":I
    iget v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    iget v3, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    add-int v1, v2, v3

    .line 571
    .local v1, "previousLastVisibleItem":I
    if-eq v0, v1, :cond_0

    .line 572
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$600(Lcom/vkontakte/android/ui/ReorderableListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$300(Lcom/vkontakte/android/ui/ReorderableListView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/ReorderableListView;->access$300(Lcom/vkontakte/android/ui/ReorderableListView;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/ui/ReorderableListView;->access$700(Lcom/vkontakte/android/ui/ReorderableListView;J)V

    .line 574
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$1600(Lcom/vkontakte/android/ui/ReorderableListView;)V

    .line 577
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

    .line 511
    iput p2, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    .line 512
    iput p3, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    .line 514
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    .line 516
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    :goto_1
    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    .line 519
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView$6;->checkAndHandleFirstVisibleCellChange()V

    .line 520
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView$6;->checkAndHandleLastVisibleCellChange()V

    .line 522
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    .line 523
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentVisibleItemCount:I

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    .line 524
    return-void

    .line 514
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousFirstVisibleItem:I

    goto :goto_0

    .line 516
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mPreviousVisibleItemCount:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 528
    iput p2, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->mCurrentScrollState:I

    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView$6;->this$0:Lcom/vkontakte/android/ui/ReorderableListView;

    invoke-static {v0, p2}, Lcom/vkontakte/android/ui/ReorderableListView;->access$1102(Lcom/vkontakte/android/ui/ReorderableListView;I)I

    .line 530
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView$6;->isScrollCompleted()V

    .line 531
    return-void
.end method
