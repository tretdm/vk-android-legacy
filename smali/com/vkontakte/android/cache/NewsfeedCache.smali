.class public Lcom/vkontakte/android/cache/NewsfeedCache;
.super Ljava/lang/Object;
.source "NewsfeedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    }
.end annotation


# static fields
.field private static semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public static add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
    .locals 5
    .param p0, "entry"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    :try_start_0
    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 152
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v3, "news"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/NewsEntry;->writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 157
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 160
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_1
    return-void

    .line 153
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing news cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 158
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 62
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 63
    new-instance v10, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 64
    .local v10, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :try_start_1
    const-string v1, "news"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "`time` desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 68
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 69
    const/4 v11, 0x0

    .line 70
    .local v11, "i":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    :cond_0
    new-instance v9, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v9}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 73
    .local v9, "entry":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v9, v8, p0}, Lcom/vkontakte/android/NewsEntry;->readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 74
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v11, v11, 0x1

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 81
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v11    # "i":I
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 83
    sget-object v1, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 87
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :goto_1
    return-object v12

    .line 78
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :catch_0
    move-exception v13

    .line 79
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading news cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 85
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 86
    sget-object v1, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    move-object v12, v14

    .line 87
    goto :goto_1
.end method

.method public static getLists()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsfeedList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsfeedList;>;"
    :try_start_0
    new-instance v9, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 246
    .local v9, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 248
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v1, "feed_lists"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 249
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v11, "values":Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 251
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    :cond_0
    invoke-static {v8, v11}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 254
    new-instance v1, Lcom/vkontakte/android/NewsfeedList;

    const-string v2, "lid"

    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "title"

    invoke-virtual {v11, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/NewsfeedList;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 262
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 264
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_1
    return-object v10

    .line 258
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :catch_0
    move-exception v12

    .line 259
    .local v12, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading news cache DB!"

    invoke-static {v1, v2, v12}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 263
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getPostsOnly(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x0

    .line 93
    :try_start_0
    new-instance v10, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 94
    .local v10, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    new-array v12, v1, [Lcom/vkontakte/android/NewsEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .local v12, "result":[Lcom/vkontakte/android/NewsEntry;
    :try_start_1
    const-string v1, "news"

    const/4 v2, 0x0

    const-string v3, "`flags`<16777216"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "`time` desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 98
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 99
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v12, v1, [Lcom/vkontakte/android/NewsEntry;

    .line 100
    const/4 v11, 0x0

    .line 101
    .local v11, "i":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 103
    :cond_0
    new-instance v9, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v9}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 104
    .local v9, "entry":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v9, v8, p0}, Lcom/vkontakte/android/NewsEntry;->readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 105
    aput-object v9, v12, v11

    .line 106
    add-int/lit8 v11, v11, 0x1

    .line 107
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 112
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v11    # "i":I
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 113
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 118
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "result":[Lcom/vkontakte/android/NewsEntry;
    :goto_1
    return-object v12

    .line 109
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .restart local v12    # "result":[Lcom/vkontakte/android/NewsEntry;
    :catch_0
    move-exception v13

    .line 110
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading news cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 116
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "result":[Lcom/vkontakte/android/NewsEntry;
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v12, v14

    .line 118
    goto :goto_1
.end method

.method public static getUpdateTime(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "newsfeed_last_update"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 314
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 315
    .local v2, "t":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v2    # "t":I
    :goto_0
    return v2

    .line 317
    :catch_0
    move-exception v3

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v2, v3

    goto :goto_0
.end method

.method public static hasEntries(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 293
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 294
    .local v2, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 295
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT COUNT(*) FROM `news`"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 296
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v3, 0x1

    .line 298
    .local v3, "result":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 299
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 300
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v3    # "result":Z
    :goto_1
    return v3

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :cond_0
    move v3, v5

    .line 297
    goto :goto_0

    .line 303
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :catch_0
    move-exception v4

    .line 304
    .local v4, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    const-string v7, "Error reading news cache DB!"

    invoke-static {v6, v7, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 307
    goto :goto_1
.end method

.method public static remove(IILandroid/content/Context;)V
    .locals 6
    .param p0, "oid"    # I
    .param p1, "pid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 165
    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v1, p2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 168
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v3, "news"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "`pid`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND `uid`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 173
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_1
    sget-object v3, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 176
    return-void

    .line 169
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "x":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "vk"

    const-string v4, "Error writing news cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 174
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static replace(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/NewsEntry;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCache$1;

    invoke-direct {v1, p1, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method

.method public static setLists(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsfeedList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsfeedList;>;"
    :try_start_0
    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 270
    .local v1, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 272
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 273
    const-string v6, "feed_lists"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 275
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsfeedList;

    .line 276
    .local v3, "list":Lcom/vkontakte/android/NewsfeedList;
    const-string v6, "lid"

    iget v7, v3, Lcom/vkontakte/android/NewsfeedList;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v6, "title"

    iget-object v7, v3, Lcom/vkontakte/android/NewsfeedList;->title:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v6, "feed_lists"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 281
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Lcom/vkontakte/android/NewsfeedList;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 282
    .local v5, "x":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "vk"

    const-string v7, "Error reading news cache DB!"

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .end local v5    # "x":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 285
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 286
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 288
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_2
    return-void

    .line 280
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 287
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static setUpdateTime(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I

    .prologue
    .line 323
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "newsfeed_last_update"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 325
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 326
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 327
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;IIIIIZZ)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "retweets"    # I
    .param p6, "liked"    # Z
    .param p7, "retweeted"    # Z

    .prologue
    .line 181
    :try_start_0
    new-instance v11, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 182
    .local v11, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 184
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 185
    .local v10, "flags":I
    :try_start_1
    const-string v2, "news"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "flags"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "`pid`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND `uid`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 186
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 187
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 195
    :goto_0
    if-nez v10, :cond_3

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 196
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 197
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 198
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 204
    :goto_1
    if-nez v10, :cond_4

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 205
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 206
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 207
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 215
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v12, "values":Landroid/content/ContentValues;
    const-string v2, "likes"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    .line 218
    const-string v2, "comments"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    :cond_0
    if-eqz p6, :cond_5

    or-int/lit8 v10, v10, 0x8

    .line 223
    :goto_2
    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_1

    .line 224
    if-eqz p7, :cond_6

    or-int/lit8 v10, v10, 0x4

    .line 228
    :cond_1
    :goto_3
    const-string v2, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v2, "news"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "`pid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND `uid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    const-string v2, "news_comments"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "`pid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND `uid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 232
    const-string v2, "wall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "`pid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND `uid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "values":Landroid/content/ContentValues;
    :goto_4
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 237
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "flags":I
    .end local v11    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_5
    return-void

    .line 191
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "flags":I
    .restart local v11    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 192
    const-string v2, "news_comments"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "flags"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "`pid`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND `uid`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    .line 200
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 201
    const-string v2, "wall"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "flags"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "`pid`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND `uid`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_1

    .line 209
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 210
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 211
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 233
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 234
    .local v13, "x":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "vk"

    const-string v3, "Error writing news cache DB!"

    invoke-static {v2, v3, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 238
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "flags":I
    .end local v11    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto/16 :goto_5

    .line 221
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "flags":I
    .restart local v11    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_5
    and-int/lit8 v10, v10, -0x9

    goto/16 :goto_2

    .line 225
    :cond_6
    and-int/lit8 v10, v10, -0x5

    goto/16 :goto_3
.end method
