.class public Lcom/vkontakte/android/ui/ViewPagerIndicator;
.super Landroid/view/View;
.source "ViewPagerIndicator.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;


# instance fields
.field private activeBold:Z

.field private activeOffset:F

.field private activePage:I

.field private arrowLeft:Landroid/graphics/Bitmap;

.field private arrowPaint:Landroid/graphics/Paint;

.field private arrowRight:Landroid/graphics/Bitmap;

.field private bgDrawable:Landroid/graphics/drawable/Drawable;

.field private click:Z

.field private currentPage:F

.field private dB:I

.field private dG:I

.field private dR:I

.field private density:F

.field private itemColor:I

.field private listener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

.field private pageOffset:F

.field private pager:Lcom/vkontakte/android/ui/ViewPager;

.field private selColor:I

.field private selTextPaint:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F

.field private textPaint:Landroid/graphics/Paint;

.field private titles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private titlesInLowercase:Z

.field private touchslop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeOffset:F

    .line 25
    iput v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    .line 26
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeBold:Z

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    .line 33
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->click:Z

    .line 36
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titlesInLowercase:Z

    .line 52
    const v1, 0x7f020012

    const v2, 0x7f020125

    const v3, 0x7f020127

    const v4, -0xaaaaab

    const v5, -0x7f7f80

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->init(IIIII)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeOffset:F

    .line 25
    iput v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    .line 26
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeBold:Z

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    .line 33
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->click:Z

    .line 36
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titlesInLowercase:Z

    .line 57
    const v1, 0x7f020012

    const v2, 0x7f020125

    const v3, 0x7f020127

    const v4, -0xaaaaab

    const v5, -0x7f7f80

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->init(IIIII)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vkontakte/android/ui/ViewPager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vp"    # Lcom/vkontakte/android/ui/ViewPager;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeOffset:F

    .line 25
    iput v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    .line 26
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeBold:Z

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    .line 33
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->click:Z

    .line 36
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titlesInLowercase:Z

    .line 40
    const v1, 0x7f020012

    const v2, 0x7f020125

    const v3, 0x7f020127

    const v4, -0xaaaaab

    const v5, -0x7f7f80

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->init(IIIII)V

    .line 41
    iput-object p2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pager:Lcom/vkontakte/android/ui/ViewPager;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vkontakte/android/ui/ViewPager;IIIII)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vp"    # Lcom/vkontakte/android/ui/ViewPager;
    .param p3, "bgDrawable"    # I
    .param p4, "arrowLeftDrawable"    # I
    .param p5, "arrowRightDrawable"    # I
    .param p6, "selColor"    # I
    .param p7, "unselColor"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeOffset:F

    .line 25
    iput v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    .line 26
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeBold:Z

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    .line 33
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->click:Z

    .line 36
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titlesInLowercase:Z

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->init(IIIII)V

    .line 47
    iput-object p2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pager:Lcom/vkontakte/android/ui/ViewPager;

    .line 48
    return-void
.end method

.method private color(F)I
    .locals 7
    .param p1, "f"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 198
    iget v3, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->itemColor:I

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->dB:I

    int-to-float v4, v4

    sub-float v5, v6, p1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 199
    .local v0, "b":I
    iget v3, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->itemColor:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->dG:I

    int-to-float v4, v4

    sub-float v5, v6, p1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v1, v3, v4

    .line 200
    .local v1, "g":I
    iget v3, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->itemColor:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->dR:I

    int-to-float v4, v4

    sub-float v5, v6, p1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 203
    .local v2, "r":I
    const/high16 v3, -0x1000000

    or-int/2addr v3, v0

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x10

    or-int/2addr v3, v4

    return v3
.end method

.method private getPageTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titlesInLowercase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<page "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init(IIIII)V
    .locals 12
    .param p1, "bgDrawable"    # I
    .param p2, "arrowLeftDrawable"    # I
    .param p3, "arrowRightDrawable"    # I
    .param p4, "unselColor"    # I
    .param p5, "selColor"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iput v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    .line 81
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowPaint:Landroid/graphics/Paint;

    const v8, -0x656566

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    const v8, 0x322bcc77    # 1.0E-8f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, -0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 89
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    sget-object v8, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 90
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x41400000    # 12.0f

    iget v9, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->selTextPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->selTextPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->selTextPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->selTextPaint:Landroid/graphics/Paint;

    sget-object v8, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->selTextPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x41400000    # 12.0f

    iget v9, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowLeft:Landroid/graphics/Bitmap;

    .line 99
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowRight:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->bgDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->touchslop:F

    .line 105
    move/from16 v0, p4

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->itemColor:I

    .line 106
    move/from16 v0, p5

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->selColor:I

    .line 107
    move/from16 v0, p4

    and-int/lit16 v1, v0, 0xff

    .local v1, "b1":I
    shr-int/lit8 v7, p4, 0x8

    and-int/lit16 v3, v7, 0xff

    .local v3, "g1":I
    shr-int/lit8 v7, p4, 0x10

    and-int/lit16 v5, v7, 0xff

    .line 108
    .local v5, "r1":I
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xff

    .local v2, "b2":I
    shr-int/lit8 v7, p5, 0x8

    and-int/lit16 v4, v7, 0xff

    .local v4, "g2":I
    shr-int/lit8 v7, p5, 0x10

    and-int/lit16 v6, v7, 0xff

    .line 109
    .local v6, "r2":I
    sub-int v7, v6, v5

    iput v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->dR:I

    .line 110
    sub-int v7, v4, v3

    iput v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->dG:I

    .line 111
    sub-int v7, v2, v1

    iput v7, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->dB:I

    .line 112
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->bgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getHeight()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->bgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    const/high16 v1, 0x3f800000    # 1.0f

    .line 211
    .local v1, "arrowAlpha":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    float-to-double v12, v12

    const-wide v14, 0x3fa999999999999aL    # 0.05

    cmpg-double v12, v12, v14

    if-gez v12, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    const/high16 v13, 0x41a00000    # 20.0f

    mul-float v1, v12, v13

    .line 214
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    float-to-double v12, v12

    const-wide v14, 0x3fee666666666666L    # 0.95

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    .line 215
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x41a00000    # 20.0f

    mul-float v1, v12, v13

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v1

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v14

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float v8, v12, v13

    .line 221
    .local v8, "textY":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getPageTitle(I)Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    float-to-double v12, v12

    const-wide v14, 0x3fa999999999999aL    # 0.05

    cmpg-double v12, v12, v14

    if-gez v12, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->color(F)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 227
    .local v10, "titleW":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v10, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    const/high16 v13, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    mul-float/2addr v13, v14

    add-float v11, v12, v13

    .line 229
    .local v11, "titleX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->selColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    if-lez v12, :cond_3

    .line 233
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getPageTitle(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "prevTitle":Ljava/lang/String;
    const/high16 v12, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    mul-float/2addr v13, v14

    sub-float v5, v12, v13

    .line 236
    .local v5, "stitleX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 238
    .end local v3    # "prevTitle":Ljava/lang/String;
    .end local v5    # "stitleX":F
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->currentPage:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    if-lez v12, :cond_4

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowLeft:Landroid/graphics/Bitmap;

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getPageTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "nextTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    float-to-double v12, v12

    const-wide v14, 0x3fee666666666666L    # 0.95

    cmpl-double v12, v12, v14

    if-lez v12, :cond_5

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->color(F)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 251
    .local v4, "stitleW":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v4

    const/high16 v13, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    mul-float/2addr v13, v14

    sub-float v6, v12, v13

    .local v6, "stx1":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v4, v13

    sub-float v7, v12, v13

    .line 252
    .local v7, "stx2":F
    sub-float v12, v7, v6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    mul-float/2addr v12, v13

    add-float v5, v6, v12

    .line 254
    .restart local v5    # "stitleX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->selColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    .end local v2    # "nextTitle":Ljava/lang/String;
    .end local v4    # "stitleW":F
    .end local v5    # "stitleX":F
    .end local v6    # "stx1":F
    .end local v7    # "stx2":F
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->currentPage:F

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_7

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowRight:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowRight:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->arrowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 264
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    if-ge v12, v13, :cond_8

    .line 265
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getPageTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    .restart local v2    # "nextTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 267
    .restart local v4    # "stitleW":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v4

    const/high16 v13, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    mul-float/2addr v13, v14

    sub-float v7, v12, v13

    .restart local v7    # "stx2":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getWidth()I

    move-result v12

    int-to-float v6, v12

    .line 268
    .restart local v6    # "stx1":F
    sub-float v12, v7, v6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    mul-float/2addr v12, v13

    add-float v5, v6, v12

    .line 270
    .restart local v5    # "stitleX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    .end local v2    # "nextTitle":Ljava/lang/String;
    .end local v4    # "stitleW":F
    .end local v5    # "stitleX":F
    .end local v6    # "stx1":F
    .end local v7    # "stx2":F
    :cond_8
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 119
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 131
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "mw"    # I
    .param p2, "mh"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    .line 65
    const/16 v1, 0x64

    .local v1, "w":I
    const/16 v0, 0x64

    .line 66
    .local v0, "h":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 67
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 69
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 70
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 72
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 73
    const/high16 v2, 0x41d00000    # 26.0f

    iget v3, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->density:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 75
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setMeasuredDimension(II)V

    .line 76
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->listener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->listener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 174
    neg-int v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeOffset:F

    .line 175
    iput p1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activePage:I

    .line 180
    float-to-double v0, p2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    float-to-double v0, p2

    const-wide v2, 0x3fee666666666666L    # 0.95

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->activeBold:Z

    .line 181
    int-to-float v0, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->currentPage:F

    .line 182
    iput p2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pageOffset:F

    .line 183
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->invalidate()V

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->listener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->listener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 185
    :cond_0
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->listener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->listener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->startX:F

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->startY:F

    .line 137
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->click:Z

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 140
    iget v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->touchslop:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->touchslop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 141
    :cond_1
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->click:Z

    .line 143
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 144
    iget v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->touchslop:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->touchslop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 145
    :cond_3
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->click:Z

    .line 146
    :cond_4
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->click:Z

    if-eqz v1, :cond_6

    .line 147
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x3

    .line 148
    .local v0, "p":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_5

    .line 149
    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pager:Lcom/vkontakte/android/ui/ViewPager;

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 151
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_6

    .line 152
    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pager:Lcom/vkontakte/android/ui/ViewPager;

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 156
    .end local v0    # "p":I
    :cond_6
    return v3
.end method

.method public setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->listener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    .line 62
    return-void
.end method

.method public setShadow(II)V
    .locals 4
    .param p1, "color"    # I
    .param p2, "dy"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->textPaint:Landroid/graphics/Paint;

    const v1, 0x322bcc77    # 1.0E-8f

    const/4 v2, 0x0

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 116
    return-void
.end method

.method public setTitles([Ljava/lang/String;)V
    .locals 4
    .param p1, "ntitles"    # [Ljava/lang/String;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 166
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->invalidate()V

    .line 168
    return-void

    .line 166
    :cond_0
    aget-object v0, p1, v1

    .local v0, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titles:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setTitlesInLowercase(Z)V
    .locals 0
    .param p1, "titlesInLowercase"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/ViewPagerIndicator;->titlesInLowercase:Z

    .line 282
    return-void
.end method
