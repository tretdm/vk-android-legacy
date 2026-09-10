.class Lcom/vkontakte/android/MainActivity$CounterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterDrawable"
.end annotation


# instance fields
.field private bg:Landroid/graphics/drawable/Drawable;

.field private bgPad:Landroid/graphics/Rect;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private paint:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkontakte/android/MainActivity;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/MainActivity;)V
    .locals 2

    .prologue
    .line 522
    iput-object p1, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 518
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bgPad:Landroid/graphics/Rect;

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->text:Ljava/lang/String;

    .line 523
    invoke-virtual {p1}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bg:Landroid/graphics/drawable/Drawable;

    .line 524
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bgPad:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 525
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->paint:Landroid/graphics/Paint;

    .line 526
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 527
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 528
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0xc09869

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    invoke-virtual {p1}, Lcom/vkontakte/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->icon:Landroid/graphics/drawable/Drawable;

    .line 531
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 546
    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 547
    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 548
    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 549
    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 550
    .local v2, "tw":F
    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bgPad:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v4, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bgPad:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 551
    .local v1, "fullW":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v0, v3, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 552
    .local v0, "bnds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 553
    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 554
    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->text:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bgPad:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    neg-float v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 556
    .end local v0    # "bnds":Landroid/graphics/Rect;
    .end local v1    # "fullW":I
    .end local v2    # "tw":F
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 4

    .prologue
    .line 534
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->text:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 537
    :goto_0
    return v2

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 536
    .local v1, "tw":F
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bgPad:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->bgPad:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 537
    .local v0, "fullW":I
    iget-object v2, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 564
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 567
    return-void
.end method

.method public setCount(I)V
    .locals 2
    .param p1, "cnt"    # I

    .prologue
    const/16 v0, 0x3e8

    .line 570
    if-gtz p1, :cond_1

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->text:Ljava/lang/String;

    .line 577
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/MainActivity$CounterDrawable;->invalidateSelf()V

    .line 578
    return-void

    .line 572
    :cond_1
    if-ge p1, v0, :cond_2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->text:Ljava/lang/String;

    goto :goto_0

    .line 574
    :cond_2
    if-lt p1, v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit16 v1, p1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/MainActivity$CounterDrawable;->text:Ljava/lang/String;

    goto :goto_0
.end method
