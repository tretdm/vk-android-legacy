.class public Lcom/vkontakte/android/ui/PaginationView;
.super Landroid/view/View;
.source "PaginationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/PaginationView$Listener;
    }
.end annotation


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private click:Z

.field private currentPage:I

.field private fadeTimer:Ljava/util/Timer;

.field private isClickable:Z

.field private isVisible:Z

.field private listener:Lcom/vkontakte/android/ui/PaginationView$Listener;

.field private numPages:I

.field private offset:I

.field private pWidth:I

.field private pageMap:[I

.field private sx:F

.field private sy:F

.field private textPaint:Landroid/graphics/Paint;

.field private touchslop:F

.field private widths:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/16 v0, 0x14

    iput v0, p0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    .line 25
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PaginationView;->isClickable:Z

    .line 26
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    .line 28
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->pageMap:[I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->bgPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->bgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x60000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PaginationView;->touchslop:F

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PaginationView;Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PaginationView;->isVisible:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/PaginationView;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PaginationView;->isVisible:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/PaginationView;Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PaginationView;->isClickable:Z

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 205
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p5}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 206
    return-void
.end method


# virtual methods
.method public getPageCount()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    return v0
.end method

.method public hide()V
    .locals 4

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PaginationView;->isVisible:Z

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->fadeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->fadeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 213
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->fadeTimer:Ljava/util/Timer;

    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/ui/PaginationView;->fadeTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/ui/PaginationView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PaginationView$1;-><init>(Lcom/vkontakte/android/ui/PaginationView;)V

    .line 225
    const-wide/16 v2, 0x3e8

    .line 214
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public hideNow()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 230
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 231
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/PaginationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 233
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/PaginationView;->isVisible:Z

    .line 234
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    const/4 v1, 0x0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    array-length v1, v1

    if-lt v13, v1, :cond_8

    .line 115
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    .line 116
    .local v12, "fullWidth":I
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    .line 117
    .local v15, "spacing":I
    const/4 v13, 0x0

    .line 118
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    const-string v3, "\u00ab"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v15

    aput v2, v1, v13

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->pageMap:[I

    const/4 v2, 0x1

    aput v2, v1, v13

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v1, v1, v13

    add-int/2addr v12, v1

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v2, v1, v13

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v13

    .line 123
    add-int/lit8 v13, v13, 0x1

    .line 127
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v2, v15

    add-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v16, v0

    .line 129
    .local v16, "w":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aput v16, v1, v13

    .line 130
    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v2, v1, v13

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v13

    .line 131
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->pageMap:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v13

    .line 132
    add-int v12, v12, v16

    .line 133
    add-int/lit8 v13, v13, 0x1

    .line 136
    .end local v16    # "w":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v15

    aput v2, v1, v13

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v1, v1, v13

    add-int/2addr v12, v1

    .line 138
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    if-ne v1, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v2, v1, v13

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v13

    .line 139
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->pageMap:[I

    const/4 v2, 0x0

    aput v2, v1, v13

    .line 140
    add-int/lit8 v13, v13, 0x1

    .line 142
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    if-ge v1, v2, :cond_5

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v15

    aput v2, v1, v13

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v1, v1, v13

    add-int/2addr v12, v1

    .line 145
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v2, v1, v13

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v13

    .line 146
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->pageMap:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v13

    .line 147
    add-int/lit8 v13, v13, 0x1

    .line 149
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_a

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    const-string v3, "\u00bb"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v15

    aput v2, v1, v13

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v1, v1, v13

    add-int/2addr v12, v1

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->pageMap:[I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    aput v2, v1, v13

    .line 153
    add-int/lit8 v13, v13, 0x1

    .line 158
    :goto_2
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/PaginationView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v12

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/PaginationView;->getWidth()I

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v1, v2, v3, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/PaginationView;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 160
    move-object/from16 v0, p0

    iput v12, v0, Lcom/vkontakte/android/ui/PaginationView;->pWidth:I

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/PaginationView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v12

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int v4, v1, v2

    .line 164
    .local v4, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/PaginationView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v12

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/ui/PaginationView;->offset:I

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    .line 168
    .local v5, "textY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_b

    .line 169
    const-string v3, "\u00ab"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ui/PaginationView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    .line 170
    int-to-float v1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    const-string v3, "\u00ab"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v15

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v4, v1

    .line 174
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ui/PaginationView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    .line 176
    move v14, v4

    .line 177
    .local v14, "po":I
    int-to-float v1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v15

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v4, v1

    .line 178
    div-int/lit8 v1, v15, 0x2

    sub-int v1, v14, v1

    int-to-float v7, v1

    int-to-float v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float v8, v1, v2

    div-int/lit8 v1, v15, 0x2

    sub-int v1, v4, v1

    int-to-float v9, v1

    int-to-float v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 181
    .end local v14    # "po":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ui/PaginationView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    .line 183
    move v14, v4

    .line 184
    .restart local v14    # "po":I
    int-to-float v1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v15

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v4, v1

    .line 185
    div-int/lit8 v1, v15, 0x2

    sub-int v1, v14, v1

    int-to-float v7, v1

    int-to-float v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float v8, v1, v2

    div-int/lit8 v1, v15, 0x2

    sub-int v1, v4, v1

    int-to-float v9, v1

    int-to-float v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    if-ge v1, v2, :cond_7

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ui/PaginationView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    .line 190
    move v14, v4

    .line 191
    int-to-float v1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v15

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v4, v1

    .line 192
    div-int/lit8 v1, v15, 0x2

    sub-int v1, v14, v1

    int-to-float v7, v1

    int-to-float v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float v8, v1, v2

    div-int/lit8 v1, v15, 0x2

    sub-int v1, v4, v1

    int-to-float v9, v1

    int-to-float v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v10, v1, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 194
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 195
    const-string v3, "\u00bb"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ui/PaginationView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IILandroid/graphics/Paint;)V

    .line 196
    int-to-float v1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    const-string v3, "\u00bb"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v15

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v4, v1

    .line 201
    :goto_4
    const/4 v1, 0x0

    const/high16 v2, -0x3fc00000    # -3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 202
    return-void

    .line 113
    .end local v4    # "offset":I
    .end local v5    # "textY":I
    .end local v12    # "fullWidth":I
    .end local v14    # "po":I
    .end local v15    # "spacing":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    const/4 v2, 0x0

    aput v2, v1, v13

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 125
    .restart local v12    # "fullWidth":I
    .restart local v15    # "spacing":I
    :cond_9
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v12, v1

    goto/16 :goto_1

    .line 155
    :cond_a
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v12, v1

    goto/16 :goto_2

    .line 172
    .restart local v4    # "offset":I
    .restart local v5    # "textY":I
    :cond_b
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v4, v1

    goto/16 :goto_3

    .line 198
    .restart local v14    # "po":I
    :cond_c
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_4
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PaginationView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/PaginationView;->setMeasuredDimension(II)V

    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 67
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PaginationView;->isClickable:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PaginationView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 103
    :cond_1
    :goto_0
    return v3

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PaginationView;->show()V

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PaginationView;->offset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 73
    .local v2, "x":I
    if-ltz v2, :cond_3

    iget v5, p0, Lcom/vkontakte/android/ui/PaginationView;->pWidth:I

    if-le v2, v5, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_1

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "w":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    array-length v4, v4

    if-lt v0, v4, :cond_5

    .line 98
    iget v4, p0, Lcom/vkontakte/android/ui/PaginationView;->pWidth:I

    if-ge v2, v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/vkontakte/android/ui/PaginationView;->listener:Lcom/vkontakte/android/ui/PaginationView$Listener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/ui/PaginationView;->listener:Lcom/vkontakte/android/ui/PaginationView$Listener;

    iget v5, p0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/PaginationView$Listener;->onPageSelected(I)V

    goto :goto_0

    .line 90
    :cond_5
    if-lt v2, v1, :cond_7

    iget-object v4, p0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v4, v4, v0

    add-int/2addr v4, v1

    if-gt v2, v4, :cond_7

    .line 91
    iget-object v4, p0, Lcom/vkontakte/android/ui/PaginationView;->listener:Lcom/vkontakte/android/ui/PaginationView$Listener;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/vkontakte/android/ui/PaginationView;->listener:Lcom/vkontakte/android/ui/PaginationView$Listener;

    iget-object v5, p0, Lcom/vkontakte/android/ui/PaginationView;->pageMap:[I

    aget v5, v5, v0

    invoke-interface {v4, v5}, Lcom/vkontakte/android/ui/PaginationView$Listener;->onPageSelected(I)V

    .line 93
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PaginationView;->invalidate()V

    goto :goto_0

    .line 96
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/ui/PaginationView;->widths:[I

    aget v4, v4, v0

    add-int/2addr v1, v4

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setCurrentPage(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/vkontakte/android/ui/PaginationView;->currentPage:I

    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PaginationView;->invalidate()V

    .line 60
    return-void
.end method

.method public setListener(Lcom/vkontakte/android/ui/PaginationView$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/PaginationView$Listener;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/vkontakte/android/ui/PaginationView;->listener:Lcom/vkontakte/android/ui/PaginationView$Listener;

    .line 252
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/vkontakte/android/ui/PaginationView;->numPages:I

    .line 54
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PaginationView;->invalidate()V

    .line 55
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 237
    iget-object v1, p0, Lcom/vkontakte/android/ui/PaginationView;->fadeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/vkontakte/android/ui/PaginationView;->fadeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/ui/PaginationView;->fadeTimer:Ljava/util/Timer;

    .line 241
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/PaginationView;->isVisible:Z

    if-eqz v1, :cond_1

    .line 248
    :goto_0
    return-void

    .line 242
    :cond_1
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PaginationView;->isClickable:Z

    .line 243
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 244
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 245
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/PaginationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PaginationView;->isVisible:Z

    goto :goto_0
.end method
