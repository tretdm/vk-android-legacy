.class public Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bucket_id:Ljava/lang/Integer;

.field private bucket_name:Ljava/lang/String;

.field private counter:Ljava/lang/String;

.field private hasNext:Z

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private isCamera:B

.field private preview:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private preview_id:I

.field private selected_count:I

.field private selected_counter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry$1;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "bucket_id"    # I
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "previewId"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->bucket_id:Ljava/lang/Integer;

    .line 31
    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->preview_id:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->preview_id:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 212
    return-void

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    new-instance v3, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {v3, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private updateThumbnailForAlbum(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)V
    .locals 1
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "force"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->preview_id:I

    .line 77
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->preview:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public addImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 1
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->updateThumbnailForAlbum(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->incrementSelectedCount(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public addImageToBeginning(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 3
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-direct {p0, p1, v2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->updateThumbnailForAlbum(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)V

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->updateCounter()V

    .line 88
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->incrementSelectedCount(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->bucket_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCounter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->counter:Ljava/lang/String;

    return-object v0
.end method

.method public getHasNext()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->hasNext:Z

    return v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    return-object v0
.end method

.method public getIsCamera()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 44
    iget-byte v1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->isCamera:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreview()Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->preview:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    return-object v0
.end method

.method public getPreviewId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->preview_id:I

    return v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->selected_count:I

    return v0
.end method

.method public getSelectedCounter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->selected_counter:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->bucket_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public incrementSelectedCount(Z)V
    .locals 2
    .param p1, "increment"    # Z

    .prologue
    .line 113
    iget v1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->selected_count:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->selected_count:I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->selected_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->selected_counter:Ljava/lang/String;

    .line 116
    return-void

    .line 113
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setBucketId(I)V
    .locals 1
    .param p1, "bucket_id"    # I

    .prologue
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->bucket_id:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket_name"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCounter(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->counter:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setHasNext()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->hasNext:Z

    .line 156
    return-void
.end method

.method public setIsCamera(Z)V
    .locals 1
    .param p1, "isCamera"    # Z

    .prologue
    .line 39
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->isCamera:B

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreviewId(I)V
    .locals 0
    .param p1, "preview_id"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->preview_id:I

    .line 60
    return-void
.end method

.method public updateCounter()V
    .locals 2

    .prologue
    .line 145
    const/16 v0, 0x50

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedPluralString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->setCounter(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    iget v1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->preview_id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    return-void

    .line 182
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 183
    .local v0, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
