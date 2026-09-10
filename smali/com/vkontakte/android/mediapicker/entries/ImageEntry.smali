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
    .line 82
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    .line 91
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    .line 433
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
    .line 60
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
    .line 55
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
    .line 44
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
    .line 99
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

    if-eqz v7, :cond_3

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

    if-ge v1, v7, :cond_2

    .line 120
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v0, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v5, v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setCropped([F)V

    .line 125
    .end local v0    # "coords":[F
    .end local v1    # "i":I
    .end local v6    # "vals":[Ljava/lang/String;
    :cond_3
    const-string v7, "enhanced"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 126
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setEnhanced(Z)V

    .line 128
    :cond_4
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
    if-eqz v4, :cond_5

    const-string v7, "file://"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "path":Ljava/lang/String;
    :cond_5
    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 135
    iput v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    .line 137
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setStyle(Lcom/vkontakte/android/mediapicker/entries/StyleEntry;)V

    .line 138
    return-void
.end method

.method public static parseImagePath(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 20
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
    const-string v16, "Parsing image path %s"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v16, "\\?"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, "res":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget-object v11, v13, v16

    .line 233
    .local v11, "params":Ljava/lang/String;
    array-length v0, v13

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 235
    const/16 v16, 0x0

    aget-object v12, v13, v16

    .line 247
    .local v12, "realPath":Ljava/lang/String;
    :goto_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v15, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v16, "&"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "parameters":[Ljava/lang/String;
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v9, v2, v4

    .line 253
    .local v9, "param":Ljava/lang/String;
    const-string v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, "v":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v16, v14, v16

    const/16 v17, 0x1

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "param":Ljava/lang/String;
    .end local v10    # "parameters":[Ljava/lang/String;
    .end local v12    # "realPath":Ljava/lang/String;
    .end local v14    # "v":[Ljava/lang/String;
    .end local v15    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v0, v13

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v3, v0, :cond_1

    .line 242
    aget-object v16, v13, v3

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 244
    :cond_1
    const-string v16, "?"

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "realPath":Ljava/lang/String;
    goto :goto_0

    .line 257
    .end local v3    # "i":I
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v10    # "parameters":[Ljava/lang/String;
    .restart local v15    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v16, "path"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "impick://"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 263
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 265
    .local v5, "key":Ljava/lang/String;
    const-string v16, "Parsed %s -> %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 269
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    return-object v15
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

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

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

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    .locals 8

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 317
    const-string v4, "0"

    .line 329
    :cond_0
    :goto_0
    return-object v4

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getCropData()[F

    move-result-object v1

    .line 321
    .local v1, "crop":[F
    const-string v4, ""

    .line 323
    .local v4, "keys":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 324
    const-string v4, "0"

    goto :goto_0

    .line 326
    :cond_2
    move-object v0, v1

    .local v0, "arr$":[F
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget v3, v0, v2

    .line 327
    .local v3, "key":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, ","

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    :cond_3
    const-string v6, ""

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

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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

    move-result v7

    if-nez v7, :cond_0

    .line 275
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    invoke-static {v8}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    :goto_0
    return-object v5

    .line 277
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->path:Ljava/lang/String;

    .line 279
    .local v5, "res":Ljava/lang/String;
    const-string v7, "file://"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 280
    const-string v7, "file://"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 282
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v4, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getFilterId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 292
    const-string v1, ""

    .line 294
    .local v1, "cropString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getCropData()[F

    move-result-object v0

    .local v0, "arr$":[F
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_5

    aget v6, v0, v2

    .line 295
    .local v6, "t":F
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    const-string v7, ","

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    :cond_4
    const-string v7, ""

    goto :goto_2

    .line 297
    .end local v6    # "t":F
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "crop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v0    # "arr$":[F
    .end local v1    # "cropString":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 301
    const-string v7, "enhanced=1"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->imageId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->orientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsTemp()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 307
    const-string v7, "temp=1"

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "impick://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-static {v8, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    goto/16 :goto_0
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

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setIsChecked(Z)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

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
