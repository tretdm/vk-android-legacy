.class public Lcom/vkontakte/android/ui/FixedScrollListView;
.super Landroid/widget/ListView;
.source "FixedScrollListView.java"


# static fields
.field private static final SCROLLBAR_SIZE:I = 0xc8


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 28
    const/16 v0, 0xc8

    .line 30
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 5

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x64

    .line 35
    .local v0, "maxscroll":I
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 36
    .local v1, "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 37
    .local v2, "scp":F
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    add-int/lit16 v3, v3, -0xc8

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    return v3
.end method
