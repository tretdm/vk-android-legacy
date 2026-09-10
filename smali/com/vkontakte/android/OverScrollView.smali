.class public Lcom/vkontakte/android/OverScrollView;
.super Landroid/widget/ScrollView;
.source "OverScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;,
        Lcom/vkontakte/android/OverScrollView$OnScrollEndListener;,
        Lcom/vkontakte/android/OverScrollView$ScrollEndTimerTask;
    }
.end annotation


# static fields
.field public static final ID_BOTTOM_PADDING_VIEW:I = 0x6

.field public static final ID_TOP_PADDING_VIEW:I = 0x5

.field private static final NOCHANGE_DELAY:I = 0x12c


# instance fields
.field addingContentAtTop:Z

.field anim:Landroid/view/animation/AlphaAnimation;

.field collapsedBottomH:I

.field collapsedTopH:I

.field draggingBottom:Z

.field draggingTop:Z

.field isAligned:Z

.field public onScrollEndListener:Lcom/vkontakte/android/OverScrollView$OnScrollEndListener;

.field private prevHeight:I

.field private prevViewH:I

.field private scrollEndTimer:Ljava/util/Timer;

.field startY:F

.field vH:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->draggingTop:Z

    .line 20
    iput v0, p0, Lcom/vkontakte/android/OverScrollView;->startY:F

    iput v0, p0, Lcom/vkontakte/android/OverScrollView;->vH:F

    .line 21
    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->collapsedTopH:I

    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->collapsedBottomH:I

    .line 22
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f7fbe77    # 0.999f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    .line 23
    iput-object v4, p0, Lcom/vkontakte/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    .line 25
    iput-object v4, p0, Lcom/vkontakte/android/OverScrollView;->onScrollEndListener:Lcom/vkontakte/android/OverScrollView$OnScrollEndListener;

    .line 27
    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->prevHeight:I

    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->prevViewH:I

    .line 28
    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->addingContentAtTop:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->isAligned:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->draggingTop:Z

    .line 20
    iput v0, p0, Lcom/vkontakte/android/OverScrollView;->startY:F

    iput v0, p0, Lcom/vkontakte/android/OverScrollView;->vH:F

    .line 21
    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->collapsedTopH:I

    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->collapsedBottomH:I

    .line 22
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f7fbe77    # 0.999f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    .line 23
    iput-object v4, p0, Lcom/vkontakte/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    .line 25
    iput-object v4, p0, Lcom/vkontakte/android/OverScrollView;->onScrollEndListener:Lcom/vkontakte/android/OverScrollView$OnScrollEndListener;

    .line 27
    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->prevHeight:I

    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->prevViewH:I

    .line 28
    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->addingContentAtTop:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->isAligned:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->draggingTop:Z

    .line 20
    iput v0, p0, Lcom/vkontakte/android/OverScrollView;->startY:F

    iput v0, p0, Lcom/vkontakte/android/OverScrollView;->vH:F

    .line 21
    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->collapsedTopH:I

    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->collapsedBottomH:I

    .line 22
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f7fbe77    # 0.999f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    .line 23
    iput-object v4, p0, Lcom/vkontakte/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    .line 25
    iput-object v4, p0, Lcom/vkontakte/android/OverScrollView;->onScrollEndListener:Lcom/vkontakte/android/OverScrollView$OnScrollEndListener;

    .line 27
    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->prevHeight:I

    iput v3, p0, Lcom/vkontakte/android/OverScrollView;->prevViewH:I

    .line 28
    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->addingContentAtTop:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->isAligned:Z

    .line 42
    return-void
.end method

.method private endDraggingBottom(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 128
    iget-boolean v1, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vkontakte/android/OverScrollView;->vH:F

    .line 130
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/OverScrollView;->vH:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 132
    iget-object v1, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    iget v2, p0, Lcom/vkontakte/android/OverScrollView;->vH:F

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 133
    iget-object v1, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 134
    new-instance v0, Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;-><init>(Lcom/vkontakte/android/OverScrollView;)V

    .line 135
    .local v0, "ri":Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;
    iput v4, v0, Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;->viewID:I

    .line 136
    iget-object v1, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    .end local v0    # "ri":Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;
    :goto_1
    iput-boolean v5, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private startDraggingBottom(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    .line 123
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/OverScrollView;->startY:F

    .line 125
    return-void
.end method


# virtual methods
.method protected endDraggingTop(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 103
    iget-boolean v1, p0, Lcom/vkontakte/android/OverScrollView;->draggingTop:Z

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vkontakte/android/OverScrollView;->vH:F

    .line 105
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/OverScrollView;->vH:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    const/16 v2, 0x12c

    iget v3, p0, Lcom/vkontakte/android/OverScrollView;->vH:F

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 108
    iget-object v1, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 109
    new-instance v0, Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;-><init>(Lcom/vkontakte/android/OverScrollView;)V

    .line 110
    .local v0, "ri":Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;
    iput v4, v0, Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;->viewID:I

    .line 111
    iget v1, p0, Lcom/vkontakte/android/OverScrollView;->collapsedTopH:I

    iput v1, v0, Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;->ch:I

    .line 112
    iget-object v1, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/OverScrollView;->anim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    .end local v0    # "ri":Lcom/vkontakte/android/OverScrollView$ResizingInterpolator;
    :goto_1
    iput-boolean v5, p0, Lcom/vkontakte/android/OverScrollView;->draggingTop:Z

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/vkontakte/android/OverScrollView;->collapsedTopH:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onDragTop(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 145
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-boolean v1, p0, Lcom/vkontakte/android/OverScrollView;->isAligned:Z

    if-nez v1, :cond_1

    .line 149
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/vkontakte/android/OverScrollView;->prevHeight:I

    if-lez v1, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/vkontakte/android/OverScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/OverScrollView;->prevHeight:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/vkontakte/android/OverScrollView;->scrollBy(II)V

    .line 156
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 157
    if-nez p1, :cond_4

    iget-boolean v1, p0, Lcom/vkontakte/android/OverScrollView;->addingContentAtTop:Z

    if-eqz v1, :cond_4

    .line 158
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/OverScrollView;->prevViewH:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/OverScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/vkontakte/android/OverScrollView;->scrollTo(II)V

    .line 162
    :cond_3
    iput-boolean v3, p0, Lcom/vkontakte/android/OverScrollView;->addingContentAtTop:Z

    .line 164
    .end local v0    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/OverScrollView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/OverScrollView;->prevHeight:I

    .line 165
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .restart local v0    # "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/OverScrollView;->prevViewH:I

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 174
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/OverScrollView;->scrollEndTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/OverScrollView$ScrollEndTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/OverScrollView$ScrollEndTimerTask;-><init>(Lcom/vkontakte/android/OverScrollView;Lcom/vkontakte/android/OverScrollView$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 176
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 51
    invoke-virtual {p0}, Lcom/vkontakte/android/OverScrollView;->getScrollY()I

    move-result v2

    if-nez v2, :cond_2

    .line 52
    iget-boolean v2, p0, Lcom/vkontakte/android/OverScrollView;->draggingTop:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/OverScrollView;->startDraggingTop(Landroid/view/MotionEvent;)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/OverScrollView;->startY:F

    sub-float v0, v2, v3

    .line 54
    .local v0, "h":F
    cmpg-float v2, v0, v6

    if-gez v2, :cond_1

    .line 55
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/OverScrollView;->endDraggingTop(Z)V

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 93
    .end local v0    # "h":F
    :goto_0
    return v1

    .line 59
    .restart local v0    # "h":F
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v4, v0

    iget v5, p0, Lcom/vkontakte/android/OverScrollView;->collapsedTopH:I

    add-int/2addr v4, v5

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    float-to-int v2, v0

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/OverScrollView;->onDragTop(I)V

    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "awakenScrollBars"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    goto :goto_0

    .line 66
    .end local v0    # "h":F
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/OverScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/OverScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/OverScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/OverScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    if-lt v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    if-eqz v2, :cond_6

    .line 68
    :cond_3
    iget-boolean v2, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Lcom/vkontakte/android/OverScrollView;->startDraggingBottom(Landroid/view/MotionEvent;)V

    .line 69
    :cond_4
    iget v2, p0, Lcom/vkontakte/android/OverScrollView;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v0, v2, v3

    .line 70
    .restart local v0    # "h":F
    cmpg-float v2, v0, v6

    if-gez v2, :cond_5

    .line 71
    invoke-direct {p0, v5}, Lcom/vkontakte/android/OverScrollView;->endDraggingBottom(Z)V

    .line 72
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 75
    :cond_5
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v4, v0

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v2, Lcom/vkontakte/android/OverScrollView$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/OverScrollView$1;-><init>(Lcom/vkontakte/android/OverScrollView;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/OverScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 82
    .end local v0    # "h":F
    :cond_6
    iget-boolean v2, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    if-eqz v2, :cond_a

    .line 89
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_9

    .line 90
    iget-boolean v2, p0, Lcom/vkontakte/android/OverScrollView;->draggingTop:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/OverScrollView;->endDraggingTop(Z)V

    .line 91
    :cond_8
    iget-boolean v2, p0, Lcom/vkontakte/android/OverScrollView;->draggingBottom:Z

    if-eqz v2, :cond_9

    invoke-direct {p0, v1}, Lcom/vkontakte/android/OverScrollView;->endDraggingBottom(Z)V

    .line 93
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 85
    :cond_a
    iget-boolean v2, p0, Lcom/vkontakte/android/OverScrollView;->draggingTop:Z

    if-eqz v2, :cond_7

    .line 86
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/OverScrollView;->endDraggingTop(Z)V

    goto :goto_1
.end method

.method public postScrollEnd()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/vkontakte/android/OverScrollView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/OverScrollView$2;-><init>(Lcom/vkontakte/android/OverScrollView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/OverScrollView;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method protected startDraggingTop(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/OverScrollView;->draggingTop:Z

    .line 98
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/OverScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/OverScrollView;->startY:F

    .line 100
    return-void
.end method
