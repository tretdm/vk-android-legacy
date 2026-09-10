.class public Lcom/vkontakte/android/ui/FixedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "FixedRelativeLayout.java"


# instance fields
.field private allowResize:Z

.field private h:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    .line 22
    return-void
.end method


# virtual methods
.method public allowResize()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    .line 37
    return-void
.end method

.method public deselect()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 53
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 54
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 27
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->w:I

    .line 28
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->h:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->w:I

    iget v1, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->invalidate()V

    .line 49
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    goto :goto_0
.end method
