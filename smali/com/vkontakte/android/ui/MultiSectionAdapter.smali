.class public abstract Lcom/vkontakte/android/ui/MultiSectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSectionAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private getSectionHeaderView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "t":Landroid/widget/TextView;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->setHeaderStyle(Landroid/widget/TextView;)V

    .line 43
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionCount()I

    move-result v2

    .line 60
    .local v2, "ns":I
    const/4 v0, 0x0

    .line 61
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 67
    return v0

    .line 62
    :cond_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->isSectionHeaderVisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getItemCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItemCount(I)I
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 78
    .local v0, "idx":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getItemId(II)J

    move-result-wide v1

    return-wide v1
.end method

.method public abstract getItemId(II)J
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 95
    .local v0, "s":[I
    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    aget v2, v0, v2

    aget v1, v0, v1

    invoke-virtual {p0, v2, v1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getItemViewType(II)I

    move-result v1

    goto :goto_0
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSectionCount()I
.end method

.method public abstract getSectionTitle(I)Ljava/lang/String;
.end method

.method public abstract getView(IILandroid/view/View;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 84
    .local v0, "idx":[I
    aget v1, v0, v4

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 85
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionHeaderView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p2

    :cond_1
    move-object v1, p2

    .line 86
    check-cast v1, Landroid/widget/TextView;

    aget v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p2

    .line 89
    :goto_0
    return-object v1

    :cond_2
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2, p2}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getView(IILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getExtraViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v1

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isSectionHeaderVisible(I)Z
.end method

.method public resolveIndex(I)[I
    .locals 8
    .param p1, "item"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 16
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 17
    .local v4, "result":[I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionCount()I

    move-result v2

    .line 18
    .local v2, "ns":I
    const/4 v1, 0x0

    .line 19
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 37
    :goto_1
    return-object v4

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->isSectionHeaderVisible(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 21
    if-ne v1, p1, :cond_1

    .line 22
    aput v0, v4, v6

    .line 23
    const/4 v5, -0x1

    aput v5, v4, v7

    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    :cond_2
    move v3, v1

    .line 29
    .local v3, "prevIdx":I
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getItemCount(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 30
    if-lt p1, v3, :cond_3

    if-ge p1, v1, :cond_3

    if-eq v3, v1, :cond_3

    .line 31
    aput v0, v4, v6

    .line 32
    sub-int v5, p1, v3

    aput v5, v4, v7

    goto :goto_1

    .line 19
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHeaderStyle(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    .line 47
    const v1, 0x7f020021

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    const v1, -0x888889

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51
    const v1, 0x322bcc77    # 1.0E-8f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 52
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    .line 53
    .local v0, "padding":I
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 54
    sget-object v1, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    return-void
.end method
