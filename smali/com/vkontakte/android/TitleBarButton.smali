.class public Lcom/vkontakte/android/TitleBarButton;
.super Landroid/widget/Button;
.source "TitleBarButton.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field iconID:I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_text"    # Ljava/lang/String;
    .param p3, "_iconID"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const/4 v6, 0x0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 19
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p0}, Lcom/vkontakte/android/TitleBarButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 22
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TitleBarButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    const v2, 0x358637bd    # 1.0E-6f

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x1000000

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/vkontakte/android/TitleBarButton;->setShadowLayer(FFFI)V

    .line 24
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/TitleBarButton;->setTextColor(I)V

    .line 25
    invoke-virtual {p0}, Lcom/vkontakte/android/TitleBarButton;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/TitleBarButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/TitleBarButton;->setTextSize(F)V

    .line 27
    iput-object p2, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/vkontakte/android/TitleBarButton;->iconID:I

    .line 29
    iget-object v2, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/vkontakte/android/TitleBarButton;->iconID:I

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "<img src=\'icon\'/>"

    invoke-static {v2, p0, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/TitleBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :goto_0
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v2, v2

    mul-double/2addr v2, v7

    double-to-int v2, v2

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v3, v3

    mul-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v2, v6, v3, v6}, Lcom/vkontakte/android/TitleBarButton;->setPadding(IIII)V

    .line 39
    const/high16 v2, 0x421c0000    # 39.0f

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/TitleBarButton;->setMinWidth(I)V

    .line 40
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/vkontakte/android/TitleBarButton;->iconID:I

    if-nez v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/TitleBarButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/vkontakte/android/TitleBarButton;->iconID:I

    if-eqz v2, :cond_2

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<img src=\'icon\'/> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/TitleBarButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "icon=null & text=null. WTF?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/TitleBarButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/TitleBarButton;->iconID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 45
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    return-object v0
.end method

.method public setActiveBG()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/TitleBarButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TitleBarButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public setBtnText(Ljava/lang/String;)V
    .locals 3
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/TitleBarButton;->iconID:I

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "<img src=\'icon\'/>"

    invoke-static {v0, p0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TitleBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/TitleBarButton;->iconID:I

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TitleBarButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/TitleBarButton;->iconID:I

    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<img src=\'icon\'/> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vkontakte/android/TitleBarButton;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TitleBarButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "icon=null & text=null. WTF?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "e"    # Z

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 55
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/TitleBarButton;->setTextColor(I)V

    .line 57
    return-void

    .line 55
    :cond_0
    const v0, -0x7f000001

    goto :goto_0
.end method
