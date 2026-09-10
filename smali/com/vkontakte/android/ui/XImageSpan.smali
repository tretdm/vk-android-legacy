.class public Lcom/vkontakte/android/ui/XImageSpan;
.super Landroid/text/style/ImageSpan;
.source "XImageSpan.java"


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v5, 0x0

    .line 21
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    .line 23
    .local v2, "sz":I
    if-eqz p5, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v1, v3, v4

    .line 29
    .local v1, "fh":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/XImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 30
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    instance-of v3, v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;

    if-eqz v3, :cond_1

    .line 32
    check-cast v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/Emoji$EmojiDrawable;->setSize(I)V

    .line 35
    .end local v1    # "fh":I
    :goto_0
    return v1

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "fh":I
    :cond_1
    move v1, v2

    goto :goto_0
.end method
