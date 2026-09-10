.class Lcom/vkontakte/android/ui/RefreshableListView$7;
.super Ljava/lang/Object;
.source "RefreshableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/RefreshableListView;->smoothScrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/RefreshableListView;

.field private final synthetic val$itemHeight:I

.field private final synthetic val$itrp:Landroid/view/animation/DecelerateInterpolator;

.field private final synthetic val$pos:I

.field private final synthetic val$startPos:I

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/RefreshableListView;IIJLandroid/view/animation/DecelerateInterpolator;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    iput p2, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$pos:I

    iput p3, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$startPos:I

    iput-wide p4, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$startTime:J

    iput-object p6, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$itrp:Landroid/view/animation/DecelerateInterpolator;

    iput p7, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$itemHeight:I

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 728
    iget v5, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$pos:I

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$startPos:I

    sub-int v1, v5, v6

    .line 729
    .local v1, "ic":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$startTime:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 730
    .local v0, "_t":F
    iget-object v5, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$itrp:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    .line 731
    .local v4, "t":F
    int-to-float v5, v1

    mul-float/2addr v5, v4

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 732
    .local v2, "item":I
    int-to-float v5, v1

    mul-float/2addr v5, v4

    int-to-float v6, v2

    sub-float v3, v5, v6

    .line 734
    .local v3, "offset":F
    iget-object v5, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    iget v6, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$startPos:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->val$itemHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 735
    cmpl-float v5, v0, v9

    if-eqz v5, :cond_0

    .line 738
    iget-object v5, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/RefreshableListView;->access$8(Lcom/vkontakte/android/ui/RefreshableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/RefreshableListView$7;->this$0:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0
.end method
