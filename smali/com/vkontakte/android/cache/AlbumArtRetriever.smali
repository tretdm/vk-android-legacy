.class public Lcom/vkontakte/android/cache/AlbumArtRetriever;
.super Ljava/lang/Object;
.source "AlbumArtRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;
    }
.end annotation


# static fields
.field public static final USE_DISCOGS:Z

.field private static cachedAid:I

.field private static cachedBlur:Landroid/graphics/Bitmap;

.field private static cachedFull:Landroid/graphics/Bitmap;

.field private static cachedOid:I

.field private static cachedSmall:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(II)V
    .locals 0

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->broadcastCoverAvailable(II)V

    return-void
.end method

.method static synthetic access$1(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedFull:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedSmall:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedBlur:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(I)V
    .locals 0

    .prologue
    .line 29
    sput p0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedAid:I

    return-void
.end method

.method static synthetic access$5(I)V
    .locals 0

    .prologue
    .line 29
    sput p0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedOid:I

    return-void
.end method

.method static synthetic access$6()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedFull:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedBlur:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static broadcastCoverAvailable(II)V
    .locals 2
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string v1, "oid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public static getCoverImage(III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "aid"    # I
    .param p1, "oid"    # I
    .param p2, "type"    # I

    .prologue
    .line 174
    sget v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedAid:I

    if-ne v0, p0, :cond_0

    sget v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedOid:I

    if-ne v0, p1, :cond_0

    .line 175
    packed-switch p2, :pswitch_data_0

    .line 184
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 177
    :pswitch_0
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedFull:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 179
    :pswitch_1
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedSmall:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 181
    :pswitch_2
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedBlur:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V
    .locals 2
    .param p0, "aid"    # I
    .param p1, "oid"    # I
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;

    .prologue
    .line 188
    sget v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedAid:I

    if-ne v0, p0, :cond_0

    sget v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedOid:I

    if-ne v0, p1, :cond_0

    .line 189
    packed-switch p2, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 191
    :pswitch_0
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedFull:Landroid/graphics/Bitmap;

    invoke-interface {p3, v0, p1, p0}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 194
    :pswitch_1
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedSmall:Landroid/graphics/Bitmap;

    invoke-interface {p3, v0, p1, p0}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 197
    :pswitch_2
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cachedBlur:Landroid/graphics/Bitmap;

    invoke-interface {p3, v0, p1, p0}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;

    invoke-direct {v1, p1, p0, p3, p2}, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;-><init>(IILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCoversFromDiscogs(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0, "artist"    # Ljava/lang/String;
    .param p1, "_album"    # Ljava/lang/String;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 105
    return-void
.end method

.method public static saveCovers([BII)Z
    .locals 13
    .param p0, "data"    # [B
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 35
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ".vkontakte/cache/audio/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".covers"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .local v2, "file":Ljava/io/File;
    const/4 v10, 0x0

    array-length v11, p0

    invoke-static {p0, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 61
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return v8

    .line 42
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 43
    .local v3, "os":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    .local v4, "s":Ljava/io/DataOutputStream;
    array-length v8, p0

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 45
    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 47
    const/16 v8, 0xaa

    const/16 v10, 0xaa

    const/4 v11, 0x1

    invoke-static {v0, v8, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 48
    .local v5, "thumb1":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5d

    invoke-virtual {v5, v8, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 50
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 51
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 52
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 53
    const/16 v8, 0x64

    const/16 v10, 0x64

    const/4 v11, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 54
    .local v6, "thumb2":Landroid/graphics/Bitmap;
    const/4 v8, 0x4

    invoke-static {v6, v8}, Lcom/vkontakte/android/StackBlur;->blurBitmap(Landroid/graphics/Bitmap;I)V

    .line 55
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .restart local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x63

    invoke-virtual {v6, v8, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 57
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 58
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 59
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "s":Ljava/io/DataOutputStream;
    .end local v5    # "thumb1":Landroid/graphics/Bitmap;
    .end local v6    # "thumb2":Landroid/graphics/Bitmap;
    :goto_1
    move v8, v9

    .line 61
    goto :goto_0

    .line 60
    :catch_0
    move-exception v7

    .local v7, "x":Ljava/lang/Throwable;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static saveCoversFromFile(II)V
    .locals 13
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v11, 0x1

    .line 65
    invoke-static {p0, p1}, Lcom/vkontakte/android/cache/AudioCache;->getCoverVersion(II)I

    move-result v10

    if-lt v10, v11, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ".vkontakte/cache/audio/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".covers"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 69
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ".vkontakte/cache/audio/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .local v7, "tagLen":I
    const/4 v8, 0x0

    .line 73
    .local v8, "tagRead":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v6, "tagBuf":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x2800

    new-array v0, v10, [B

    .line 75
    .local v0, "buf":[B
    :cond_2
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    if-gtz v5, :cond_3

    move-object v1, v2

    .line 99
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 76
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    const/4 v10, 0x0

    aget-byte v10, v0, v10

    const/16 v11, 0x49

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    aget-byte v10, v0, v10

    const/16 v11, 0x44

    if-ne v10, v11, :cond_4

    const/4 v10, 0x2

    aget-byte v10, v0, v10

    const/16 v11, 0x33

    if-ne v10, v11, :cond_4

    .line 78
    const/16 v10, 0x9

    aget-byte v10, v0, v10

    const/16 v11, 0x8

    aget-byte v11, v0, v11

    shl-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    const/4 v11, 0x7

    aget-byte v11, v0, v11

    shl-int/lit8 v11, v11, 0xe

    or-int/2addr v10, v11

    const/4 v11, 0x6

    aget-byte v11, v0, v11

    shl-int/lit8 v11, v11, 0x15

    or-int v7, v10, v11

    .line 79
    add-int/lit8 v7, v7, 0x14

    .line 80
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Found ID3v2 tag, len="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const v10, 0xfa000

    if-ge v7, v10, :cond_4

    .line 82
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .end local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .restart local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :cond_4
    if-eqz v6, :cond_5

    if-ge v8, v7, :cond_5

    .line 85
    const/4 v10, 0x0

    sub-int v11, v7, v8

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v6, v0, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 86
    add-int/2addr v8, v5

    .line 88
    :cond_5
    if-eqz v6, :cond_2

    if-lt v8, v7, :cond_2

    .line 89
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Tag read, len="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v4, Lcom/vkontakte/android/cache/ID3Parser;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/vkontakte/android/cache/ID3Parser;-><init>([B)V

    .line 91
    .local v4, "parser":Lcom/vkontakte/android/cache/ID3Parser;
    const/4 v6, 0x0

    .line 92
    invoke-virtual {v4}, Lcom/vkontakte/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v4}, Lcom/vkontakte/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v10

    invoke-static {v10, p0, p1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->saveCovers([BII)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 93
    invoke-static {p0, p1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->broadcastCoverAvailable(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 99
    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "parser":Lcom/vkontakte/android/cache/ID3Parser;
    .end local v5    # "read":I
    .end local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "tagLen":I
    .end local v8    # "tagRead":I
    :catch_0
    move-exception v9

    move-object v1, v2

    .line 100
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .local v9, "x":Ljava/lang/Exception;
    :goto_2
    const-string v10, "vk"

    const-string v11, "error saving covers"

    invoke-static {v10, v11, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 95
    .end local v1    # "file":Ljava/io/File;
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v0    # "buf":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "parser":Lcom/vkontakte/android/cache/ID3Parser;
    .restart local v5    # "read":I
    .restart local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "tagLen":I
    .restart local v8    # "tagRead":I
    :cond_6
    :try_start_2
    invoke-virtual {v4}, Lcom/vkontakte/android/cache/ID3Parser;->getArtist()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/vkontakte/android/cache/ID3Parser;->getAlbum()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p0, p1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoversFromDiscogs(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 99
    .end local v0    # "buf":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "parser":Lcom/vkontakte/android/cache/ID3Parser;
    .end local v5    # "read":I
    .end local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "tagLen":I
    .end local v8    # "tagRead":I
    .restart local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v9

    goto :goto_2
.end method
