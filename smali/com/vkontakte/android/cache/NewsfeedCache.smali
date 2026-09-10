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
    .line 42
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

    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public static add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
    .locals 5
    .param p0, "entry"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    :try_start_0
    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 136
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v3, "news"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/NewsEntry;->writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 141
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 144
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_1
    return-void

    .line 137
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing news cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 142
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

    .line 46
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 47
    new-instance v10, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 48
    .local v10, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
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

    .line 52
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 53
    const/4 v11, 0x0

    .line 54
    .local v11, "i":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    :cond_0
    new-instance v9, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v9}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 57
    .local v9, "entry":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v9, v8, p0}, Lcom/vkontakte/android/NewsEntry;->readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 58
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v11, v11, 0x1

    .line 60
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 65
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v11    # "i":I
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 66
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 67
    sget-object v1, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 71
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :goto_1
    return-object v12

    .line 62
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :catch_0
    move-exception v13

    .line 63
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading news cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 69
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 70
    sget-object v1, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    move-object v12, v14

    .line 71
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
    .line 224
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsfeedList;>;"
    :try_start_0
    new-instance v9, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v9, v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 227
    .local v9, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 229
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

    .line 230
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v11, "values":Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 232
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 234
    :cond_0
    invoke-static {v8, v11}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 235
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

    .line 236
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 243
    invoke-virtual {v9}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 245
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_1
    return-object v10

    .line 239
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :catch_0
    move-exception v12

    .line 240
    .local v12, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading news cache DB!"

    invoke-static {v1, v2, v12}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 244
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

    .line 77
    :try_start_0
    new-instance v10, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 78
    .local v10, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 79
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    new-array v12, v1, [Lcom/vkontakte/android/NewsEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
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

    .line 82
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 83
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v12, v1, [Lcom/vkontakte/android/NewsEntry;

    .line 84
    const/4 v11, 0x0

    .line 85
    .local v11, "i":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    :cond_0
    new-instance v9, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v9}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 88
    .local v9, "entry":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v9, v8, p0}, Lcom/vkontakte/android/NewsEntry;->readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 89
    aput-object v9, v12, v11

    .line 90
    add-int/lit8 v11, v11, 0x1

    .line 91
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 96
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v11    # "i":I
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 97
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V

    .line 102
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "result":[Lcom/vkontakte/android/NewsEntry;
    :goto_1
    return-object v12

    .line 93
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .restart local v12    # "result":[Lcom/vkontakte/android/NewsEntry;
    :catch_0
    move-exception v13

    .line 94
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading news cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 100
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "result":[Lcom/vkontakte/android/NewsEntry;
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v12, v14

    .line 102
    goto :goto_1
.end method

.method public static getUpdateTime(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "newsfeed_last_update"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 295
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 296
    .local v2, "t":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v2    # "t":I
    :goto_0
    return v2

    .line 298
    :catch_0
    move-exception v3

    .line 299
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

    .line 274
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 275
    .local v2, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 276
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT COUNT(*) FROM `news`"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 277
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 278
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v3, 0x1

    .line 279
    .local v3, "result":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 280
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 281
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
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

    .line 278
    goto :goto_0

    .line 284
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :catch_0
    move-exception v4

    .line 285
    .local v4, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    const-string v7, "Error reading news cache DB!"

    invoke-static {v6, v7, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 288
    goto :goto_1
.end method

.method public static remove(IILandroid/content/Context;)V
    .locals 6
    .param p0, "oid"    # I
    .param p1, "pid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 149
    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v1, p2}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

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

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "`pid`="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 156
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 157
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_1
    sget-object v3, Lcom/vkontakte/android/cache/NewsfeedCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 160
    return-void

    .line 153
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "x":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "vk"

    const-string v4, "Error writing news cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 158
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
    .line 106
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/NewsEntry;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCache$1;

    invoke-direct {v1, p1, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method public static setLists(Ljava/util/ArrayList;)V
    .locals 8
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
    .line 250
    .local p0, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsfeedList;>;"
    :try_start_0
    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 253
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 254
    const-string v5, "feed_lists"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 266
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 267
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 269
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_2
    return-void

    .line 256
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsfeedList;

    .line 257
    .local v2, "list":Lcom/vkontakte/android/NewsfeedList;
    const-string v6, "lid"

    iget v7, v2, Lcom/vkontakte/android/NewsfeedList;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v6, "title"

    iget-object v7, v2, Lcom/vkontakte/android/NewsfeedList;->title:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v6, "feed_lists"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 262
    .end local v2    # "list":Lcom/vkontakte/android/NewsfeedList;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 263
    .local v4, "x":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "vk"

    const-string v6, "Error reading news cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 268
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public static setUpdateTime(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I

    .prologue
    .line 304
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "newsfeed_last_update"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 306
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 307
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 308
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;IIIIIZZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "retweets"    # I
    .param p6, "liked"    # Z
    .param p7, "retweeted"    # Z

    .prologue
    .line 165
    :try_start_0
    new-instance v10, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 166
    .local v10, "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 168
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 169
    .local v9, "flags":I
    :try_start_1
    const-string v1, "news"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "flags"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "`pid`="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND `uid`="

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

    .line 170
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 171
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 172
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 179
    :goto_0
    if-nez v9, :cond_1

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 180
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 182
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 188
    :goto_1
    if-nez v9, :cond_2

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 189
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 190
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 199
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "likes"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v1, "comments"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    if-eqz p6, :cond_3

    or-int/lit8 v9, v9, 0x8

    .line 206
    :goto_2
    if-eqz p7, :cond_4

    or-int/lit8 v9, v9, 0x4

    .line 209
    :goto_3
    const-string v1, "flags"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v1, "news"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "`pid`="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND `uid`="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    const-string v1, "news_comments"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "`pid`="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND `uid`="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    const-string v1, "wall"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "`pid`="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND `uid`="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 218
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "flags":I
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :goto_5
    return-void

    .line 175
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "flags":I
    .restart local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    :cond_0
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 176
    const-string v1, "news_comments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "flags"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "`pid`="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND `uid`="

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

    goto/16 :goto_0

    .line 184
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 185
    const-string v1, "wall"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "flags"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "`pid`="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND `uid`="

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

    goto/16 :goto_1

    .line 193
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 195
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 214
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 215
    .local v12, "x":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "vk"

    const-string v2, "Error writing news cache DB!"

    invoke-static {v1, v2, v12}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 219
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "flags":I
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .end local v12    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_5

    .line 204
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "flags":I
    .restart local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCache$CacheOpenHelper;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_3
    and-int/lit8 v9, v9, -0x9

    goto/16 :goto_2

    .line 207
    :cond_4
    and-int/lit8 v9, v9, -0x5

    goto/16 :goto_3
.end method
