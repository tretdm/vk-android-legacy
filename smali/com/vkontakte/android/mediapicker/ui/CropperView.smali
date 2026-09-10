.class public Lcom/vkontakte/android/mediapicker/ui/CropperView;
.super Landroid/view/View;
.source "CropperView.java"


# static fields
.field private static final BoldStroke:I

.field private static final CircleRadius:I

.field private static final FadeOutDuration:I = 0x8c

.field private static final MinimumSize:I

.field private static SuggestSquare:Z = false

.field private static final TapBound:I

.field private static final ThinStroke:I = 0x1


# instance fields
.field private animationEnd:J

.field private animationStart:J

.field private bg_paint:Landroid/graphics/Paint;

.field private buttons:[B

.field private currentHeight:I

.field private currentWidth:I

.field private currentX:I

.field private currentY:I

.field private dragBottom:Z

.field private dragLeft:Z

.field private dragRight:Z

.field private dragStartX:I

.field private dragStartY:I

.field private dragTop:Z

.field private dragX:I

.field private dragY:I

.field private dropTouches:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isSquare:Z

.field private maximumHeight:I

.field private maximumWidth:I

.field private maximumX:I

.field private maximumY:I

.field private minimumX:I

.field private minimumY:I

.field private noDrag:Z

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->SuggestSquare:Z

    .line 20
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->CircleRadius:I

    .line 21
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    .line 22
    sget v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    .line 23
    const/4 v0, 0x1

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->BoldStroke:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    return-void

    .line 46
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/vkontakte/android/mediapicker/ui/CropperView;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/CropperView;

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->animationEnd:J

    return-wide v0
.end method

.method private getCurrentX2()I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getCurrentY2()I
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private setButtonsVisible(ZZZZ)V
    .locals 7
    .param p1, "left"    # Z
    .param p2, "top"    # Z
    .param p3, "right"    # Z
    .param p4, "bottom"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    const/4 v0, 0x0

    .line 111
    .local v0, "changed":Z
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    int-to-byte v1, v2

    .line 112
    .local v1, "cur":B
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    aget-byte v2, v2, v4

    if-eq v1, v2, :cond_2

    move v2, v3

    :goto_1
    or-int/2addr v0, v2

    .line 113
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    aput-byte v1, v2, v4

    .line 115
    if-eqz p2, :cond_3

    move v2, v3

    :goto_2
    int-to-byte v1, v2

    .line 116
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    aget-byte v2, v2, v3

    if-eq v1, v2, :cond_4

    move v2, v3

    :goto_3
    or-int/2addr v0, v2

    .line 117
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    aput-byte v1, v2, v3

    .line 119
    if-eqz p3, :cond_5

    move v2, v3

    :goto_4
    int-to-byte v1, v2

    .line 120
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    aget-byte v2, v2, v4

    if-eq v1, v2, :cond_6

    move v2, v3

    :goto_5
    or-int/2addr v0, v2

    .line 121
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    const/4 v5, 0x2

    aput-byte v1, v2, v5

    .line 123
    if-eqz p4, :cond_7

    move v2, v3

    :goto_6
    int-to-byte v1, v2

    .line 124
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    aget-byte v2, v2, v6

    if-eq v1, v2, :cond_8

    :goto_7
    or-int/2addr v0, v3

    .line 125
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    aput-byte v1, v2, v6

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->invalidate()V

    .line 129
    :cond_0
    return-void

    .end local v1    # "cur":B
    :cond_1
    move v2, v4

    .line 111
    goto :goto_0

    .restart local v1    # "cur":B
    :cond_2
    move v2, v4

    .line 112
    goto :goto_1

    :cond_3
    move v2, v4

    .line 115
    goto :goto_2

    :cond_4
    move v2, v4

    .line 116
    goto :goto_3

    :cond_5
    move v2, v4

    .line 119
    goto :goto_4

    :cond_6
    move v2, v4

    .line 120
    goto :goto_5

    :cond_7
    move v2, v4

    .line 123
    goto :goto_6

    :cond_8
    move v3, v4

    .line 124
    goto :goto_7
.end method


# virtual methods
.method public fadeOut(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dropTouches:Z

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->animationStart:J

    .line 135
    iget-wide v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->animationStart:J

    const-wide/16 v3, 0x8c

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->animationEnd:J

    .line 137
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->invalidate()V

    .line 139
    const/16 v0, 0xf

    .line 141
    .local v0, "delay":I
    new-instance v1, Lcom/vkontakte/android/mediapicker/ui/CropperView$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/mediapicker/ui/CropperView$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/CropperView;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xf

    invoke-virtual {p0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 349
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getCurrentX2()I

    move-result v6

    .line 350
    .local v6, "currentX2":I
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getCurrentY2()I

    move-result v7

    .line 352
    .local v7, "currentY2":I
    const/4 v9, 0x0

    .line 354
    .local v9, "ratio":F
    iget-wide v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->animationStart:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    const/16 v2, 0x88

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 371
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 372
    int-to-float v2, v7

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 373
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 374
    int-to-float v1, v6

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->BoldStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 378
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const v1, -0xa0a0b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x432a0000    # 170.0f

    mul-float/2addr v1, v9

    float-to-int v1, v1

    rsub-int v1, v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 382
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    int-to-float v2, v0

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 384
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 385
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v9

    float-to-int v1, v1

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 391
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    .line 392
    .local v10, "x":I
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int v11, v0, v1

    .line 393
    .local v11, "y":I
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    div-int/lit8 v8, v0, 0x3

    .line 395
    .local v8, "d":I
    int-to-float v1, v10

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    add-int/2addr v0, v8

    int-to-float v2, v0

    int-to-float v3, v6

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 396
    int-to-float v1, v10

    sub-int v0, v7, v8

    int-to-float v2, v0

    int-to-float v3, v6

    sub-int v0, v7, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v12, :cond_0

    .line 399
    int-to-float v0, v10

    int-to-float v1, v11

    sget v2, Lcom/vkontakte/android/mediapicker/ui/CropperView;->CircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    if-ne v0, v12, :cond_1

    .line 402
    int-to-float v0, v6

    int-to-float v1, v11

    sget v2, Lcom/vkontakte/android/mediapicker/ui/CropperView;->CircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 404
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int v10, v0, v1

    .line 405
    iget v11, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    .line 406
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    div-int/lit8 v8, v0, 0x3

    .line 408
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    add-int/2addr v0, v8

    int-to-float v1, v0

    int-to-float v2, v11

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    add-int/2addr v0, v8

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 409
    sub-int v0, v6, v8

    int-to-float v1, v0

    int-to-float v2, v11

    sub-int v0, v6, v8

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 411
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    aget-byte v0, v0, v12

    if-ne v0, v12, :cond_2

    .line 412
    int-to-float v0, v10

    int-to-float v1, v11

    sget v2, Lcom/vkontakte/android/mediapicker/ui/CropperView;->CircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->buttons:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    if-ne v0, v12, :cond_3

    .line 415
    int-to-float v0, v10

    int-to-float v1, v7

    sget v2, Lcom/vkontakte/android/mediapicker/ui/CropperView;->CircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 416
    :cond_3
    return-void

    .line 358
    .end local v8    # "d":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_4
    iget-wide v2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->animationEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->animationStart:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x430c0000    # 140.0f

    div-float v9, v0, v2

    .line 361
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v9

    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42ee0000    # 119.0f

    mul-float/2addr v2, v9

    float-to-int v2, v2

    add-int/lit16 v2, v2, 0x88

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 368
    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dropTouches:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->isSquare:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 183
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->isSquare:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    const/16 v19, 0x1

    .line 343
    :goto_0
    return v19

    .line 183
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 186
    .local v15, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 188
    .local v17, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 343
    :goto_1
    const/16 v19, 0x1

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getCurrentX2()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragStartX:I

    .line 193
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragX:I

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getCurrentY2()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragStartY:I

    .line 196
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragY:I

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getCurrentX2()I

    move-result v16

    .line 199
    .local v16, "x2":I
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getCurrentY2()I

    move-result v18

    .line 201
    .local v18, "y2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v13, v19, v20

    .line 202
    .local v13, "minX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v14, v19, v20

    .line 203
    .local v14, "minY":I
    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v11, v16, v19

    .line 204
    .local v11, "maxX":I
    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v12, v18, v19

    .line 206
    .local v12, "maxY":I
    move/from16 v0, v17

    if-le v0, v14, :cond_3

    move/from16 v0, v17

    if-ge v0, v12, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v19, v19, v20

    move/from16 v0, v19

    if-le v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v20

    move/from16 v0, v19

    if-ge v15, v0, :cond_3

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragLeft:Z

    .line 207
    if-le v15, v13, :cond_4

    if-ge v15, v11, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragTop:Z

    .line 208
    move/from16 v0, v17

    if-le v0, v14, :cond_5

    move/from16 v0, v17

    if-ge v0, v12, :cond_5

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v19, v16, v19

    move/from16 v0, v19

    if-le v15, v0, :cond_5

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v16

    move/from16 v0, v19

    if-ge v15, v0, :cond_5

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragRight:Z

    .line 209
    if-le v15, v13, :cond_6

    if-ge v15, v11, :cond_6

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v19, v18, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v18

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragBottom:Z

    .line 210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragLeft:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragTop:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragRight:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->noDrag:Z

    .line 212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragLeft:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragTop:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragRight:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragBottom:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->setButtonsVisible(ZZZZ)V

    goto/16 :goto_1

    .line 206
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 207
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 208
    :cond_5
    const/16 v19, 0x0

    goto :goto_4

    .line 209
    :cond_6
    const/16 v19, 0x0

    goto :goto_5

    .line 210
    :cond_7
    const/16 v19, 0x0

    goto :goto_6

    .line 219
    .end local v11    # "maxX":I
    .end local v12    # "maxY":I
    .end local v13    # "minX":I
    .end local v14    # "minY":I
    .end local v16    # "x2":I
    .end local v18    # "y2":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragX:I

    move/from16 v19, v0

    sub-int v9, v15, v19

    .line 220
    .local v9, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragY:I

    move/from16 v19, v0

    sub-int v10, v17, v19

    .line 222
    .local v10, "dy":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->noDrag:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    add-int v7, v19, v9

    .line 225
    .local v7, "currentX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    add-int v8, v19, v10

    .line 227
    .local v8, "currentY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    add-int v19, v19, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 230
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumX:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_9

    .line 231
    move-object/from16 v0, p0

    iget v7, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumX:I

    .line 233
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    add-int v19, v19, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 236
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumY:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    .line 237
    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumY:I

    .line 239
    :cond_b
    move-object/from16 v0, p0

    iput v7, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    .line 240
    move-object/from16 v0, p0

    iput v8, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    .line 242
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragX:I

    .line 243
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragY:I

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->invalidate()V

    .line 248
    .end local v7    # "currentX":I
    .end local v8    # "currentY":I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getCurrentX2()I

    move-result v16

    .line 249
    .restart local v16    # "x2":I
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->getCurrentY2()I

    move-result v18

    .line 251
    .restart local v18    # "y2":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragLeft:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    add-int v7, v19, v9

    .line 254
    .restart local v7    # "currentX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragStartX:I

    move/from16 v19, v0

    sub-int v6, v19, v7

    .line 256
    .local v6, "currentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumX:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v7, v0, :cond_f

    .line 258
    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_d

    .line 260
    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    sub-int v7, v16, v19

    .line 261
    sget v6, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    .line 264
    :cond_d
    sget-boolean v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->SuggestSquare:Z

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    sub-int v19, v16, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v19, v6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    sub-int v7, v16, v19

    .line 267
    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    .line 270
    :cond_e
    move-object/from16 v0, p0

    iput v7, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    .line 271
    move-object/from16 v0, p0

    iput v6, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    .line 289
    .end local v6    # "currentWidth":I
    .end local v7    # "currentX":I
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragTop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    add-int v8, v19, v10

    .line 292
    .restart local v8    # "currentY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragStartY:I

    move/from16 v19, v0

    sub-int v5, v19, v8

    .line 294
    .local v5, "currentHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumY:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v8, v0, :cond_12

    .line 296
    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    if-ge v5, v0, :cond_10

    .line 298
    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    sub-int v8, v18, v19

    .line 299
    sget v5, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    .line 302
    :cond_10
    sget-boolean v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->SuggestSquare:Z

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_11

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v19, v5, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_11

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 305
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    .line 308
    :cond_11
    move-object/from16 v0, p0

    iput v8, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    .line 309
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    .line 327
    .end local v5    # "currentHeight":I
    .end local v8    # "currentY":I
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragX:I

    .line 328
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragY:I

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->invalidate()V

    goto/16 :goto_1

    .line 273
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragRight:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    add-int v19, v19, v9

    move/from16 v0, v19

    int-to-float v6, v0

    .line 277
    .local v6, "currentWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_f

    .line 279
    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v6, v19

    if-gez v19, :cond_14

    .line 280
    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    int-to-float v6, v0

    .line 282
    :cond_14
    sget-boolean v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->SuggestSquare:Z

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v6, v19

    if-lez v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v6, v19

    if-gez v19, :cond_15

    .line 283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v6, v0

    .line 285
    :cond_15
    float-to-int v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    goto/16 :goto_7

    .line 311
    .end local v6    # "currentWidth":F
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dragBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    add-int v5, v19, v10

    .line 315
    .restart local v5    # "currentHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    add-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_12

    .line 317
    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    if-ge v5, v0, :cond_17

    .line 318
    sget v5, Lcom/vkontakte/android/mediapicker/ui/CropperView;->MinimumSize:I

    .line 320
    :cond_17
    sget-boolean v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->SuggestSquare:Z

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_18

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    sub-int v19, v5, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_18

    sget v19, Lcom/vkontakte/android/mediapicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_18

    .line 321
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    .line 323
    :cond_18
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    goto/16 :goto_8

    .line 337
    .end local v5    # "currentHeight":I
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    .end local v16    # "x2":I
    .end local v18    # "y2":I
    :pswitch_2
    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->setButtonsVisible(ZZZZ)V

    goto/16 :goto_1

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetAnimation()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->animationStart:J

    .line 102
    iput-wide v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->animationEnd:J

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->dropTouches:Z

    .line 104
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumX:I

    .line 68
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumY:I

    .line 69
    iput p3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    iput p3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumWidth:I

    .line 70
    iput p4, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    iput p4, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumHeight:I

    .line 71
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumX:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumX:I

    .line 72
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumY:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumY:I

    .line 73
    return-void
.end method

.method public setCurrentData(IIII)V
    .locals 1
    .param p1, "currentX"    # I
    .param p2, "currentY"    # I
    .param p3, "currentWidth"    # I
    .param p4, "currentHeight"    # I

    .prologue
    .line 77
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    .line 78
    iput p3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    .line 79
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumY:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    .line 80
    iput p4, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    .line 81
    return-void
.end method

.method public setSourceSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumWidth:I

    .line 86
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumHeight:I

    .line 87
    return-void
.end method

.method public setSquareMode(I)V
    .locals 7
    .param p1, "squareSize"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    if-lez p1, :cond_1

    move v0, v1

    .line 166
    .local v0, "isSquare":Z
    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->isSquare:Z

    .line 168
    if-eqz v0, :cond_0

    .line 170
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    .line 172
    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumX:I

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumX:I

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentX:I

    .line 173
    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumY:I

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumY:I

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->minimumY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->currentY:I

    .line 176
    :cond_0
    if-nez v0, :cond_2

    move v5, v1

    :goto_1
    if-nez v0, :cond_3

    move v4, v1

    :goto_2
    if-nez v0, :cond_4

    move v3, v1

    :goto_3
    if-nez v0, :cond_5

    :goto_4
    invoke-direct {p0, v5, v4, v3, v1}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->setButtonsVisible(ZZZZ)V

    .line 177
    return-void

    .end local v0    # "isSquare":Z
    :cond_1
    move v0, v2

    .line 164
    goto :goto_0

    .restart local v0    # "isSquare":Z
    :cond_2
    move v5, v2

    .line 176
    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method public setSquareMode(Z)V
    .locals 2
    .param p1, "isSquare"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumWidth:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/CropperView;->maximumHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->setSquareMode(I)V

    .line 160
    return-void

    .line 159
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
