.class Lcom/vkontakte/android/cache/AlbumArtRetriever$2;
.super Ljava/lang/Object;
.source "AlbumArtRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$aid:I

.field private final synthetic val$callback:Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;

.field private final synthetic val$oid:I

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(IILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$oid:I

    iput p2, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$aid:I

    iput-object p3, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;

    iput p4, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$type:I

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ".vkontakte/cache/audio/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$oid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".covers"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 207
    iget-object v6, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;

    iget v7, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$oid:I

    iget v8, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-interface {v6, v7, v8}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->notAvailable(II)V

    .line 256
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 210
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 211
    .local v2, "is":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 229
    .local v4, "s":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 230
    .local v3, "l":I
    new-array v0, v3, [B

    .line 231
    .local v0, "buf":[B
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 232
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->access$1(Landroid/graphics/Bitmap;)V

    .line 233
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 234
    new-array v0, v3, [B

    .line 235
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 236
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->access$2(Landroid/graphics/Bitmap;)V

    .line 237
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 238
    new-array v0, v3, [B

    .line 239
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 240
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->access$3(Landroid/graphics/Bitmap;)V

    .line 241
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 242
    iget v6, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-static {v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->access$4(I)V

    .line 243
    iget v6, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$oid:I

    invoke-static {v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->access$5(I)V

    .line 244
    iget v6, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$type:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    iget-object v6, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;

    invoke-static {}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->access$6()Landroid/graphics/Bitmap;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$oid:I

    iget v9, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-interface {v6, v7, v8, v9}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v0    # "buf":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "l":I
    .end local v4    # "s":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 249
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "buf":[B
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "l":I
    .restart local v4    # "s":Ljava/io/DataInputStream;
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;

    invoke-static {}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->access$7()Landroid/graphics/Bitmap;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$oid:I

    iget v9, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-interface {v6, v7, v8, v9}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 252
    :pswitch_2
    iget-object v6, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$callback:Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;

    invoke-static {}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->access$8()Landroid/graphics/Bitmap;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$oid:I

    iget v9, p0, Lcom/vkontakte/android/cache/AlbumArtRetriever$2;->val$aid:I

    invoke-interface {v6, v7, v8, v9}, Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;->onImageLoaded(Landroid/graphics/Bitmap;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
