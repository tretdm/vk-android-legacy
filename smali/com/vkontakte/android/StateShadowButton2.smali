.class public Lcom/vkontakte/android/StateShadowButton2;
.super Landroid/widget/Button;
.source "StateShadowButton2.java"


# instance fields
.field wasPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowButton2;->wasPressed:Z

    .line 16
    const v0, 0x7f0201ba

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StateShadowButton2;->setBackgroundResource(I)V

    .line 17
    const v0, -0xa88e6a

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StateShadowButton2;->setTextColor(I)V

    .line 18
    const v0, 0x358637bd    # 1.0E-6f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vkontakte/android/StateShadowButton2;->setShadowLayer(FFFI)V

    .line 19
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StateShadowButton2;->setTextSize(F)V

    .line 20
    invoke-virtual {p0}, Lcom/vkontakte/android/StateShadowButton2;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StateShadowButton2;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowButton2;->wasPressed:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowButton2;->wasPressed:Z

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x358637bd    # 1.0E-6f

    const/4 v2, 0x0

    .line 33
    iget-boolean v0, p0, Lcom/vkontakte/android/StateShadowButton2;->wasPressed:Z

    invoke-virtual {p0}, Lcom/vkontakte/android/StateShadowButton2;->isPressed()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/vkontakte/android/StateShadowButton2;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const v0, -0x19150f

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/vkontakte/android/StateShadowButton2;->setShadowLayer(FFFI)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowButton2;->wasPressed:Z

    .line 42
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    return-void

    .line 38
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/vkontakte/android/StateShadowButton2;->setShadowLayer(FFFI)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowButton2;->wasPressed:Z

    goto :goto_0
.end method
