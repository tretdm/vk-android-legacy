.class public Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
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
            "Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;",
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
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private isCamera:B

.field private preview:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private preview_id:I

.field private selected_count:I

.field private selected_counter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry$1;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 198
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "bucket_id"    # I
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "previewId"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->bucket_id:Ljava/lang/Integer;

    .line 32
    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->preview_id:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->preview_id:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 213
    return-void

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    new-instance v3, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-direct {v3, p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private updateThumbnailForAlbum(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Z)V
    .locals 1
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "force"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->preview_id:I

    .line 78
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->preview:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public addImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 1
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->updateThumbnailForAlbum(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Z)V

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->incrementSelectedCount(Z)V

    .line 100
    :cond_0
    return-void
.end method

.method public addImageToBeginning(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 3
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-direct {p0, p1, v2}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->updateThumbnailForAlbum(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Z)V

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->updateCounter()V

    .line 89
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->incrementSelectedCount(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->bucket_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCounter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->counter:Ljava/lang/String;

    return-object v0
.end method

.method public getHasNext()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->hasNext:Z

    return v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    return-object v0
.end method

.method public getIsCamera()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 45
    iget-byte v1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->isCamera:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreview()Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->preview:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    return-object v0
.end method

.method public getPreviewId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->preview_id:I

    return v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->selected_count:I

    return v0
.end method

.method public getSelectedCounter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->selected_counter:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->bucket_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public incrementSelectedCount(Z)V
    .locals 2
    .param p1, "increment"    # Z

    .prologue
    .line 114
    iget v1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->selected_count:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->selected_count:I

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->selected_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->selected_counter:Ljava/lang/String;

    .line 117
    return-void

    .line 114
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setBucketId(I)V
    .locals 1
    .param p1, "bucket_id"    # I

    .prologue
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->bucket_id:Ljava/lang/Integer;

    .line 51
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket_name"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setCounter(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->counter:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setHasNext()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->hasNext:Z

    .line 157
    return-void
.end method

.method public setIsCamera(Z)V
    .locals 1
    .param p1, "isCamera"    # Z

    .prologue
    .line 40
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->isCamera:B

    .line 41
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreviewId(I)V
    .locals 0
    .param p1, "preview_id"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->preview_id:I

    .line 61
    return-void
.end method

.method public updateCounter()V
    .locals 2

    .prologue
    .line 146
    const/16 v0, 0x50

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getLocalizedPluralString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->setCounter(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 179
    iget v1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->preview_id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->bucket_name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    return-void

    .line 183
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 184
    .local v0, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
