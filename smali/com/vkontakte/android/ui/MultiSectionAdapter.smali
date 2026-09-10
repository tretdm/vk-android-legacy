.class public abstract Lcom/vkontakte/android/ui/MultiSectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSectionAdapter.java"

# interfaces
.implements Lcom/vkontakte/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;


# instance fields
.field private headerViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method private getSectionHeaderView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    .local v0, "t":Landroid/widget/TextView;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->setHeaderStyle(Landroid/widget/TextView;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionCount()I

    move-result v2

    .line 74
    .local v2, "ns":I
    const/4 v0, 0x0

    .line 75
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 81
    return v0

    .line 76
    :cond_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->isSectionHeaderVisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getItemCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 87
    .local v0, "idx":[I
    aget v1, v0, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    aget v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItemCount(I)I
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 98
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

    .line 115
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 116
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
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSectionCount()I
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "section"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 168
    iget-object v5, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    iget-object v5, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 197
    :goto_0
    return-object v5

    .line 171
    :cond_0
    const/4 v4, 0x0

    .line 172
    .local v4, "view":Landroid/widget/TextView;
    if-nez p2, :cond_3

    .line 173
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionHeaderView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    .line 174
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 175
    .local v2, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .end local v2    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_1
    if-eqz p2, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p2, :cond_2

    .line 181
    iget-object v5, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 182
    .local v1, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 193
    .end local v1    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionTitle(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "title":Ljava/lang/String;
    :goto_3
    move-object v5, v4

    .line 197
    goto :goto_0

    :cond_3
    move-object v4, p2

    .line 177
    check-cast v4, Landroid/widget/TextView;

    goto :goto_1

    .line 182
    .restart local v1    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 183
    .local v0, "i":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p2, :cond_1

    .line 184
    add-int/lit8 v5, p1, -0x1

    if-eq v0, v5, :cond_5

    add-int/lit8 v5, p1, 0x8

    if-gt v0, v5, :cond_6

    .line 185
    :cond_5
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionHeaderView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    .line 186
    goto :goto_2

    .line 188
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 196
    .end local v0    # "i":I
    .end local v1    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    goto :goto_3
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

    .line 103
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 104
    .local v0, "idx":[I
    aget v1, v0, v4

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 108
    aget v1, v0, v3

    invoke-virtual {p0, v1, p2, p3}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    :cond_0
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2, p2}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getView(IILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getExtraViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 132
    .local v0, "idx":[I
    aget v2, v0, v4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 134
    :goto_0
    return v1

    :cond_0
    aget v1, v0, v1

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->isEnabled(II)Z

    move-result v1

    goto :goto_0
.end method

.method public isEnabled(II)Z
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeader(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v1

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isSectionHeaderVisible(I)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 25
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 26
    return-void
.end method

.method public resolveIndex(I)[I
    .locals 8
    .param p1, "item"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 29
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 30
    .local v4, "result":[I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getSectionCount()I

    move-result v2

    .line 31
    .local v2, "ns":I
    const/4 v1, 0x0

    .line 32
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 50
    :goto_1
    return-object v4

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->isSectionHeaderVisible(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 34
    if-ne v1, p1, :cond_1

    .line 35
    aput v0, v4, v6

    .line 36
    const/4 v5, -0x1

    aput v5, v4, v7

    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    :cond_2
    move v3, v1

    .line 42
    .local v3, "prevIdx":I
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->getItemCount(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 43
    if-lt p1, v3, :cond_3

    if-ge p1, v1, :cond_3

    if-eq v3, v1, :cond_3

    .line 44
    aput v0, v4, v6

    .line 45
    sub-int v5, p1, v3

    aput v5, v4, v7

    goto :goto_1

    .line 32
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHeaderStyle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    .line 69
    return-void
.end method
