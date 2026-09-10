.class public Lcom/vkontakte/android/ui/FixedRelativeLayout;
.super Lcom/vkontakte/android/HLRelativeLayout;
.source "FixedRelativeLayout.java"


# instance fields
.field private allowResize:Z

.field private h:I

.field private lastPressed:J

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/vkontakte/android/HLRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/HLRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    .line 20
    return-void
.end method


# virtual methods
.method public allowResize()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    .line 39
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/HLRelativeLayout;->onMeasure(II)V

    .line 29
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->w:I

    .line 30
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->h:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize:Z

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->w:I

    iget v1, p0, Lcom/vkontakte/android/ui/FixedRelativeLayout;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->setMeasuredDimension(II)V

    goto :goto_0
.end method
