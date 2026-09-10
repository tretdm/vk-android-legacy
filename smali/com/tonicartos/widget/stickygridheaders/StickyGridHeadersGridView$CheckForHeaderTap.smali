.class final Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForHeaderTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 902
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v3, :cond_1

    .line 903
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v5, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 904
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v4, v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {v3, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 905
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 906
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v3, :cond_3

    .line 907
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 908
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 909
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->refreshDrawableState()V

    .line 912
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 913
    .local v2, "longPressTimeout":I
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v1

    .line 915
    .local v1, "longClickable":Z
    if-eqz v1, :cond_2

    .line 916
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    if-nez v3, :cond_0

    .line 917
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    new-instance v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;)V

    iput-object v4, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    .line 919
    :cond_0
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v3, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    .line 920
    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;->rememberWindowAttachCount()V

    .line 921
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    .line 922
    int-to-long v5, v2

    .line 921
    invoke-virtual {v3, v4, v5, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 931
    .end local v0    # "header":Landroid/view/View;
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_1
    :goto_0
    return-void

    .line 924
    .restart local v0    # "header":Landroid/view/View;
    .restart local v1    # "longClickable":Z
    .restart local v2    # "longPressTimeout":I
    :cond_2
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v6, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0

    .line 927
    .end local v1    # "longClickable":Z
    .end local v2    # "longPressTimeout":I
    :cond_3
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v6, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_0
.end method
