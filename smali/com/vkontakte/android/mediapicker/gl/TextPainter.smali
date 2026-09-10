.class public Lcom/vkontakte/android/mediapicker/gl/TextPainter;
.super Ljava/lang/Object;
.source "TextPainter.java"


# static fields
.field private static final TEXT_OFFSET_RATIO:F = 0.065f

.field private static final TEXT_RATIO:F = 0.068f

.field private static final TEXT_ROW_RATIO:F = 0.009f

.field private static final TEXT_WIDTH_RATIO:F = 0.95f

.field private static gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private static lobsterPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawLobster(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/mediapicker/entries/StyleEntry;)V
    .locals 8
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "style"    # Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .prologue
    .line 93
    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 96
    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->drawLobsterParts(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/mediapicker/entries/StyleEntry;)V

    goto :goto_0
.end method

.method public static drawLobsterForBitmap(Landroid/graphics/Canvas;IILcom/vkontakte/android/mediapicker/entries/StyleEntry;)V
    .locals 8
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "style"    # Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .prologue
    .line 87
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v3, v0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p2

    move v6, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->drawLobsterParts(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/mediapicker/entries/StyleEntry;)V

    .line 89
    :cond_0
    return-void
.end method

.method private static drawLobsterParts(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/mediapicker/entries/StyleEntry;)V
    .locals 18
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "style"    # Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .prologue
    .line 56
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3d8b4396    # 0.068f

    mul-float v8, v13, v14

    .line 57
    .local v8, "textSize":F
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3c1374bc    # 0.009f

    mul-float/2addr v13, v14

    add-float v7, v8, v13

    .line 59
    .local v7, "rowHeight":F
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->getLobsterPainter()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 60
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->getLobsterPainter()Landroid/text/TextPaint;

    move-result-object v13

    const v14, 0x40333333    # 2.8f

    const v15, 0x3fb33333    # 1.4f

    const v16, 0x3fe66666    # 1.8f

    const/high16 v17, -0x26000000

    invoke-virtual/range {v13 .. v17}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 63
    move/from16 v0, p1

    int-to-float v13, v0

    const v14, 0x3f733333    # 0.95f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->getLobsterPainter()Landroid/text/TextPaint;

    move-result-object v14

    move-object/from16 v0, p7

    invoke-virtual {v0, v13, v14}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->splitLinesByWidth(ILandroid/text/TextPaint;)Ljava/util/List;

    move-result-object v12

    .line 64
    .local v12, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    .line 65
    .local v6, "lines":I
    move/from16 v0, p4

    int-to-float v13, v0

    move/from16 v0, p2

    int-to-float v14, v0

    const v15, 0x3d851eb8    # 0.065f

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    int-to-float v14, v6

    mul-float/2addr v14, v7

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f400000    # 0.75f

    mul-float/2addr v14, v7

    sub-float/2addr v13, v14

    float-to-int v10, v13

    .line 67
    .local v10, "top":I
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p4

    invoke-virtual {v13, v0, v10, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 68
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    move/from16 v0, p2

    int-to-float v13, v0

    const v14, 0x3d851eb8    # 0.065f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    sub-int p4, p4, v13

    .line 73
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_0

    .line 75
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 76
    .local v11, "word":Ljava/lang/String;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->getLobsterPainter()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 78
    .local v9, "textWidth":F
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v9, v13

    float-to-int v13, v13

    sub-int v3, p3, v13

    .line 79
    .local v3, "drawX":I
    move/from16 v0, p4

    int-to-float v13, v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    sub-int/2addr v14, v5

    int-to-float v14, v14

    mul-float/2addr v14, v7

    sub-float/2addr v13, v14

    float-to-int v4, v13

    .line 81
    .local v4, "drawY":I
    int-to-float v13, v3

    int-to-float v14, v4

    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->getLobsterPainter()Landroid/text/TextPaint;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "drawX":I
    .end local v4    # "drawY":I
    .end local v9    # "textWidth":F
    .end local v11    # "word":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    sput-object v0, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 51
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    .line 48
    :array_0
    .array-data 4
        -0x67000000
        0x0
    .end array-data
.end method

.method private static getLobsterPainter()Landroid/text/TextPaint;
    .locals 2

    .prologue
    .line 29
    sget-object v1, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->lobsterPaint:Landroid/text/TextPaint;

    if-nez v1, :cond_0

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 34
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getLobsterTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 38
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sput-object v1, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->lobsterPaint:Landroid/text/TextPaint;

    .line 41
    :cond_0
    sget-object v1, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->lobsterPaint:Landroid/text/TextPaint;

    return-object v1
.end method
