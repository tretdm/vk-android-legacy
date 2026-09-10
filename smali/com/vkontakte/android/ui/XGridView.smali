.class public Lcom/vkontakte/android/ui/XGridView;
.super Landroid/widget/GridView;
.source "XGridView.java"


# instance fields
.field public overrideScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/XGridView;->overrideScroll:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/XGridView;->overrideScroll:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/XGridView;->overrideScroll:Z

    .line 24
    return-void
.end method


# virtual methods
.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/XGridView;->overrideScroll:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 29
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollExtent()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 31
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 3

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/XGridView;->overrideScroll:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 37
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollRange()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3cf5c28f    # 0.03f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->computeVerticalScrollOffset()I

    move-result v0

    goto :goto_0
.end method
