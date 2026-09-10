.class public Lcom/vkontakte/android/ui/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private cornerRadius:F

.field private image:Landroid/graphics/drawable/Drawable;

.field private needRecreateBitmap:Z

.field private overlay:Landroid/graphics/Bitmap;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->needRecreateBitmap:Z

    .line 27
    iput-object v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->overlay:Landroid/graphics/Bitmap;

    .line 29
    iput-object v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/vkontakte/android/ui/RoundedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->needRecreateBitmap:Z

    .line 27
    iput-object v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->overlay:Landroid/graphics/Bitmap;

    .line 29
    iput-object v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkontakte/android/ui/RoundedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->needRecreateBitmap:Z

    .line 27
    iput-object v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->overlay:Landroid/graphics/Bitmap;

    .line 29
    iput-object v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/ui/RoundedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 48
    if-eqz p2, :cond_0

    .line 49
    sget-object v1, Lcom/vkontakte/android/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    .line 52
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method private recreateBitmap()V
    .locals 29

    .prologue
    .line 86
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getWidth()I

    move-result v27

    .local v27, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getHeight()I

    move-result v9

    .local v9, "h":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getPaddingRight()I

    move-result v19

    .local v19, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getPaddingLeft()I

    move-result v18

    .local v18, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getPaddingTop()I

    move-result v20

    .local v20, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getPaddingBottom()I

    move-result v17

    .line 87
    .local v17, "pb":I
    sget-boolean v3, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/vkontakte/android/BitmapHack;->unhackBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    :cond_0
    sub-int v3, v27, v19

    sub-int v3, v3, v18

    sub-int v4, v9, v17

    sub-int v4, v4, v20

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 89
    sget-boolean v3, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v8, -0x1

    .line 93
    .local v8, "color":I
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 94
    .local v16, "paint":Landroid/graphics/Paint;
    new-instance v21, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sub-int v5, v27, v18

    sub-int v5, v5, v19

    sub-int v6, v9, v17

    sub-int v6, v6, v20

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .local v21, "rect":Landroid/graphics/Rect;
    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 97
    .local v22, "rectF":Landroid/graphics/RectF;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 99
    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 102
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->image:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_8

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->image:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 107
    .local v11, "img":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_3

    .line 108
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .local v12, "imgRect":Landroid/graphics/Rect;
    sub-int v3, v27, v18

    sub-int v3, v3, v19

    int-to-float v3, v3

    sub-int v4, v9, v17

    sub-int v4, v4, v20

    int-to-float v4, v4

    div-float v26, v3, v4

    .line 110
    .local v26, "vratio":F
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v13, v3, v4

    .line 111
    .local v13, "iratio":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v4, :cond_6

    cmpl-float v3, v26, v13

    if-lez v3, :cond_7

    .line 112
    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v10, v3, v4

    .line 113
    .local v10, "ih":F
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "imgRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v10, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v28, 0x40000000    # 2.0f

    div-float v6, v6, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v28, v10, v28

    add-float v6, v6, v28

    float-to-int v6, v6

    invoke-direct {v12, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 118
    .end local v10    # "ih":F
    .restart local v12    # "imgRect":Landroid/graphics/Rect;
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v11, v3, v12, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    .end local v11    # "img":Landroid/graphics/Bitmap;
    .end local v12    # "imgRect":Landroid/graphics/Rect;
    .end local v13    # "iratio":F
    .end local v26    # "vratio":F
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->overlay:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->overlay:Landroid/graphics/Bitmap;

    sub-int v4, v27, v19

    sub-int v4, v4, v18

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/RoundedImageView;->overlay:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-int v5, v9, v17

    sub-int v5, v5, v20

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/RoundedImageView;->overlay:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 128
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v7, "bpaint":Landroid/graphics/Paint;
    const/high16 v3, -0x80000000

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .line 132
    .local v25, "tpaint":Landroid/graphics/Paint;
    sget-object v3, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 133
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    const/4 v3, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    const v3, 0x322bcc77    # 1.0E-8f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x1000000

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 137
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    neg-float v3, v3

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    add-int v24, v3, v4

    .line 138
    .local v24, "th":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    const/4 v4, 0x1

    sub-int v5, v27, v18

    sub-int v5, v5, v19

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v15

    .line 140
    .local v15, "len":I
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 141
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    sub-int v5, v9, v20

    sub-int v5, v5, v17

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v6, v27, v18

    sub-int v6, v6, v19

    sub-int v28, v9, v20

    sub-int v28, v28, v17

    move/from16 v0, v28

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 142
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    sub-int v5, v9, v20

    sub-int v5, v5, v17

    sub-int v5, v5, v24

    int-to-float v5, v5

    sub-int v6, v27, v19

    sub-int v6, v6, v18

    int-to-float v6, v6

    sub-int v28, v9, v20

    sub-int v28, v28, v17

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 144
    const/4 v3, 0x0

    sub-int v4, v9, v20

    sub-int v4, v4, v17

    sub-int v4, v4, v24

    int-to-float v4, v4

    sub-int v5, v27, v19

    sub-int v5, v5, v18

    int-to-float v5, v5

    sub-int v6, v9, v20

    sub-int v6, v6, v17

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    move/from16 v28, v0

    sub-float v6, v6, v28

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v15, v3, :cond_9

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    sub-int v5, v9, v20

    sub-int v5, v5, v17

    sub-int v5, v5, v24

    int-to-float v5, v5

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "bpaint":Landroid/graphics/Paint;
    .end local v8    # "color":I
    .end local v9    # "h":I
    .end local v15    # "len":I
    .end local v16    # "paint":Landroid/graphics/Paint;
    .end local v17    # "pb":I
    .end local v18    # "pl":I
    .end local v19    # "pr":I
    .end local v20    # "pt":I
    .end local v21    # "rect":Landroid/graphics/Rect;
    .end local v22    # "rectF":Landroid/graphics/RectF;
    .end local v24    # "th":I
    .end local v25    # "tpaint":Landroid/graphics/Paint;
    .end local v27    # "w":I
    :cond_5
    :goto_2
    return-void

    .line 111
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "color":I
    .restart local v9    # "h":I
    .restart local v11    # "img":Landroid/graphics/Bitmap;
    .restart local v12    # "imgRect":Landroid/graphics/Rect;
    .restart local v13    # "iratio":F
    .restart local v16    # "paint":Landroid/graphics/Paint;
    .restart local v17    # "pb":I
    .restart local v18    # "pl":I
    .restart local v19    # "pr":I
    .restart local v20    # "pt":I
    .restart local v21    # "rect":Landroid/graphics/Rect;
    .restart local v22    # "rectF":Landroid/graphics/RectF;
    .restart local v26    # "vratio":F
    .restart local v27    # "w":I
    :cond_6
    cmpg-float v3, v26, v13

    if-lez v3, :cond_2

    .line 115
    :cond_7
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v14, v3, v4

    .line 116
    .local v14, "iw":F
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "imgRect":Landroid/graphics/Rect;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v14, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v12, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v12    # "imgRect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 121
    .end local v11    # "img":Landroid/graphics/Bitmap;
    .end local v12    # "imgRect":Landroid/graphics/Rect;
    .end local v13    # "iratio":F
    .end local v14    # "iw":F
    .end local v26    # "vratio":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->image:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    sub-int v6, v27, v19

    sub-int v6, v6, v18

    sub-int v28, v9, v17

    sub-int v28, v28, v20

    move/from16 v0, v28

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 151
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "color":I
    .end local v9    # "h":I
    .end local v16    # "paint":Landroid/graphics/Paint;
    .end local v17    # "pb":I
    .end local v18    # "pl":I
    .end local v19    # "pr":I
    .end local v20    # "pt":I
    .end local v21    # "rect":Landroid/graphics/Rect;
    .end local v22    # "rectF":Landroid/graphics/RectF;
    .end local v27    # "w":I
    :catch_0
    move-exception v23

    .line 152
    .local v23, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    goto :goto_2

    .line 149
    .end local v23    # "t":Ljava/lang/Throwable;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v7    # "bpaint":Landroid/graphics/Paint;
    .restart local v8    # "color":I
    .restart local v9    # "h":I
    .restart local v15    # "len":I
    .restart local v16    # "paint":Landroid/graphics/Paint;
    .restart local v17    # "pb":I
    .restart local v18    # "pl":I
    .restart local v19    # "pr":I
    .restart local v20    # "pt":I
    .restart local v21    # "rect":Landroid/graphics/Rect;
    .restart local v22    # "rectF":Landroid/graphics/RectF;
    .restart local v24    # "th":I
    .restart local v25    # "tpaint":Landroid/graphics/Paint;
    .restart local v27    # "w":I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    sub-int v4, v27, v18

    sub-int v4, v4, v19

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-int v5, v9, v20

    sub-int v5, v5, v17

    sub-int v5, v5, v24

    int-to-float v5, v5

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/vkontakte/android/BitmapHack;->unhackBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getWidth()I

    move-result v5

    .local v5, "w":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getHeight()I

    move-result v0

    .local v0, "h":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getPaddingRight()I

    move-result v3

    .local v3, "pr":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getPaddingLeft()I

    move-result v2

    .local v2, "pl":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getPaddingTop()I

    move-result v4

    .local v4, "pt":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getPaddingBottom()I

    move-result v1

    .line 159
    .local v1, "pb":I
    iget-object v6, p0, Lcom/vkontakte/android/ui/RoundedImageView;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 160
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/RoundedImageView;->needRecreateBitmap:Z

    if-eqz v6, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/vkontakte/android/ui/RoundedImageView;->recreateBitmap()V

    .line 162
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vkontakte/android/ui/RoundedImageView;->needRecreateBitmap:Z

    .line 164
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 165
    iget-object v6, p0, Lcom/vkontakte/android/ui/RoundedImageView;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v7, v2

    int-to-float v8, v4

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    :cond_1
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1, "r"    # I

    .prologue
    .line 69
    int-to-float v0, p1

    iput v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->cornerRadius:F

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->needRecreateBitmap:Z

    .line 71
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->image:Landroid/graphics/drawable/Drawable;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->needRecreateBitmap:Z

    .line 65
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RoundedImageView;->invalidate()V

    .line 66
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method public setOverlay(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "overlay"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->overlay:Landroid/graphics/Bitmap;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->needRecreateBitmap:Z

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vkontakte/android/ui/RoundedImageView;->title:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/RoundedImageView;->needRecreateBitmap:Z

    .line 81
    return-void
.end method
