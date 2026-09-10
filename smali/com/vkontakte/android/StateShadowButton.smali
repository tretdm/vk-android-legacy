.class public Lcom/vkontakte/android/StateShadowButton;
.super Landroid/widget/Button;
.source "StateShadowButton.java"


# instance fields
.field wasEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowButton;->wasEnabled:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StateShadowButton;->wasEnabled:Z

    .line 19
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 4
    .param p1, "e"    # Z

    .prologue
    .line 22
    const v1, 0x358637bd    # 1.0E-6f

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    const v0, -0xddaf73

    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/vkontakte/android/StateShadowButton;->setShadowLayer(FFFI)V

    .line 23
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 24
    return-void

    .line 22
    :cond_0
    const v0, -0x7fddaf73

    goto :goto_0
.end method
