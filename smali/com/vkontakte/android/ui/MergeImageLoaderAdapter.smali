.class public Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "MergeImageLoaderAdapter.java"


# instance fields
.field private pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/ListImageLoaderAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public getImageCountForItem(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 33
    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 33
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 34
    .local v0, "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v1

    .line 36
    .local v1, "size":I
    if-ge p1, v1, :cond_1

    .line 37
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v2

    goto :goto_1

    .line 40
    :cond_1
    sub-int/2addr p1, v1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 47
    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 47
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 48
    .local v0, "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v1

    .line 50
    .local v1, "size":I
    if-ge p1, v1, :cond_1

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 54
    :cond_1
    sub-int/2addr p1, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 24
    .local v1, "total":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    return v1

    .line 24
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 25
    .local v0, "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    move v0, p1

    .line 62
    .local v0, "_pos":I
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    :goto_1
    return-void

    .line 62
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 63
    .local v1, "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v2

    .line 65
    .local v2, "size":I
    if-ge p1, v2, :cond_1

    .line 67
    invoke-virtual {v1, v0, p2, p3}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    goto :goto_1

    .line 71
    :cond_1
    sub-int/2addr p1, v2

    goto :goto_0
.end method
