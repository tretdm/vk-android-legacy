.class public Lcom/vkontakte/android/ui/MergeAdapter;
.super Landroid/widget/BaseAdapter;
.source "MergeAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/MergeAdapter$1;,
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
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/MergeAdapter$CascadeDataSetObserver;-><init>(Lcom/vkontakte/android/ui/MergeAdapter;Lcom/vkontakte/android/ui/MergeAdapter$1;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 43
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter(I)Landroid/widget/ListAdapter;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 77
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 79
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 86
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return-object v1

    .line 83
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 84
    goto :goto_0

    .line 86
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAdapterAt(I)Landroid/widget/ListAdapter;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "total":I
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 96
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 99
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    :cond_0
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 100
    const/4 v2, 0x1

    .line 103
    :cond_1
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 53
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 55
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 56
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 62
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return-object v3

    .line 59
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 60
    goto :goto_0

    .line 62
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 219
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 220
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 222
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 223
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 229
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return-wide v3

    .line 226
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 227
    goto :goto_0

    .line 229
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 130
    const/4 v4, 0x0

    .line 131
    .local v4, "typeOffset":I
    const/4 v2, -0x1

    .line 133
    .local v2, "result":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 134
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 136
    .local v3, "size":I
    if-ge p1, v3, :cond_1

    .line 137
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    add-int v2, v4, v5

    .line 147
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v3    # "size":I
    :cond_0
    return v2

    .line 141
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v3    # "size":I
    :cond_1
    sub-int/2addr p1, v3

    .line 142
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 143
    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 6
    .param p1, "section"    # I

    .prologue
    .line 233
    const/4 v3, 0x0

    .line 235
    .local v3, "position":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 236
    .local v2, "piece":Landroid/widget/ListAdapter;
    instance-of v5, v2, Landroid/widget/SectionIndexer;

    if-eqz v5, :cond_2

    move-object v5, v2

    .line 237
    check-cast v5, Landroid/widget/SectionIndexer;

    invoke-interface {v5}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v4

    .line 238
    .local v4, "sections":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 240
    .local v1, "numSections":I
    if-eqz v4, :cond_0

    .line 241
    array-length v1, v4

    .line 244
    :cond_0
    if-ge p1, v1, :cond_1

    .line 245
    check-cast v2, Landroid/widget/SectionIndexer;

    .end local v2    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v2, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    add-int/2addr v5, v3

    .line 255
    .end local v1    # "numSections":I
    .end local v4    # "sections":[Ljava/lang/Object;
    :goto_1
    return v5

    .line 247
    .restart local v1    # "numSections":I
    .restart local v2    # "piece":Landroid/widget/ListAdapter;
    .restart local v4    # "sections":[Ljava/lang/Object;
    :cond_1
    if-eqz v4, :cond_2

    .line 248
    sub-int/2addr p1, v1

    .line 252
    .end local v1    # "numSections":I
    .end local v4    # "sections":[Ljava/lang/Object;
    :cond_2
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 255
    .end local v2    # "piece":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 259
    const/4 v2, 0x0

    .line 261
    .local v2, "section":I
    iget-object v6, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 262
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 264
    .local v4, "size":I
    if-ge p1, v4, :cond_1

    .line 265
    instance-of v6, v1, Landroid/widget/SectionIndexer;

    if-eqz v6, :cond_0

    .line 266
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 284
    .end local v4    # "size":I
    :cond_0
    return v5

    .line 272
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v4    # "size":I
    :cond_1
    instance-of v6, v1, Landroid/widget/SectionIndexer;

    if-eqz v6, :cond_2

    .line 273
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    .line 275
    .local v3, "sections":[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 276
    array-length v6, v3

    add-int/2addr v2, v6

    .line 281
    .end local v3    # "sections":[Ljava/lang/Object;
    :cond_2
    sub-int/2addr p1, v4

    .line 282
    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 9

    .prologue
    .line 288
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v7, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    .line 291
    .local v5, "piece":Landroid/widget/ListAdapter;
    instance-of v8, v5, Landroid/widget/SectionIndexer;

    if-eqz v8, :cond_0

    .line 292
    check-cast v5, Landroid/widget/SectionIndexer;

    .end local v5    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v5}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    .line 294
    .local v1, "curSections":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 295
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 296
    .local v6, "section":Ljava/lang/Object;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "curSections":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "section":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 303
    const/4 v8, 0x0

    .line 306
    :goto_1
    return-object v8

    :cond_2
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 192
    iget-object v4, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 193
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 195
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 197
    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 209
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return-object v3

    .line 200
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 201
    goto :goto_0

    .line 203
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 204
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 205
    .local v3, "text":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/vkontakte/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 209
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, "total":I
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 114
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 117
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 167
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 168
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 170
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 171
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    .line 177
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return v3

    .line 174
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 175
    goto :goto_0

    .line 177
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setNoItemsText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/ui/MergeAdapter;->noItemsText:Ljava/lang/String;

    .line 67
    return-void
.end method
