.class public Lcom/vkontakte/android/cache/AlbumArtRetriever;
.super Ljava/lang/Object;
.source "AlbumArtRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;,
        Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;
    }
.end annotation


# static fields
.field public static final USE_DISCOGS:Z

.field private static cache:Lcom/vkontakte/android/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/cache/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/vkontakte/android/cache/LruCache;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/vkontakte/android/cache/LruCache;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cache:Lcom/vkontakte/android/cache/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(II)V
    .locals 0

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->broadcastCoverAvailable(II)V

    return-void
.end method

.method static synthetic access$1()Lcom/vkontakte/android/cache/LruCache;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cache:Lcom/vkontakte/android/cache/LruCache;

    return-object v0
.end method

.method private static broadcastCoverAvailable(II)V
    .locals 2
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v1, "oid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public static getCoverImage(III)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "aid"    # I
    .param p1, "oid"    # I
    .param p2, "type"    # I

    .prologue
    .line 177
    sget-object v1, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cache:Lcom/vkontakte/android/cache/LruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;

    .line 178
    .local v0, "cached":Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;
    if-eqz v0, :cond_0

    .line 179
    packed-switch p2, :pswitch_data_0

    .line 188
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 181
    :pswitch_0
    iget-object v1, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;->full:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v1, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;->small:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v1, v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;->blur:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCoverImage(IIIIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V
    .locals 9
    .param p0, "aid"    # I
    .param p1, "oid"    # I
    .param p2, "oldAid"    # I
    .param p3, "oldOid"    # I
    .param p4, "type"    # I
    .param p5, "callback"    # Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;

    .prologue
    .line 196
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cache:Lcom/vkontakte/android/cache/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;

    .line 197
    .local v7, "cached":Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;
    if-eqz v7, :cond_0

    .line 198
    packed-switch p4, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, v7, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;->full:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, v7, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;->small:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 206
    :pswitch_2
    iget-object v0, v7, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;->blur:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 211
    :cond_0
    sget-object v0, Lcom/vkontakte/android/cache/AlbumArtRetriever;->cache:Lcom/vkontakte/android/cache/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "cached":Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;
    check-cast v7, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;

    .line 212
    .restart local v7    # "cached":Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;
    if-eqz v7, :cond_1

    .line 213
    packed-switch p4, :pswitch_data_1

    goto :goto_0

    .line 215
    :pswitch_3
    iget-object v0, v7, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;->full:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 218
    :pswitch_4
    iget-object v0, v7, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;->small:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 221
    :pswitch_5
    iget-object v0, v7, Lcom/vkontakte/android/cache/AlbumArtRetriever$CoversHolder;->blur:Landroid/graphics/Bitmap;

    invoke-interface {p5, v0, p1, p0}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 226
    :cond_1
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;

    move v1, p1

    move v2, p0

    move v3, p3

    move v4, p2

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;-><init>(IIIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;I)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 290
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 213
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V
    .locals 6
    .param p0, "aid"    # I
    .param p1, "oid"    # I
    .param p2, "type"    # I
    .param p3, "c"    # Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;

    .prologue
    const/4 v2, 0x0

    .line 192
    move v0, p0

    move v1, p1

    move v3, v2

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIIIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 193
    return-void
.end method

.method public static getCoversFromDiscogs(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0, "artist"    # Ljava/lang/String;
    .param p1, "_album"    # Ljava/lang/String;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 108
    return-void
.end method

.method public static saveCovers([BII)Z
    .locals 12
    .param p0, "data"    # [B
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 35
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, ".vkontakte/cache/audio/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".covers"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .local v2, "file":Ljava/io/File;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 37
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    invoke-virtual {v9}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v9

    const/16 v10, 0x20

    if-ge v9, v10, :cond_0

    .line 38
    const/4 v9, 0x2

    iput v9, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 39
    :cond_0
    const/4 v9, 0x0

    array-length v10, p0

    invoke-static {p0, v9, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 42
    const/4 v9, 0x0

    .line 64
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return v9

    .line 45
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 46
    .local v4, "os":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    .local v5, "s":Ljava/io/DataOutputStream;
    array-length v9, p0

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 48
    invoke-virtual {v5, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 50
    const/16 v9, 0xaa

    const/16 v10, 0xaa

    const/4 v11, 0x1

    invoke-static {v0, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 51
    .local v6, "thumb1":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5d

    invoke-virtual {v6, v9, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 53
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 54
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 55
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 56
    const/16 v9, 0x64

    const/16 v10, 0x64

    const/4 v11, 0x0

    invoke-static {v6, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 57
    .local v7, "thumb2":Landroid/graphics/Bitmap;
    const/4 v9, 0x4

    invoke-static {v7, v9}, Lcom/vkontakte/android/StackBlur;->blurBitmap(Landroid/graphics/Bitmap;I)V

    .line 58
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .restart local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x63

    invoke-virtual {v7, v9, v10, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 60
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 61
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 62
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "s":Ljava/io/DataOutputStream;
    .end local v6    # "thumb1":Landroid/graphics/Bitmap;
    .end local v7    # "thumb2":Landroid/graphics/Bitmap;
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v8

    .local v8, "x":Ljava/lang/Throwable;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static saveCoversFromFile(II)V
    .locals 13
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v11, 0x1

    .line 68
    invoke-static {p0, p1}, Lcom/vkontakte/android/cache/AudioCache;->getCoverVersion(II)I

    move-result v10

    if-lt v10, v11, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 69
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

    .line 70
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 72
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

    .line 73
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 75
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .local v7, "tagLen":I
    const/4 v8, 0x0

    .line 76
    .local v8, "tagRead":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    .local v6, "tagBuf":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x2800

    new-array v0, v10, [B

    .line 78
    .local v0, "buf":[B
    :cond_2
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    if-gtz v5, :cond_3

    move-object v1, v2

    .line 102
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 79
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

    .line 81
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

    .line 82
    add-int/lit8 v7, v7, 0x14

    .line 83
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Found ID3v2 tag, len="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const v10, 0xfa000

    if-ge v7, v10, :cond_4

    .line 85
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .end local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .restart local v6    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :cond_4
    if-eqz v6, :cond_5

    if-ge v8, v7, :cond_5

    .line 88
    const/4 v10, 0x0

    sub-int v11, v7, v8

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v6, v0, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 89
    add-int/2addr v8, v5

    .line 91
    :cond_5
    if-eqz v6, :cond_2

    if-lt v8, v7, :cond_2

    .line 92
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

    .line 93
    new-instance v4, Lcom/vkontakte/android/cache/ID3Parser;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/vkontakte/android/cache/ID3Parser;-><init>([B)V

    .line 94
    .local v4, "parser":Lcom/vkontakte/android/cache/ID3Parser;
    const/4 v6, 0x0

    .line 95
    invoke-virtual {v4}, Lcom/vkontakte/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v4}, Lcom/vkontakte/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v10

    invoke-static {v10, p0, p1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->saveCovers([BII)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 96
    invoke-static {p0, p1}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->broadcastCoverAvailable(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 102
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

    .line 103
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .local v9, "x":Ljava/lang/Exception;
    :goto_2
    const-string v10, "vk"

    const-string v11, "error saving covers"

    invoke-static {v10, v11, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 98
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

    .line 102
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
