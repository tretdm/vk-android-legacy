.class public Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
.super Ljava/lang/Object;
.source "ImageEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static LastLocalImage:I


# instance fields
.field private bucket_id:Ljava/lang/Integer;

.field private cacheKey:Ljava/lang/String;

.field private cacheKeySmall:Ljava/lang/String;

.field private cropHeight:I

.field private cropWidth:I

.field private data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

.field private image_id:Ljava/lang/Integer;

.field private isChecked:B

.field private isTemp:B

.field private orientation:I

.field private path:Ljava/lang/String;

.field private style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->LastLocalImage:I

    .line 271
    new-instance v0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry$1;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 282
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 2
    .param p1, "bucket_id"    # I
    .param p2, "image_id"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "orientation"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->bucket_id:Ljava/lang/Integer;

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    .line 58
    if-eqz p3, :cond_0

    const-string v0, "file://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "path":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 59
    iput p4, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->orientation:I

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2
    .param p1, "image_id"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    .line 65
    if-eqz p2, :cond_0

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "path":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->orientation:I

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZI)V
    .locals 2
    .param p1, "bucket_id"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isTemp"    # Z
    .param p4, "orientation"    # I

    .prologue
    .line 50
    sget v0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->LastLocalImage:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->LastLocalImage:I

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(IILjava/lang/String;I)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setIsTemp(Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->bucket_id:Ljava/lang/Integer;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->isChecked:B

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropWidth:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropHeight:I

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    invoke-static {p1}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .line 298
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 1
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    .line 36
    iget-object v0, p1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->bucket_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->bucket_id:Ljava/lang/Integer;

    .line 37
    iget v0, p1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->orientation:I

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->orientation:I

    .line 38
    iget-object v0, p1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .line 42
    iget-object v0, p1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .line 44
    iget v0, p1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropWidth:I

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropWidth:I

    .line 45
    iget v0, p1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropHeight:I

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropHeight:I

    .line 46
    return-void
.end method


# virtual methods
.method public checkStyleTopicality()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->removeStyledThumb(Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsStyled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .line 195
    :cond_1
    return-void
.end method

.method public clearImageData()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 341
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->bucket_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCacheKey(Z)Ljava/lang/String;
    .locals 2
    .param p1, "useSmallThumbnail"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cacheKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "styled"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsTemp()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->path:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cacheKey:Ljava/lang/String;

    .line 74
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cacheKey:Ljava/lang/String;

    .line 80
    :goto_2
    return-object v0

    .line 72
    :cond_2
    const-string v0, "local"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    goto :goto_1

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cacheKeySmall:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cacheKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cacheKeySmall:Ljava/lang/String;

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cacheKeySmall:Ljava/lang/String;

    goto :goto_2
.end method

.method public getCropHeight()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropHeight:I

    return v0
.end method

.method public getCropWidth()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropWidth:I

    return v0
.end method

.method public getFilterId()I
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getFilterId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsChecked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 115
    iget-byte v1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->isChecked:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsImageFailed()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->getFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsImageLoaded()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsLoaded()Z
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    return v0
.end method

.method public getIsStyled()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsTemp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 135
    iget-byte v1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->isTemp:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsThumb()Z
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->orientation:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getResultPath()Ljava/lang/String;
    .locals 9

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 182
    :goto_0
    return-object v2

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 150
    .local v2, "res":Ljava/lang/String;
    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    const/4 v4, 0x7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "filter="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getFilterId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "text="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 163
    const-string v0, ""

    .line 165
    .local v0, "cropString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getCropData()[F

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-lt v5, v7, :cond_7

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "crop="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v0    # "cropString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 172
    const-string v4, "enhanced=1"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "image_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "orientation="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsTemp()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 178
    const-string v4, "temp=1"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "impick://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    goto/16 :goto_0

    .line 165
    .restart local v0    # "cropString":Ljava/lang/String;
    :cond_7
    aget v3, v6, v5

    .line 166
    .local v3, "t":F
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    const-string v4, ","

    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_1

    .line 166
    :cond_8
    const-string v4, ""

    goto :goto_2
.end method

.method public getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getStyle(Z)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    return-object v0
.end method

.method public getUseAlternateThumb()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getAppliedStylesCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBucket()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->bucket_id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBucketId(I)V
    .locals 1
    .param p1, "bucket_id"    # I

    .prologue
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->bucket_id:Ljava/lang/Integer;

    .line 91
    return-void
.end method

.method public setCropHeight(I)V
    .locals 0
    .param p1, "cropHeight"    # I

    .prologue
    .line 370
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropHeight:I

    .line 371
    return-void
.end method

.method public setCropWidth(I)V
    .locals 0
    .param p1, "cropWidth"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropWidth:I

    .line 361
    return-void
.end method

.method public setImageData(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 322
    return-void

    .line 319
    :cond_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    goto :goto_0
.end method

.method public setImageData(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    .locals 1
    .param p1, "data"    # Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .prologue
    .line 326
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropWidth:I

    .line 329
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropHeight:I

    .line 332
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 335
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->data:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .line 336
    return-void
.end method

.method public setIsChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 120
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->isChecked:B

    .line 121
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsTemp(Z)V
    .locals 1
    .param p1, "isTemp"    # Z

    .prologue
    .line 130
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->isTemp:B

    .line 131
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->orientation:I

    .line 101
    return-void
.end method

.method public setStyle(Lcom/vkontakte/android/imagepicker/entries/StyleEntry;)V
    .locals 0
    .param p1, "style"    # Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$image["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]{path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleChecked()V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setIsChecked(Z)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->bucket_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->image_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 256
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->cropHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    if-nez v0, :cond_1

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 269
    :goto_1
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->style:Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_1
.end method
