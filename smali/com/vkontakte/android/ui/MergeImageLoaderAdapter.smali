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
    .line 11
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public getImageCountForItem(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 33
    .local v1, "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v2

    .line 35
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 36
    invoke-virtual {v1, p1}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v3

    .line 41
    .end local v1    # "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .end local v2    # "size":I
    :goto_1
    return v3

    .line 39
    .restart local v1    # "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 40
    goto :goto_0

    .line 41
    .end local v1    # "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 46
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 47
    .local v1, "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v2

    .line 49
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 50
    invoke-virtual {v1, p1, p2}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v3

    .line 55
    .end local v1    # "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .end local v2    # "size":I
    :goto_1
    return-object v3

    .line 53
    .restart local v1    # "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 54
    goto :goto_0

    .line 55
    .end local v1    # "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    .line 21
    const/4 v2, 0x0

    .line 23
    .local v2, "total":I
    iget-object v3, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 24
    .local v1, "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 27
    .end local v1    # "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    :cond_0
    return v2
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    move v0, p1

    .line 61
    .local v0, "_pos":I
    iget-object v4, p0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 62
    .local v2, "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v3

    .line 64
    .local v3, "size":I
    if-ge p1, v3, :cond_1

    .line 66
    invoke-virtual {v2, v0, p2, p3}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    .line 72
    .end local v2    # "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .end local v3    # "size":I
    :cond_0
    return-void

    .line 70
    .restart local v2    # "piece":Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .restart local v3    # "size":I
    :cond_1
    sub-int/2addr p1, v3

    .line 71
    goto :goto_0
.end method
