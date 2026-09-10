.class public Lcom/vkontakte/android/UpdatableScrollView;
.super Lcom/vkontakte/android/OverScrollView;
.source "UpdatableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/UpdatableScrollView$OnScrollListener;,
        Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;
    }
.end annotation


# static fields
.field public static final STATE_PULL:I = 0x0

.field public static final STATE_REFRESHING:I = 0x2

.field public static final STATE_RELEASE:I = 0x1


# instance fields
.field public canUpdate:Z

.field flipAnimation:Landroid/view/animation/RotateAnimation;

.field public lastUpdated:J

.field public listener:Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;

.field refreshViewH:I

.field reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field public scrollListener:Lcom/vkontakte/android/UpdatableScrollView$OnScrollListener;

.field state:I

.field updateViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/vkontakte/android/OverScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    iput v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->updateViewHeight:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->canUpdate:Z

    .line 19
    iput-object v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->listener:Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;

    .line 20
    iput-object v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->scrollListener:Lcom/vkontakte/android/UpdatableScrollView$OnScrollListener;

    .line 21
    const/high16 v0, 0x425c0000    # 55.0f

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->refreshViewH:I

    .line 22
    iput v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->lastUpdated:J

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/OverScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->updateViewHeight:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->canUpdate:Z

    .line 19
    iput-object v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->listener:Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;

    .line 20
    iput-object v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->scrollListener:Lcom/vkontakte/android/UpdatableScrollView$OnScrollListener;

    .line 21
    const/high16 v0, 0x425c0000    # 55.0f

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->refreshViewH:I

    .line 22
    iput v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->lastUpdated:J

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/OverScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->updateViewHeight:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->canUpdate:Z

    .line 19
    iput-object v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->listener:Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;

    .line 20
    iput-object v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->scrollListener:Lcom/vkontakte/android/UpdatableScrollView$OnScrollListener;

    .line 21
    const/high16 v0, 0x425c0000    # 55.0f

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->refreshViewH:I

    .line 22
    iput v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->lastUpdated:J

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UpdatableScrollView;Z)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/vkontakte/android/OverScrollView;->endDraggingTop(Z)V

    return-void
.end method


# virtual methods
.method public endDraggingTop(Z)V
    .locals 4
    .param p1, "anim"    # Z

    .prologue
    const v3, 0x7f06011b

    const/16 v2, 0x8

    .line 68
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->refreshViewH:I

    if-le v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 69
    iget v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->refreshViewH:I

    iput v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->collapsedTopH:I

    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->listener:Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->listener:Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;

    invoke-interface {v0}, Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;->onRefresh()V

    .line 71
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    .line 72
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 73
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    const v0, 0x7f06011c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v0, 0x7f06011d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    const v0, 0x7f06011e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_1
    invoke-super {p0, p1}, Lcom/vkontakte/android/OverScrollView;->endDraggingTop(Z)V

    .line 79
    return-void
.end method

.method public init()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x64

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 39
    invoke-super {p0}, Lcom/vkontakte/android/OverScrollView;->init()V

    .line 40
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 42
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 40
    iput-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 46
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 48
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 46
    iput-object v5, p0, Lcom/vkontakte/android/UpdatableScrollView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->lastUpdated:J

    .line 53
    const v0, 0x7f06011c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/UpdatableScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    const v0, 0x7f06011d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    const v0, 0x7f06011e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/UpdatableScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/UpdatableScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-wide v3, p0, Lcom/vkontakte/android/UpdatableScrollView;->lastUpdated:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public onDragTop(I)V
    .locals 6
    .param p1, "h"    # I

    .prologue
    const v5, 0x7f06011d

    const v4, 0x7f06011b

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->refreshViewH:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->flipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iput v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    .line 85
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    :cond_0
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->refreshViewH:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    if-ne v0, v2, :cond_1

    .line 88
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->reverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    .line 90
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/OverScrollView;->onScrollChanged(IIII)V

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->scrollListener:Lcom/vkontakte/android/UpdatableScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->scrollListener:Lcom/vkontakte/android/UpdatableScrollView$OnScrollListener;

    invoke-interface {v0, p2}, Lcom/vkontakte/android/UpdatableScrollView$OnScrollListener;->onScrollChanged(I)V

    .line 61
    :cond_0
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/UpdatableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/UpdatableScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/vkontakte/android/UpdatableScrollView;->updateViewHeight:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->listener:Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->canUpdate:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 62
    iput-boolean v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->canUpdate:Z

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->listener:Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;

    invoke-interface {v0}, Lcom/vkontakte/android/UpdatableScrollView$OnUpdateListener;->onUpdate()V

    .line 65
    :cond_1
    return-void
.end method

.method public refreshDone()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    const v0, 0x7f06011b

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    const v0, 0x7f06011c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iput v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->collapsedTopH:I

    .line 103
    iput-boolean v3, p0, Lcom/vkontakte/android/UpdatableScrollView;->draggingTop:Z

    .line 104
    iput v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->state:I

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/UpdatableScrollView;->lastUpdated:J

    .line 106
    const v0, 0x7f06011d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    const v0, 0x7f06011e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-static {p0, v3}, Lcom/vkontakte/android/UpdatableScrollView;->access$0(Lcom/vkontakte/android/UpdatableScrollView;Z)V

    .line 109
    return-void
.end method

.method protected startDraggingTop(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/vkontakte/android/OverScrollView;->startDraggingTop(Landroid/view/MotionEvent;)V

    .line 96
    const v0, 0x7f06011e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UpdatableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/UpdatableScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vkontakte/android/UpdatableScrollView;->lastUpdated:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/UpdatableScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method
