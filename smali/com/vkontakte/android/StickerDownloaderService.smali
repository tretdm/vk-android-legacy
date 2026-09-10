.class public Lcom/vkontakte/android/StickerDownloaderService;
.super Landroid/app/IntentService;
.source "StickerDownloaderService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ID_NOTIFICATION_DONE:I = 0x901

.field private static final ID_NOTIFICATION_FAILED:I = 0xa2d

.field private static final ID_NOTIFICATION_PROGRESS:I = 0x7d5

.field public static currentInstance:Lcom/vkontakte/android/StickerDownloaderService;


# instance fields
.field private destPath:Ljava/lang/String;

.field private notifyBuilder:Landroid/app/Notification$Builder;

.field private packId:I

.field private percent:F

.field private progress:Landroid/app/Notification;

.field private queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private silent:Z

.field private title:Ljava/lang/String;

.field private uploadView:Landroid/widget/RemoteViews;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "StickerDownloader"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->queue:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->silent:Z

    .line 54
    return-void
.end method

.method private download()V
    .locals 24

    .prologue
    .line 189
    const-string v21, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/StickerDownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0xa2d

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/NotificationManager;->cancel(I)V

    .line 190
    const/16 v21, 0x0

    const/16 v22, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/StickerDownloaderService;->updateProgress(II)V

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v21, v0

    if-lez v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v21

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 192
    new-instance v21, Lcom/vkontakte/android/api/StoreSetActive;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-direct/range {v21 .. v23}, Lcom/vkontakte/android/api/StoreSetActive;-><init>(IZ)V

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/api/StoreSetActive;->execSync()Z

    move-result v16

    .line 193
    .local v16, "result":Z
    if-nez v16, :cond_0

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/StickerDownloaderService;->showFailed()V

    .line 195
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    .line 196
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    .line 283
    .end local v16    # "result":Z
    :goto_0
    return-void

    .line 199
    .restart local v16    # "result":Z
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v11, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v21, "stickers"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/StickerDownloaderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "order"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, "ordr":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    .line 202
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v21, "stickers"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/StickerDownloaderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "order"

    const-string v23, ","

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    .end local v11    # "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "ordr":Ljava/lang/String;
    .end local v16    # "result":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->destPath:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 208
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/StickerDownloaderService;->getFilesDir()Ljava/io/File;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".zip"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v8, "file":Ljava/io/File;
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/StickerDownloaderService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string v22, "stickers"

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".zip"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/StickerDownloaderService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "stickers/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".zip"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 216
    .local v9, "in":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 224
    .local v17, "total":I
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 225
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 226
    .local v13, "out":Ljava/io/FileOutputStream;
    const/16 v21, 0x2800

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 227
    .local v3, "buf":[B
    const/4 v15, 0x0

    .line 228
    .local v15, "read":I
    const/4 v10, 0x0

    .line 229
    .local v10, "loaded":I
    const/4 v14, 0x0

    .line 230
    .local v14, "prevUpdate":I
    :cond_3
    :goto_3
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_6

    .line 231
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v3, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 232
    add-int/2addr v10, v15

    .line 233
    sub-int v21, v10, v14

    const v22, 0x186a0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 234
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/vkontakte/android/StickerDownloaderService;->updateProgress(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    move v14, v10

    goto :goto_3

    .line 210
    .end local v3    # "buf":[B
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "loaded":I
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "prevUpdate":I
    .end local v15    # "read":I
    .end local v17    # "total":I
    :cond_4
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->destPath:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8    # "file":Ljava/io/File;
    goto/16 :goto_1

    .line 219
    :cond_5
    :try_start_1
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 220
    .local v4, "conn":Ljava/net/URLConnection;
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 221
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 222
    .restart local v9    # "in":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v17

    .restart local v17    # "total":I
    goto :goto_2

    .line 238
    .end local v4    # "conn":Ljava/net/URLConnection;
    .restart local v3    # "buf":[B
    .restart local v10    # "loaded":I
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "prevUpdate":I
    .restart local v15    # "read":I
    :cond_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 239
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 240
    const/16 v21, 0xa

    const/16 v22, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/StickerDownloaderService;->updateProgress(II)V

    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v21, v0

    if-lez v21, :cond_a

    .line 243
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/StickerDownloaderService;->getFilesDir()Ljava/io/File;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "stickers/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    .local v5, "dir":Ljava/io/File;
    new-instance v20, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 245
    .local v20, "zip":Ljava/util/zip/ZipFile;
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 246
    .local v6, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 247
    :goto_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 248
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/zip/ZipEntry;

    .line 249
    .local v19, "ze":Ljava/util/zip/ZipEntry;
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v7, "f":Ljava/io/File;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 252
    new-instance v13, Ljava/io/FileOutputStream;

    .end local v13    # "out":Ljava/io/FileOutputStream;
    invoke-direct {v13, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 253
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :goto_5
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_8

    .line 254
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v3, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 273
    .end local v3    # "buf":[B
    .end local v5    # "dir":Ljava/io/File;
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v7    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "loaded":I
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "prevUpdate":I
    .end local v15    # "read":I
    .end local v17    # "total":I
    .end local v19    # "ze":Ljava/util/zip/ZipEntry;
    .end local v20    # "zip":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v18

    .line 274
    .local v18, "x":Ljava/lang/Exception;
    const-string v21, "vk"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v21, v0

    if-lez v21, :cond_7

    .line 277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/data/Stickers;->deleteDownloadedPack(I)V

    .line 279
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/StickerDownloaderService;->showFailed()V

    .line 280
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    .line 281
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    goto/16 :goto_0

    .line 256
    .end local v18    # "x":Ljava/lang/Exception;
    .restart local v3    # "buf":[B
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v7    # "f":Ljava/io/File;
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v10    # "loaded":I
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "prevUpdate":I
    .restart local v15    # "read":I
    .restart local v17    # "total":I
    .restart local v19    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v20    # "zip":Ljava/util/zip/ZipFile;
    :cond_8
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 257
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4

    .line 259
    .end local v7    # "f":Ljava/io/File;
    .end local v19    # "ze":Ljava/util/zip/ZipEntry;
    :cond_9
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->close()V

    .line 260
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 262
    invoke-static {v5}, Lcom/vkontakte/android/StickerDownloaderService;->generateSizesFile(Ljava/io/File;)V

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/StickerDownloaderService;->showDone()V

    .line 265
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    .line 270
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v20    # "zip":Ljava/util/zip/ZipFile;
    :goto_6
    const-wide/16 v21, 0xc8

    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V

    .line 271
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    goto/16 :goto_0

    .line 267
    .end local v5    # "dir":Ljava/io/File;
    :cond_a
    new-instance v5, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .restart local v5    # "dir":Ljava/io/File;
    invoke-static {v5}, Lcom/vkontakte/android/StickerDownloaderService;->generateSizesFile(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6
.end method

.method public static generateSizesFile(Ljava/io/File;)V
    .locals 11
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 287
    :try_start_0
    new-instance v9, Lcom/vkontakte/android/StickerDownloaderService$1;

    invoke-direct {v9}, Lcom/vkontakte/android/StickerDownloaderService$1;-><init>()V

    invoke-virtual {p0, v9}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "files":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 294
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 295
    .local v5, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 296
    new-instance v7, Ljava/io/File;

    const-string v9, "sizes"

    invoke-direct {v7, p0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v7, "sizes":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 298
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 299
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 300
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 301
    .local v6, "os":Ljava/io/DataOutputStream;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 302
    array-length v9, v2

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 303
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 304
    .local v1, "f":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 305
    const-string v9, "_"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 306
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 307
    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "f":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .end local v7    # "sizes":Ljava/io/File;
    :goto_1
    return-void

    .line 310
    :catch_0
    move-exception v8

    .line 311
    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private showDone()V
    .locals 10

    .prologue
    const v9, 0x7f0d0027

    const v8, 0x7f020155

    const v7, 0x7f0d030b

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->destPath:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->silent:Z

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "NOTHING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    .line 146
    new-instance v1, Landroid/app/Notification;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {v1, v8, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 147
    .local v1, "notification":Landroid/app/Notification;
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 148
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 159
    :goto_1
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/StickerDownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    add-int/lit16 v3, v3, 0x7d5

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 160
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/StickerDownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    add-int/lit16 v3, v3, 0x901

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 150
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_2
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .restart local v1    # "notification":Landroid/app/Notification;
    goto :goto_1
.end method

.method private showFailed()V
    .locals 10

    .prologue
    const v9, 0x7f0d0027

    const v8, 0x1080078

    const v7, 0x7f0d0309

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->destPath:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->silent:Z

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "id"

    iget v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v2, "url"

    iget-object v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    .line 171
    new-instance v1, Landroid/app/Notification;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {v1, v8, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 172
    .local v1, "notification":Landroid/app/Notification;
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 173
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 184
    :goto_1
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/StickerDownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    add-int/lit16 v3, v3, 0x7d5

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 185
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/StickerDownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    add-int/lit16 v3, v3, 0xa2d

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 175
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_2
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .restart local v1    # "notification":Landroid/app/Notification;
    goto :goto_1
.end method

.method private updateProgress(II)V
    .locals 10
    .param p1, "loaded"    # I
    .param p2, "total"    # I

    .prologue
    const v9, 0x7f0d030c

    const v8, 0x1080081

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 103
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->destPath:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->silent:Z

    if-eqz v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->percent:F

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.STICKERS_DOWNLOAD_PROGRESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "intent1":Landroid/content/Intent;
    const-string v2, "id"

    iget v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v2, "progress"

    iget v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->percent:F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/StickerDownloaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "NOTHING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    .line 113
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->progress:Landroid/app/Notification;

    if-nez v2, :cond_2

    .line 114
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v8, v7, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->progress:Landroid/app/Notification;

    .line 115
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->progress:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x22

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 116
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/StickerDownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03005b

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->uploadView:Landroid/widget/RemoteViews;

    .line 117
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->uploadView:Landroid/widget/RemoteViews;

    const v3, 0x7f080104

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v9, v4}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->uploadView:Landroid/widget/RemoteViews;

    const v3, 0x7f080105

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->progress:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/vkontakte/android/StickerDownloaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 120
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->progress:Landroid/app/Notification;

    iget-object v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->uploadView:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->uploadView:Landroid/widget/RemoteViews;

    const v3, 0x7f080106

    invoke-virtual {v2, v3, p2, p1, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 137
    :goto_1
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/StickerDownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget v3, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    add-int/lit16 v3, v3, 0x7d5

    iget-object v4, p0, Lcom/vkontakte/android/StickerDownloaderService;->progress:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    if-nez v2, :cond_4

    .line 125
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v9, v3}, Lcom/vkontakte/android/StickerDownloaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    .line 135
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->progress:Landroid/app/Notification;

    goto :goto_1

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, p2, p1, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_2
.end method


# virtual methods
.method public getCurrentPackId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    return v0
.end method

.method public getCurrentProgress()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->percent:F

    return v0
.end method

.method public isInQueue(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->queue:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 58
    sput-object p0, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/StickerDownloaderService;->currentInstance:Lcom/vkontakte/android/StickerDownloaderService;

    .line 64
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 83
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->url:Ljava/lang/String;

    .line 84
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    .line 86
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->title:Ljava/lang/String;

    .line 87
    const-string v0, "silent"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->silent:Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->destPath:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->queue:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/StickerDownloaderService;->download()V

    .line 96
    return-void

    .line 91
    :cond_0
    const-string v0, "dest_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->destPath:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/vkontakte/android/StickerDownloaderService;->packId:I

    .line 93
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Will download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/StickerDownloaderService;->destPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 75
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/StickerDownloaderService;->queue:Ljava/util/ArrayList;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
