.class public Lcom/vkontakte/android/HLLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HLLinearLayout.java"


# instance fields
.field lastPressed:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/HLLinearLayout;->lastPressed:J

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/HLLinearLayout;->lastPressed:J

    .line 19
    return-void
.end method


# virtual methods
.method public deselect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 36
    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/HLLinearLayout;->lastPressed:J

    .line 38
    invoke-virtual {p0}, Lcom/vkontakte/android/HLLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/vkontakte/android/HLLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/HighlightDrawable;->setSel(Z)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/HLLinearLayout;->invalidate()V

    .line 42
    return-void
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "p"    # Z

    .prologue
    .line 29
    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/HLLinearLayout;->lastPressed:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/vkontakte/android/HLLinearLayout;->invalidate()V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/vkontakte/android/HLLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/HLLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0
.end method
