.class public Lcom/vkontakte/android/StateShadowTextView;
.super Landroid/widget/TextView;
.source "StateShadowTextView.java"


# instance fields
.field wasPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowTextView;->wasPressed:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowTextView;->wasPressed:Z

    .line 20
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

    .line 24
    iget-boolean v1, p0, Lcom/vkontakte/android/StateShadowTextView;->wasPressed:Z

    invoke-virtual {p0}, Lcom/vkontakte/android/StateShadowTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/vkontakte/android/StateShadowTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const v0, -0xe2c5a5

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/vkontakte/android/StateShadowTextView;->setShadowLayer(FFFI)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowTextView;->wasPressed:Z

    .line 33
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    return-void

    .line 29
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v3, v2, v4, v0}, Lcom/vkontakte/android/StateShadowTextView;->setShadowLayer(FFFI)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowTextView;->wasPressed:Z

    goto :goto_0
.end method
