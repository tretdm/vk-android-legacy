.class public Lcom/vkontakte/android/ui/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;
    }
.end annotation


# instance fields
.field private final IND_LOOP_TIME:I

.field private final IND_TRANS_TIME:I

.field private animFrom:D

.field private animStartTime:J

.field private animTime:I

.field private animTo:D

.field private bgPaint:Landroid/graphics/Paint;

.field private blackBgPaint:Landroid/graphics/Paint;

.field private ditp:Landroid/view/animation/DecelerateInterpolator;

.field private erasePaint:Landroid/graphics/Paint;

.field private itp:Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;

.field private pAnimStartTime:J

.field private paint:Landroid/graphics/Paint;

.field private progress:D

.field private startAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;-><init>(Lcom/vkontakte/android/ui/CircularProgressBar;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->itp:Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;

    .line 22
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->ditp:Landroid/view/animation/DecelerateInterpolator;

    .line 23
    const/16 v0, 0xdac

    iput v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->IND_LOOP_TIME:I

    .line 24
    const/16 v0, 0x12c

    iput v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->IND_TRANS_TIME:I

    .line 25
    iput v2, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTime:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    .line 27
    iput v2, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->startAlpha:I

    .line 32
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;-><init>(Lcom/vkontakte/android/ui/CircularProgressBar;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->itp:Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;

    .line 22
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->ditp:Landroid/view/animation/DecelerateInterpolator;

    .line 23
    const/16 v0, 0xdac

    iput v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->IND_LOOP_TIME:I

    .line 24
    const/16 v0, 0x12c

    iput v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->IND_TRANS_TIME:I

    .line 25
    iput v2, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTime:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    .line 27
    iput v2, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->startAlpha:I

    .line 37
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;-><init>(Lcom/vkontakte/android/ui/CircularProgressBar;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->itp:Lcom/vkontakte/android/ui/CircularProgressBar$MyInterpolator;

    .line 22
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->ditp:Landroid/view/animation/DecelerateInterpolator;

    .line 23
    const/16 v0, 0xdac

    iput v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->IND_LOOP_TIME:I

    .line 24
    const/16 v0, 0x12c

    iput v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->IND_TRANS_TIME:I

    .line 25
    iput v2, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTime:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    .line 27
    iput v2, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->startAlpha:I

    .line 42
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/high16 v3, 0x40c00000    # 6.0f

    const/4 v2, 0x1

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    iput-wide v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->progress:D

    .line 52
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    const v1, 0x60ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->erasePaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->erasePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->erasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 91
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->getWidth()I

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->getHeight()I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 92
    .local v2, "arcRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->progress:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    .line 93
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    sub-long/2addr v3, v5

    long-to-int v9, v3

    .line 95
    .local v9, "animTime":I
    int-to-float v1, v9

    const v3, 0x455ac000    # 3500.0f

    div-float v10, v1, v3

    .line 102
    .local v10, "at":F
    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/ui/CircularProgressBar;->yforx(F)I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->postInvalidate()V

    .line 145
    .end local v9    # "animTime":I
    .end local v10    # "at":F
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v14, 0x0

    .line 108
    .local v14, "posted":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v3, 0x60

    if-eq v1, v3, :cond_3

    .line 109
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->startAlpha:I

    .line 113
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    sub-long/2addr v3, v5

    long-to-int v9, v3

    .line 114
    .restart local v9    # "animTime":I
    int-to-float v1, v9

    const v3, 0x455ac000    # 3500.0f

    div-float v10, v1, v3

    .line 115
    .restart local v10    # "at":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->ditp:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v10}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v11

    .line 116
    .local v11, "it":F
    const/16 v1, 0x12c

    if-lt v9, v1, :cond_6

    .line 117
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    const/16 v3, 0x60

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    .end local v9    # "animTime":I
    .end local v10    # "at":F
    .end local v11    # "it":F
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->pAnimStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->pAnimStartTime:J

    sub-long v7, v3, v5

    .line 127
    .local v7, "aTime":J
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTime:I

    int-to-long v3, v1

    cmp-long v1, v7, v3

    if-gez v1, :cond_7

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->ditp:Landroid/view/animation/DecelerateInterpolator;

    long-to-float v3, v7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTime:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v11

    .line 129
    .restart local v11    # "it":F
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animFrom:D

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTo:D

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animFrom:D

    sub-double/2addr v5, v15

    float-to-double v15, v11

    mul-double/2addr v5, v15

    add-double v12, v3, v5

    .line 130
    .local v12, "np":D
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->progress:D

    cmpl-double v1, v12, v3

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->progress:D

    .line 135
    .end local v11    # "it":F
    .end local v12    # "np":D
    :cond_4
    :goto_2
    if-nez v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->postInvalidate()V

    .line 137
    .end local v7    # "aTime":J
    :cond_5
    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->blackBgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 138
    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 139
    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->progress:D

    const-wide v15, 0x4076800000000000L    # 360.0

    mul-double/2addr v4, v15

    double-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 120
    .restart local v9    # "animTime":I
    .restart local v10    # "at":F
    .restart local v11    # "it":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->startAlpha:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->startAlpha:I

    rsub-int/lit8 v4, v4, 0x60

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->postInvalidate()V

    .line 122
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 132
    .end local v9    # "animTime":I
    .end local v10    # "at":F
    .end local v11    # "it":F
    .restart local v7    # "aTime":J
    :cond_7
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->pAnimStartTime:J

    .line 133
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTo:D

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/vkontakte/android/ui/CircularProgressBar;->progress:D

    goto :goto_2
.end method

.method public setProgress(D)V
    .locals 10
    .param p1, "p"    # D

    .prologue
    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x0

    .line 71
    iget-wide v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->pAnimStartTime:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 72
    iget-wide v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->progress:D

    iput-wide v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animFrom:D

    .line 73
    :cond_0
    iput-wide p1, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTo:D

    .line 77
    iget-wide v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTo:D

    iget-wide v2, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animFrom:D

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTime:I

    .line 79
    const-wide v0, 0x3fee666666666666L    # 0.95

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTime:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->pAnimStartTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->pAnimStartTime:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v8

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animTime:I

    .line 82
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->pAnimStartTime:J

    .line 83
    iput-wide p1, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->progress:D

    .line 84
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_2

    .line 85
    iput-wide v6, p0, Lcom/vkontakte/android/ui/CircularProgressBar;->animStartTime:J

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CircularProgressBar;->postInvalidate()V

    .line 88
    return-void
.end method

.method yforx(F)I
    .locals 6
    .param p1, "x"    # F

    .prologue
    .line 148
    const-wide v0, -0x3fa8800000000000L    # -94.0

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
