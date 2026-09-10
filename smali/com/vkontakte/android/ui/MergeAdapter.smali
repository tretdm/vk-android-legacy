.class public Lcom/vkontakte/android/ui/MergeAdapter;
.super Landroid/widget/BaseAdapter;
.source "MergeAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;
    }
.end annotation


# instance fields
.field protected noItemsText:Ljava/lang/String;

.field protected pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;-><init>(Lcom/vkontakte/android/ui/MergeAdapter;Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 44
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter(I)Landroid/widget/ListAdapter;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 77
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 78
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 80
    .local v1, "size":I
    if-lt p1, v1, :cond_0

    .line 84
    sub-int/2addr p1, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "total":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 104
    :cond_0
    return v1

    .line 96
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 97
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 53
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 54
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 56
    .local v1, "size":I
    if-ge p1, v1, :cond_1

    .line 57
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 60
    :cond_1
    sub-int/2addr p1, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 220
    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    const-wide/16 v2, -0x1

    :goto_1
    return-wide v2

    .line 220
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 221
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 223
    .local v1, "size":I
    if-ge p1, v1, :cond_1

    .line 224
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_1

    .line 227
    :cond_1
    sub-int/2addr p1, v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, "typeOffset":I
    const/4 v1, -0x1

    .line 134
    .local v1, "result":I
    iget-object v4, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    :goto_1
    return v1

    .line 134
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 135
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 137
    .local v2, "size":I
    if-ge p1, v2, :cond_1

    .line 138
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    add-int v1, v3, v4

    .line 139
    goto :goto_1

    .line 142
    :cond_1
    sub-int/2addr p1, v2

    .line 143
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 6
    .param p1, "section"    # I

    .prologue
    .line 234
    const/4 v2, 0x0

    .line 236
    .local v2, "position":I
    iget-object v4, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 236
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 237
    .local v1, "piece":Landroid/widget/ListAdapter;
    instance-of v4, v1, Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_3

    move-object v4, v1

    .line 238
    check-cast v4, Landroid/widget/SectionIndexer;

    invoke-interface {v4}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    .line 239
    .local v3, "sections":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 241
    .local v0, "numSections":I
    if-eqz v3, :cond_1

    .line 242
    array-length v0, v3

    .line 245
    :cond_1
    if-ge p1, v0, :cond_2

    .line 246
    check-cast v1, Landroid/widget/SectionIndexer;

    .line 247
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v4

    .line 246
    add-int/2addr v4, v2

    goto :goto_1

    .line 248
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    :cond_2
    if-eqz v3, :cond_3

    .line 249
    sub-int/2addr p1, v0

    .line 253
    .end local v0    # "numSections":I
    .end local v3    # "sections":[Ljava/lang/Object;
    :cond_3
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "section":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 285
    :cond_0
    :goto_1
    return v4

    .line 262
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 263
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 265
    .local v3, "size":I
    if-ge p1, v3, :cond_2

    .line 266
    instance-of v5, v0, Landroid/widget/SectionIndexer;

    if-eqz v5, :cond_0

    .line 267
    check-cast v0, Landroid/widget/SectionIndexer;

    .line 268
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    .line 267
    add-int/2addr v4, v1

    goto :goto_1

    .line 273
    .restart local v0    # "piece":Landroid/widget/ListAdapter;
    :cond_2
    instance-of v6, v0, Landroid/widget/SectionIndexer;

    if-eqz v6, :cond_3

    .line 274
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    .line 276
    .local v2, "sections":[Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 277
    array-length v6, v2

    add-int/2addr v1, v6

    .line 282
    .end local v2    # "sections":[Ljava/lang/Object;
    :cond_3
    sub-int/2addr p1, v3

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 289
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v3, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 303
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 304
    const/4 v4, 0x0

    .line 307
    :goto_0
    return-object v4

    .line 291
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 292
    .local v1, "piece":Landroid/widget/ListAdapter;
    instance-of v4, v1, Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_0

    .line 293
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 295
    .local v0, "curSections":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 296
    array-length v7, v0

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v2, v0, v4

    .line 297
    .local v2, "section":Ljava/lang/Object;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 307
    .end local v0    # "curSections":[Ljava/lang/Object;
    .end local v2    # "section":Ljava/lang/Object;
    :cond_2
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 193
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 204
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 205
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v2, "text":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_1
    return-object v2

    .line 193
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 194
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 196
    .local v1, "size":I
    if-ge p1, v1, :cond_1

    .line 198
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 201
    :cond_1
    sub-int/2addr p1, v1

    goto :goto_0

    .line 210
    .end local v0    # "piece":Landroid/widget/ListAdapter;
    .end local v1    # "size":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "total":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 114
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 115
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 168
    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 168
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 169
    .local v0, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 171
    .local v1, "size":I
    if-ge p1, v1, :cond_1

    .line 172
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    goto :goto_1

    .line 175
    :cond_1
    sub-int/2addr p1, v1

    goto :goto_0
.end method

.method public setNoItemsText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    .line 68
    return-void
.end method
