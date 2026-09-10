.class public abstract Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "MultiSectionImageLoaderAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method private resolveIndex(I)[I
    .locals 8
    .param p1, "item"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 11
    .local v4, "result":[I
    invoke-virtual {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->getSectionCount()I

    move-result v2

    .line 12
    .local v2, "ns":I
    const/4 v1, 0x0

    .line 13
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 31
    :goto_1
    return-object v4

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->isSectionHeaderVisible(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    if-ne v1, p1, :cond_1

    .line 16
    aput v0, v4, v6

    .line 17
    const/4 v5, -0x1

    aput v5, v4, v7

    goto :goto_1

    .line 20
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 22
    :cond_2
    move v3, v1

    .line 23
    .local v3, "prevIdx":I
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->getItemCount(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 24
    if-lt p1, v3, :cond_3

    if-ge p1, v1, :cond_3

    if-eq v3, v1, :cond_3

    .line 25
    aput v0, v4, v6

    .line 26
    sub-int v5, p1, v3

    aput v5, v4, v7

    goto :goto_1

    .line 13
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 48
    .local v0, "s":[I
    aget v2, v0, v4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 49
    :goto_0
    return v1

    :cond_0
    aget v1, v0, v1

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->getImageCountForItem(II)I

    move-result v1

    goto :goto_0
.end method

.method public abstract getImageCountForItem(II)I
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 55
    .local v0, "s":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2, p2}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->getImageURL(III)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getImageURL(III)Ljava/lang/String;
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->getSectionCount()I

    move-result v2

    .line 37
    .local v2, "ns":I
    const/4 v0, 0x0

    .line 38
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 42
    return v0

    .line 39
    :cond_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->isSectionHeaderVisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 40
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->getItemCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract getItemCount(I)I
.end method

.method public abstract getSectionCount()I
.end method

.method public getSectionHeadersCount()I
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, "c":I
    invoke-virtual {p0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->getSectionCount()I

    move-result v2

    .line 66
    .local v2, "sc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 67
    return v0

    .line 66
    :cond_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->isSectionHeaderVisible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public imageLoaded(IIILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "section"    # I
    .param p2, "item"    # I
    .param p3, "image"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    return-void
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 61
    .local v0, "s":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->imageLoaded(IIILandroid/graphics/Bitmap;)V

    .line 62
    return-void
.end method

.method public abstract isSectionHeaderVisible(I)Z
.end method
