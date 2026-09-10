.class public Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
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
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static LAST_TEMP_IMAGE_ID:I

.field private static comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bucketId:Ljava/lang/Integer;

.field private cacheKey:Ljava/lang/String;

.field private cacheKeySmall:Ljava/lang/String;

.field private cropHeight:I

.field private cropWidth:I

.field private data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

.field private dateTaken:I

.field private imageId:Ljava/lang/Integer;

.field private isChecked:B

.field private isTemp:B

.field private orientation:I

.field private path:Ljava/lang/String;

.field private style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->LAST_TEMP_IMAGE_ID:I

    .line 419
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry$1;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 449
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 2
    .param p1, "bucketId"    # I
    .param p2, "imageId"    # I
    .param p3, "dateTaken"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "orientation"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->bucketId:Ljava/lang/Integer;

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    .line 85
    iput p3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->dateTaken:I

    .line 86
    if-eqz p4, :cond_0

    const-string v0, "file://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .end local p4    # "path":Ljava/lang/String;
    :cond_0
    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 87
    iput p5, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    .line 88
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2
    .param p1, "imageId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    .line 93
    invoke-static {}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCurrentDateTaken()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->dateTaken:I

    .line 94
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
    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 95
    iput p3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    .line 96
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZI)V
    .locals 6
    .param p1, "bucketId"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isTemp"    # Z
    .param p4, "orientation"    # I

    .prologue
    .line 77
    sget v2, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->LAST_TEMP_IMAGE_ID:I

    add-int/lit8 v0, v2, -0x1

    sput v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->LAST_TEMP_IMAGE_ID:I

    invoke-static {}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCurrentDateTaken()I

    move-result v0

    sget v1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->LAST_TEMP_IMAGE_ID:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int v3, v0, v1

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(IIILjava/lang/String;I)V

    .line 78
    invoke-virtual {p0, p3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setIsTemp(Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->bucketId:Ljava/lang/Integer;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->dateTaken:I

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->isChecked:B

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropWidth:I

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropHeight:I

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 445
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .line 447
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 1
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object v0, p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    .line 62
    iget-object v0, p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->bucketId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->bucketId:Ljava/lang/Integer;

    .line 63
    iget v0, p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->dateTaken:I

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->dateTaken:I

    .line 64
    iget v0, p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    .line 65
    iget-object v0, p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .line 69
    iget-object v0, p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .line 71
    iget v0, p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropWidth:I

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropWidth:I

    .line 72
    iget v0, p1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropHeight:I

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropHeight:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/Integer;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->LAST_TEMP_IMAGE_ID:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->LAST_TEMP_IMAGE_ID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    .line 46
    invoke-static {}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCurrentDateTaken()I

    move-result v0

    sget v1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->LAST_TEMP_IMAGE_ID:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->dateTaken:I

    .line 48
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->parseImagePath(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->initWithValues(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->initWithValues(Ljava/util/HashMap;)V

    .line 101
    return-void
.end method

.method public static getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    sget-object v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry$2;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry$2;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->comparator:Ljava/util/Comparator;

    .line 464
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private static getCurrentDateTaken()I
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private initWithValues(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-direct {v5}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;-><init>()V

    .line 107
    .local v5, "style":Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    const-string v7, "filter"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    const-string v7, "filter"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setFiltered(I)V

    .line 110
    :cond_0
    const-string v7, "text"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    const-string v7, "text"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setText(Ljava/lang/String;)V

    .line 113
    :cond_1
    const-string v7, "crop"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 115
    const-string v7, "crop"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "vals":[Ljava/lang/String;
    array-length v7, v6

    new-array v0, v7, [F

    .line 119
    .local v0, "coords":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-lt v1, v7, :cond_5

    .line 122
    invoke-virtual {v5, v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setCropped([F)V

    .line 125
    .end local v0    # "coords":[F
    .end local v1    # "i":I
    .end local v6    # "vals":[Ljava/lang/String;
    :cond_2
    const-string v7, "enhanced"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 126
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setEnhanced(Z)V

    .line 128
    :cond_3
    const-string v7, "image_id"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 129
    .local v2, "imageId":I
    const-string v7, "orientation"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 130
    .local v3, "orientation":I
    const-string v7, "path"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "path":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    .line 133
    invoke-static {}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCurrentDateTaken()I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->dateTaken:I

    .line 134
    if-eqz v4, :cond_4

    const-string v7, "file://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 135
    iput v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    .line 137
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setStyle(Lcom/vkontakte/android/mediapicker/entries/StyleEntry;)V

    .line 138
    return-void

    .line 120
    .end local v2    # "imageId":I
    .end local v3    # "orientation":I
    .restart local v0    # "coords":[F
    .restart local v1    # "i":I
    .restart local v6    # "vals":[Ljava/lang/String;
    :cond_5
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v0, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseImagePath(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 17
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    const-string v12, "Parsing image path %s"

    move-object/from16 v0, p0

    invoke-static {v12, v0}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v12, "\\?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "res":[Ljava/lang/String;
    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    aget-object v7, v9, v12

    .line 233
    .local v7, "params":Ljava/lang/String;
    array-length v12, v9

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 235
    const/4 v12, 0x0

    aget-object v8, v9, v12

    .line 247
    .local v8, "realPath":Ljava/lang/String;
    :goto_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v11, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "&"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, "parameters":[Ljava/lang/String;
    array-length v13, v6

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v13, :cond_2

    .line 257
    const-string v12, "path"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "file://"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "impick://"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 263
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 269
    return-object v11

    .line 239
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "parameters":[Ljava/lang/String;
    .end local v8    # "realPath":Ljava/lang/String;
    .end local v11    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    if-lt v1, v12, :cond_1

    .line 244
    const-string v12, "?"

    invoke-static {v12, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "realPath":Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v8    # "realPath":Ljava/lang/String;
    :cond_1
    aget-object v12, v9, v1

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 251
    .end local v1    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "parameters":[Ljava/lang/String;
    .restart local v8    # "realPath":Ljava/lang/String;
    .restart local v11    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    aget-object v5, v6, v12

    .line 253
    .local v5, "param":Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 254
    .local v10, "v":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v10, v14

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-static {v15}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 263
    .end local v5    # "param":Ljava/lang/String;
    .end local v10    # "v":[Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    .local v2, "key":Ljava/lang/String;
    const-string v13, "Parsed %s -> %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public checkStyleTopicality()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->remove(Ljava/lang/String;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsStyled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .line 342
    :cond_1
    return-void
.end method

.method public clearImageData()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 508
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->bucketId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCacheKey(Z)Ljava/lang/String;
    .locals 4
    .param p1, "useSmallThumbnail"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cacheKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsTemp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->getImageCacheKey(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cacheKey:Ljava/lang/String;

    .line 150
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cacheKey:Ljava/lang/String;

    .line 156
    :goto_1
    return-object v0

    .line 148
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cacheKeySmall:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cacheKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->getSmallImageCacheKeySuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cacheKeySmall:Ljava/lang/String;

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cacheKeySmall:Ljava/lang/String;

    goto :goto_1
.end method

.method public getCropHeight()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropHeight:I

    return v0
.end method

.method public getCropKeys()Ljava/lang/String;
    .locals 7

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 317
    const-string v2, "0"

    .line 329
    :cond_0
    :goto_0
    return-object v2

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getCropData()[F

    move-result-object v0

    .line 321
    .local v0, "crop":[F
    const-string v2, ""

    .line 323
    .local v2, "keys":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 324
    const-string v2, "0"

    goto :goto_0

    .line 326
    :cond_2
    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget v1, v0, v4

    .line 327
    .local v1, "key":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, ","

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 327
    :cond_3
    const-string v3, ""

    goto :goto_2
.end method

.method public getCropWidth()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropWidth:I

    return v0
.end method

.method public getDateTaken()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->dateTaken:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFilterId()I
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getFilterId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsChecked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 196
    iget-byte v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->isChecked:B

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
    .line 517
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->getFailed()Z

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
    .line 512
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

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
    .line 473
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    return v0
.end method

.method public getIsStyled()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

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

    .line 216
    iget-byte v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->isTemp:B

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
    .line 478
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsImageLoaded()Z

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
    .line 181
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getResultPath()Ljava/lang/String;
    .locals 9

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    :goto_0
    return-object v2

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 279
    .local v2, "res":Ljava/lang/String;
    const-string v4, "file://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 280
    const-string v4, "file://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 282
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "filter="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getFilterId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "text="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 292
    const-string v0, ""

    .line 294
    .local v0, "cropString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getCropData()[F

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-lt v5, v7, :cond_7

    .line 297
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

    .line 300
    .end local v0    # "cropString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 301
    const-string v4, "enhanced=1"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "image_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "orientation="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsTemp()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 307
    const-string v4, "temp=1"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
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

    .line 311
    goto/16 :goto_0

    .line 294
    .restart local v0    # "cropString":Ljava/lang/String;
    :cond_7
    aget v3, v6, v5

    .line 295
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

    .line 294
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_1

    .line 295
    :cond_8
    const-string v4, ""

    goto :goto_2
.end method

.method public getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 366
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    return-object v0
.end method

.method public getUseAlternateThumb()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getAppliedStylesCount()I

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
    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->bucketId:Ljava/lang/Integer;

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
    .line 380
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBucketId(I)V
    .locals 1
    .param p1, "bucket_id"    # I

    .prologue
    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->bucketId:Ljava/lang/Integer;

    .line 167
    return-void
.end method

.method public setCropHeight(I)V
    .locals 0
    .param p1, "cropHeight"    # I

    .prologue
    .line 537
    iput p1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropHeight:I

    .line 538
    return-void
.end method

.method public setCropWidth(I)V
    .locals 0
    .param p1, "cropWidth"    # I

    .prologue
    .line 527
    iput p1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropWidth:I

    .line 528
    return-void
.end method

.method public setImageData(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 488
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 489
    return-void

    .line 486
    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    goto :goto_0
.end method

.method public setImageData(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 1
    .param p1, "data"    # Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .prologue
    .line 493
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropWidth:I

    .line 496
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropHeight:I

    .line 499
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 502
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->data:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .line 503
    return-void
.end method

.method public setIsChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 201
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->isChecked:B

    .line 202
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsTemp(Z)V
    .locals 1
    .param p1, "isTemp"    # Z

    .prologue
    .line 211
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->isTemp:B

    .line 212
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    .line 177
    return-void
.end method

.method public setStyle(Lcom/vkontakte/android/mediapicker/entries/StyleEntry;)V
    .locals 0
    .param p1, "style"    # Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .line 362
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getResultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleChecked()V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setIsChecked(Z)V

    .line 207
    return-void

    .line 206
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

    .line 398
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->bucketId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->dateTaken:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 404
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cropHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    if-nez v0, :cond_1

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 417
    :goto_1
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 415
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->style:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_1
.end method
