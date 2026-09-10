.class public Lcom/vkontakte/android/imagepicker/ui/CropperView;
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
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->SuggestSquare:Z

    .line 22
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->CircleRadius:I

    .line 23
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    .line 24
    sget v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    .line 25
    const/4 v0, 0x1

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->BoldStroke:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    return-void

    .line 48
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ui/CropperView;)J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->animationEnd:J

    return-wide v0
.end method

.method private getCurrentX2()I
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getCurrentY2()I
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

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

    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "changed":Z
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    int-to-byte v1, v2

    .line 121
    .local v1, "cur":B
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    aget-byte v2, v2, v4

    if-eq v1, v2, :cond_2

    move v2, v3

    :goto_1
    or-int/2addr v0, v2

    .line 122
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    aput-byte v1, v2, v4

    .line 124
    if-eqz p2, :cond_3

    move v2, v3

    :goto_2
    int-to-byte v1, v2

    .line 125
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    aget-byte v2, v2, v3

    if-eq v1, v2, :cond_4

    move v2, v3

    :goto_3
    or-int/2addr v0, v2

    .line 126
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    aput-byte v1, v2, v3

    .line 128
    if-eqz p3, :cond_5

    move v2, v3

    :goto_4
    int-to-byte v1, v2

    .line 129
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    aget-byte v2, v2, v4

    if-eq v1, v2, :cond_6

    move v2, v3

    :goto_5
    or-int/2addr v0, v2

    .line 130
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    const/4 v5, 0x2

    aput-byte v1, v2, v5

    .line 132
    if-eqz p4, :cond_7

    move v2, v3

    :goto_6
    int-to-byte v1, v2

    .line 133
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    aget-byte v2, v2, v6

    if-eq v1, v2, :cond_8

    :goto_7
    or-int/2addr v0, v3

    .line 134
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    aput-byte v1, v2, v6

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->invalidate()V

    .line 138
    :cond_0
    return-void

    .end local v1    # "cur":B
    :cond_1
    move v2, v4

    .line 120
    goto :goto_0

    .restart local v1    # "cur":B
    :cond_2
    move v2, v4

    .line 121
    goto :goto_1

    :cond_3
    move v2, v4

    .line 124
    goto :goto_2

    :cond_4
    move v2, v4

    .line 125
    goto :goto_3

    :cond_5
    move v2, v4

    .line 128
    goto :goto_4

    :cond_6
    move v2, v4

    .line 129
    goto :goto_5

    :cond_7
    move v2, v4

    .line 132
    goto :goto_6

    :cond_8
    move v3, v4

    .line 133
    goto :goto_7
.end method


# virtual methods
.method public fadeOut(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dropTouches:Z

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->animationStart:J

    .line 144
    iget-wide v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->animationStart:J

    const-wide/16 v3, 0x8c

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->animationEnd:J

    .line 146
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->invalidate()V

    .line 148
    const/16 v0, 0xf

    .line 150
    .local v0, "delay":I
    new-instance v1, Lcom/vkontakte/android/imagepicker/ui/CropperView$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/imagepicker/ui/CropperView$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/CropperView;Ljava/lang/Runnable;)V

    .line 163
    const-wide/16 v2, 0xf

    .line 150
    invoke-virtual {p0, v1, v2, v3}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method public getCropData()Lcom/vkontakte/android/imagepicker/entries/CropEntry;
    .locals 9

    .prologue
    .line 103
    const-string v0, "x: %d, y: %d, width: %d, height;% d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    new-instance v0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumWidth:I

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumHeight:I

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/imagepicker/entries/CropEntry;-><init>(IIIIIIII)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 358
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getCurrentX2()I

    move-result v6

    .line 359
    .local v6, "currentX2":I
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getCurrentY2()I

    move-result v7

    .line 361
    .local v7, "currentY2":I
    const/4 v9, 0x0

    .line 363
    .local v9, "ratio":F
    iget-wide v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->animationStart:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    const/16 v2, 0x88

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 381
    int-to-float v2, v7

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 382
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 383
    int-to-float v1, v6

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 385
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->BoldStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const v1, -0xa0a0b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x432a0000    # 170.0f

    mul-float/2addr v1, v9

    float-to-int v1, v1

    rsub-int v1, v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 391
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    int-to-float v2, v0

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 393
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 394
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v9

    float-to-int v1, v1

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 400
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    .line 401
    .local v10, "x":I
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int v11, v0, v1

    .line 402
    .local v11, "y":I
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    div-int/lit8 v8, v0, 0x3

    .line 404
    .local v8, "d":I
    int-to-float v1, v10

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    add-int/2addr v0, v8

    int-to-float v2, v0

    int-to-float v3, v6

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 405
    int-to-float v1, v10

    sub-int v0, v7, v8

    int-to-float v2, v0

    int-to-float v3, v6

    sub-int v0, v7, v8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 407
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v12, :cond_0

    .line 408
    int-to-float v0, v10

    int-to-float v1, v11

    sget v2, Lcom/vkontakte/android/imagepicker/ui/CropperView;->CircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    if-ne v0, v12, :cond_1

    .line 411
    int-to-float v0, v6

    int-to-float v1, v11

    sget v2, Lcom/vkontakte/android/imagepicker/ui/CropperView;->CircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 413
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int v10, v0, v1

    .line 414
    iget v11, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    .line 415
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    div-int/lit8 v8, v0, 0x3

    .line 417
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    add-int/2addr v0, v8

    int-to-float v1, v0

    int-to-float v2, v11

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    add-int/2addr v0, v8

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 418
    sub-int v0, v6, v8

    int-to-float v1, v0

    int-to-float v2, v11

    sub-int v0, v6, v8

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 420
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    aget-byte v0, v0, v12

    if-ne v0, v12, :cond_2

    .line 421
    int-to-float v0, v10

    int-to-float v1, v11

    sget v2, Lcom/vkontakte/android/imagepicker/ui/CropperView;->CircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->buttons:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    if-ne v0, v12, :cond_3

    .line 424
    int-to-float v0, v10

    int-to-float v1, v7

    sget v2, Lcom/vkontakte/android/imagepicker/ui/CropperView;->CircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 425
    :cond_3
    return-void

    .line 367
    .end local v8    # "d":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_4
    iget-wide v2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->animationEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->animationStart:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x430c0000    # 140.0f

    div-float v9, v0, v2

    .line 370
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v9

    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42ee0000    # 119.0f

    mul-float/2addr v2, v9

    float-to-int v2, v2

    add-int/lit16 v2, v2, 0x88

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->bg_paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 377
    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dropTouches:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->isSquare:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->isSquare:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    const/16 v19, 0x0

    .line 352
    :goto_0
    return v19

    .line 192
    :cond_1
    const/16 v19, 0x1

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 195
    .local v15, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 197
    .local v17, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 352
    :goto_1
    const/16 v19, 0x1

    goto :goto_0

    .line 201
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getCurrentX2()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragStartX:I

    .line 202
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragX:I

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getCurrentY2()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragStartY:I

    .line 205
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragY:I

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getCurrentX2()I

    move-result v16

    .line 208
    .local v16, "x2":I
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getCurrentY2()I

    move-result v18

    .line 210
    .local v18, "y2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v13, v19, v20

    .line 211
    .local v13, "minX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v14, v19, v20

    .line 212
    .local v14, "minY":I
    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v11, v16, v19

    .line 213
    .local v11, "maxX":I
    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v12, v18, v19

    .line 215
    .local v12, "maxY":I
    move/from16 v0, v17

    if-le v0, v14, :cond_3

    move/from16 v0, v17

    if-ge v0, v12, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v19, v19, v20

    move/from16 v0, v19

    if-le v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v20

    move/from16 v0, v19

    if-ge v15, v0, :cond_3

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragLeft:Z

    .line 216
    if-le v15, v13, :cond_4

    if-ge v15, v11, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v20

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragTop:Z

    .line 217
    move/from16 v0, v17

    if-le v0, v14, :cond_5

    move/from16 v0, v17

    if-ge v0, v12, :cond_5

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v19, v16, v19

    move/from16 v0, v19

    if-le v15, v0, :cond_5

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v16

    move/from16 v0, v19

    if-ge v15, v0, :cond_5

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragRight:Z

    .line 218
    if-le v15, v13, :cond_6

    if-ge v15, v11, :cond_6

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v19, v18, v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v18

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragBottom:Z

    .line 219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragLeft:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragTop:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragRight:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->noDrag:Z

    .line 221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragLeft:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragTop:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragRight:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragBottom:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->setButtonsVisible(ZZZZ)V

    goto/16 :goto_1

    .line 215
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 216
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 217
    :cond_5
    const/16 v19, 0x0

    goto :goto_4

    .line 218
    :cond_6
    const/16 v19, 0x0

    goto :goto_5

    .line 219
    :cond_7
    const/16 v19, 0x0

    goto :goto_6

    .line 228
    .end local v11    # "maxX":I
    .end local v12    # "maxY":I
    .end local v13    # "minX":I
    .end local v14    # "minY":I
    .end local v16    # "x2":I
    .end local v18    # "y2":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragX:I

    move/from16 v19, v0

    sub-int v9, v15, v19

    .line 229
    .local v9, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragY:I

    move/from16 v19, v0

    sub-int v10, v17, v19

    .line 231
    .local v10, "dy":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->noDrag:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    add-int v7, v19, v9

    .line 234
    .local v7, "currentX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    add-int v8, v19, v10

    .line 236
    .local v8, "currentY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    add-int v19, v19, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 239
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_9

    .line 240
    move-object/from16 v0, p0

    iget v7, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    .line 242
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    add-int v19, v19, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 245
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_b

    .line 246
    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    .line 248
    :cond_b
    move-object/from16 v0, p0

    iput v7, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    .line 249
    move-object/from16 v0, p0

    iput v8, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    .line 251
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragX:I

    .line 252
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragY:I

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->invalidate()V

    .line 257
    .end local v7    # "currentX":I
    .end local v8    # "currentY":I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getCurrentX2()I

    move-result v16

    .line 258
    .restart local v16    # "x2":I
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->getCurrentY2()I

    move-result v18

    .line 260
    .restart local v18    # "y2":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragLeft:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    add-int v7, v19, v9

    .line 263
    .restart local v7    # "currentX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragStartX:I

    move/from16 v19, v0

    sub-int v6, v19, v7

    .line 265
    .local v6, "currentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v7, v0, :cond_f

    .line 267
    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    if-ge v6, v0, :cond_d

    .line 269
    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    sub-int v7, v16, v19

    .line 270
    sget v6, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    .line 273
    :cond_d
    sget-boolean v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->SuggestSquare:Z

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    sub-int v19, v16, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v19, v6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    sub-int v7, v16, v19

    .line 276
    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    .line 279
    :cond_e
    move-object/from16 v0, p0

    iput v7, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    .line 280
    move-object/from16 v0, p0

    iput v6, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    .line 298
    .end local v6    # "currentWidth":I
    .end local v7    # "currentX":I
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragTop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    add-int v8, v19, v10

    .line 301
    .restart local v8    # "currentY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragStartY:I

    move/from16 v19, v0

    sub-int v5, v19, v8

    .line 303
    .local v5, "currentHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v8, v0, :cond_12

    .line 305
    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    if-ge v5, v0, :cond_10

    .line 307
    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    sub-int v8, v18, v19

    .line 308
    sget v5, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    .line 311
    :cond_10
    sget-boolean v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->SuggestSquare:Z

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_11

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v19, v5, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_11

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    sub-int v8, v18, v19

    .line 314
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    .line 317
    :cond_11
    move-object/from16 v0, p0

    iput v8, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    .line 318
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    .line 336
    .end local v5    # "currentHeight":I
    .end local v8    # "currentY":I
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragX:I

    .line 337
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragY:I

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->invalidate()V

    goto/16 :goto_1

    .line 282
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragRight:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 284
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    add-int v19, v19, v9

    move/from16 v0, v19

    int-to-float v6, v0

    .line 286
    .local v6, "currentWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_f

    .line 288
    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v6, v19

    if-gez v19, :cond_14

    .line 289
    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    int-to-float v6, v0

    .line 291
    :cond_14
    sget-boolean v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->SuggestSquare:Z

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v6, v19

    if-lez v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    sget v20, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v6, v19

    if-gez v19, :cond_15

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v6, v0

    .line 294
    :cond_15
    float-to-int v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    goto/16 :goto_7

    .line 320
    .end local v6    # "currentWidth":F
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dragBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    move/from16 v19, v0

    add-int v5, v19, v10

    .line 324
    .restart local v5    # "currentHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    move/from16 v19, v0

    add-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_12

    .line 326
    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    move/from16 v0, v19

    if-ge v5, v0, :cond_17

    .line 327
    sget v5, Lcom/vkontakte/android/imagepicker/ui/CropperView;->MinimumSize:I

    .line 329
    :cond_17
    sget-boolean v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->SuggestSquare:Z

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_18

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    sub-int v19, v5, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_18

    sget v19, Lcom/vkontakte/android/imagepicker/ui/CropperView;->TapBound:I

    add-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_18

    .line 330
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    .line 332
    :cond_18
    move-object/from16 v0, p0

    iput v5, v0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    goto/16 :goto_8

    .line 346
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

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->setButtonsVisible(ZZZZ)V

    goto/16 :goto_1

    .line 197
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

    .line 110
    iput-wide v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->animationStart:J

    .line 111
    iput-wide v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->animationEnd:J

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->dropTouches:Z

    .line 113
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    .line 70
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    .line 71
    iput p3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    iput p3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumWidth:I

    .line 72
    iput p4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    iput p4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumHeight:I

    .line 73
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumX:I

    .line 74
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumY:I

    .line 75
    return-void
.end method

.method public setCurrentData(IIII)V
    .locals 1
    .param p1, "currentX"    # I
    .param p2, "currentY"    # I
    .param p3, "currentWidth"    # I
    .param p4, "currentHeight"    # I

    .prologue
    .line 79
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    .line 80
    iput p3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    .line 81
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    .line 82
    iput p4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    .line 83
    return-void
.end method

.method public setSourceSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumWidth:I

    .line 88
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumHeight:I

    .line 89
    return-void
.end method

.method public setSquareMode(I)V
    .locals 7
    .param p1, "squareSize"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    if-lez p1, :cond_1

    move v0, v1

    .line 175
    .local v0, "isSquare":Z
    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->isSquare:Z

    .line 177
    if-eqz v0, :cond_0

    .line 179
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    .line 181
    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumX:I

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentX:I

    .line 182
    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumY:I

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->minimumY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->currentY:I

    .line 185
    :cond_0
    if-eqz v0, :cond_2

    move v5, v2

    :goto_1
    if-eqz v0, :cond_3

    move v4, v2

    :goto_2
    if-eqz v0, :cond_4

    move v3, v2

    :goto_3
    if-eqz v0, :cond_5

    :goto_4
    invoke-direct {p0, v5, v4, v3, v2}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->setButtonsVisible(ZZZZ)V

    .line 186
    return-void

    .end local v0    # "isSquare":Z
    :cond_1
    move v0, v2

    .line 173
    goto :goto_0

    .restart local v0    # "isSquare":Z
    :cond_2
    move v5, v1

    .line 185
    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4
.end method

.method public setSquareMode(Z)V
    .locals 2
    .param p1, "isSquare"    # Z

    .prologue
    .line 168
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumWidth:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/CropperView;->maximumHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->setSquareMode(I)V

    .line 169
    return-void

    .line 168
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
