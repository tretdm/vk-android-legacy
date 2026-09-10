.class public Lcom/vkontakte/android/cache/AudioCache;
.super Ljava/lang/Object;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;,
        Lcom/vkontakte/android/cache/AudioCache$Downloader;,
        Lcom/vkontakte/android/cache/AudioCache$Proxy;,
        Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;
    }
.end annotation


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x2800

.field private static final PROXY_PORT:I = 0xbcc9

.field public static cachedIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field private static currentDownloader:Lcom/vkontakte/android/cache/AudioCache$Downloader;

.field private static filledIDs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 165
    sput-object p0, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->currentDownloader:Lcom/vkontakte/android/cache/AudioCache$Downloader;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/cache/AudioCache$Downloader;)V
    .locals 0

    .prologue
    .line 166
    sput-object p0, Lcom/vkontakte/android/cache/AudioCache;->currentDownloader:Lcom/vkontakte/android/cache/AudioCache$Downloader;

    return-void
.end method

.method public static deleteCurrent()V
    .locals 7

    .prologue
    .line 309
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 310
    .local v1, "f":Lcom/vkontakte/android/AudioFile;
    sget-object v4, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 311
    new-instance v2, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v4, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 312
    .local v2, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 314
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v4, "files"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "aid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and oid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 317
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 318
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "reload_cached_list"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    return-void

    .line 315
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static deleteOld()V
    .locals 15

    .prologue
    .line 279
    new-instance v9, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 280
    .local v9, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 282
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x0

    const-string v3, "user=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "lastplay asc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 283
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 284
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 285
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v12, v1, -0xa

    .line 286
    .local v12, "nDel":I
    const-string v13, ""

    .line 287
    .local v13, "where":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v12, :cond_1

    .line 294
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 295
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 296
    const-string v1, "files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 297
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v11, "intent":Landroid/content/Intent;
    const-string v1, "reload_cached_list"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "nDel":I
    .end local v13    # "where":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 305
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 306
    return-void

    .line 288
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "i":I
    .restart local v12    # "nDel":I
    .restart local v13    # "where":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleted audio "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "or(oid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 290
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".vkontakte/cache/audio/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 291
    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 301
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v12    # "nDel":I
    .end local v13    # "where":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 302
    .local v14, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public static endPlayback(II)V
    .locals 2
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/cache/AudioCache$2;-><init>(II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static fillIDs(Landroid/content/Context;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-boolean v3, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    if-eqz v3, :cond_0

    .line 162
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    .line 77
    const/4 v13, 0x0

    .line 78
    .local v13, "deleted":Z
    new-instance v17, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 79
    .local v17, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 81
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "files"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "oid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "aid"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 82
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    sget-object v3, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 84
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 85
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 87
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 88
    .local v16, "fn":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/.vkontakte/cache/audio/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 89
    sget-object v3, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 86
    if-nez v3, :cond_1

    .line 97
    .end local v16    # "fn":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 98
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 100
    if-eqz v13, :cond_4

    .line 101
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v19, "intent":Landroid/content/Intent;
    const-string v3, "reload_cached_list"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/.vkontakte/cache/audio/"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 106
    .local v15, "files":[Ljava/io/File;
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 107
    .local v18, "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    array-length v0, v15

    move/from16 v26, v0

    const/4 v3, 0x0

    move/from16 v25, v3

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 124
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 125
    new-instance v3, Lcom/vkontakte/android/api/AudioGetById;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Lcom/vkontakte/android/api/AudioGetById;-><init>(Ljava/util/Vector;)V

    .line 126
    new-instance v4, Lcom/vkontakte/android/cache/AudioCache$1;

    invoke-direct {v4}, Lcom/vkontakte/android/cache/AudioCache$1;-><init>()V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/AudioGetById;->setCallback(Lcom/vkontakte/android/api/AudioGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "files":[Ljava/io/File;
    .end local v18    # "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_5
    :goto_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto/16 :goto_0

    .line 90
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "fn":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const/4 v13, 0x1

    .line 92
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from DB (file on SD not found)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v3, "files"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "oid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND aid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 159
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v16    # "fn":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_3

    .line 107
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "files":[Ljava/io/File;
    .restart local v18    # "idsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_7
    aget-object v14, v15, v25

    .line 108
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    .line 110
    .local v20, "name":Ljava/lang/String;
    :try_start_2
    const-string v3, "_"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 111
    .local v23, "sp":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v23, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .local v21, "oid":I
    const/4 v3, 0x1

    aget-object v3, v23, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 112
    .local v10, "aid":I
    const-string v3, "files"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "`oid`="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and `aid`="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 113
    .local v12, "cursor1":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_9

    const/16 v22, 0x1

    .line 114
    .local v22, "result":Z
    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 115
    if-nez v22, :cond_8

    .line 116
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "need get "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v3, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 107
    .end local v10    # "aid":I
    .end local v12    # "cursor1":Landroid/database/Cursor;
    .end local v21    # "oid":I
    .end local v22    # "result":Z
    .end local v23    # "sp":[Ljava/lang/String;
    :cond_8
    :goto_5
    add-int/lit8 v3, v25, 0x1

    move/from16 v25, v3

    goto/16 :goto_2

    .line 113
    .restart local v10    # "aid":I
    .restart local v12    # "cursor1":Landroid/database/Cursor;
    .restart local v21    # "oid":I
    .restart local v23    # "sp":[Ljava/lang/String;
    :cond_9
    const/16 v22, 0x0

    goto :goto_4

    .line 120
    .end local v10    # "aid":I
    .end local v12    # "cursor1":Landroid/database/Cursor;
    .end local v21    # "oid":I
    .end local v23    # "sp":[Ljava/lang/String;
    :catch_1
    move-exception v24

    .line 121
    .local v24, "x":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5
.end method

.method public static getCachedList(Landroid/content/Context;)[Lcom/vkontakte/android/AudioFile;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 324
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vkontakte/cache/audio/"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 327
    :cond_0
    new-array v13, v3, [Lcom/vkontakte/android/AudioFile;

    .line 329
    .local v13, "list":[Lcom/vkontakte/android/AudioFile;
    new-instance v11, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 330
    .local v11, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 332
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "user desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 333
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 334
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v13, v1, [Lcom/vkontakte/android/AudioFile;

    .line 335
    const/4 v12, 0x0

    .line 339
    .local v12, "i":I
    :cond_1
    new-instance v10, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v10}, Lcom/vkontakte/android/AudioFile;-><init>()V

    .line 340
    .local v10, "file":Lcom/vkontakte/android/AudioFile;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 341
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 342
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 343
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 344
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 345
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v10, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    .line 346
    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v10, Lcom/vkontakte/android/AudioFile;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v10, Lcom/vkontakte/android/AudioFile;->duration:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    .line 347
    aput-object v10, v13, v12

    .line 349
    add-int/lit8 v12, v12, 0x1

    .line 350
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 338
    if-nez v1, :cond_1

    .line 351
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v12    # "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 354
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 356
    sput-object p0, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    .line 357
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteOld()V

    .line 359
    return-object v13

    .line 352
    :catch_0
    move-exception v14

    .local v14, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isCached(II)Z
    .locals 14
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 244
    sget-boolean v1, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 245
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vkontakte/cache/audio/"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 248
    :cond_1
    const/4 v11, 0x0

    .line 249
    .local v11, "result":Z
    new-instance v10, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 250
    .local v10, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 252
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "`oid`="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and `aid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 253
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    move v11, v12

    .line 254
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 257
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 258
    return v11

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    move v11, v13

    .line 253
    goto :goto_0

    .line 255
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static isCachedByUser(II)Z
    .locals 14
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 262
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vkontakte/cache/audio/"

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 265
    :cond_0
    const/4 v11, 0x0

    .line 266
    .local v11, "result":Z
    new-instance v10, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 267
    .local v10, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 269
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "files"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "`oid`="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and `aid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and `user`=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 270
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    move v11, v12

    .line 271
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 274
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 275
    return v11

    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    move v11, v13

    .line 270
    goto :goto_0

    .line 272
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static refillIDs(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v0, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/cache/AudioCache;->filledIDs:Z

    .line 71
    invoke-static {p0}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static saveCurrent(Z)V
    .locals 10
    .param p0, "forced"    # Z

    .prologue
    .line 193
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 194
    .local v1, "file":Lcom/vkontakte/android/AudioFile;
    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    iget v5, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v6, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    if-eqz p0, :cond_1

    .line 199
    new-instance v2, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 200
    .local v2, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 202
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "user"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    const-string v5, "files"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "aid="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and oid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 207
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 229
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    :cond_1
    :goto_1
    return-void

    .line 212
    :cond_2
    new-instance v2, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v5, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 213
    .restart local v2    # "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 216
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .restart local v4    # "values":Landroid/content/ContentValues;
    const-string v5, "aid"

    iget v6, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v5, "oid"

    iget v6, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v5, "artist"

    iget-object v6, v1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v5, "title"

    iget-object v6, v1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v5, "duration"

    iget v6, v1, Lcom/vkontakte/android/AudioFile;->duration:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string v5, "lastplay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v5, "user"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 224
    const-string v5, "lyrics_id"

    iget v6, v1, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v5, "files"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 228
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    goto :goto_1

    .line 226
    :catch_0
    move-exception v5

    goto :goto_2

    .line 205
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static updatePlayTime(II)V
    .locals 9
    .param p0, "oid"    # I
    .param p1, "aid"    # I

    .prologue
    .line 232
    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;

    sget-object v4, Lcom/vkontakte/android/cache/AudioCache;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, "helper":Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 235
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "lastplay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v4, "files"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "aid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and oid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 240
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$CacheOpenHelper;->close()V

    .line 241
    return-void

    .line 238
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
