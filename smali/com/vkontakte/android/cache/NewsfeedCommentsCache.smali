.class public Lcom/vkontakte/android/cache/NewsfeedCommentsCache;
.super Ljava/lang/Object;
.source "NewsfeedCommentsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    }
.end annotation


# static fields
.field private static semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
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

    .line 42
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 43
    new-instance v10, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 44
    .local v10, "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :try_start_1
    const-string v1, "news_comments"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "`last_comment_time` desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 48
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 49
    const/4 v11, 0x0

    .line 50
    .local v11, "i":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    :cond_0
    new-instance v9, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v9}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 53
    .local v9, "entry":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v9, v8, p0}, Lcom/vkontakte/android/NewsEntry;->readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 54
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v11, v11, 0x1

    .line 56
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 61
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v11    # "i":I
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 62
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->close()V

    .line 63
    sget-object v1, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 67
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :goto_1
    return-object v12

    .line 58
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :catch_0
    move-exception v13

    .line 59
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading news_comments cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 65
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 66
    sget-object v1, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    move-object v12, v14

    .line 67
    goto :goto_1
.end method

.method public static getUpdateTime(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "newsfeed_comments_last_update"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 169
    .local v2, "t":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v2    # "t":I
    :goto_0
    return v2

    .line 171
    :catch_0
    move-exception v3

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v2, v3

    goto :goto_0
.end method

.method public static hasEntries(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 148
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 149
    new-instance v2, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 150
    .local v2, "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 151
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT COUNT(*) FROM `news_comments`"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-lez v5, :cond_0

    const/4 v3, 0x1

    .line 154
    .local v3, "result":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 155
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 156
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->close()V

    .line 157
    sget-object v5, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    .end local v3    # "result":Z
    :goto_1
    return v3

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    :cond_0
    move v3, v4

    .line 153
    goto :goto_0

    .line 159
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    :catch_0
    move-exception v5

    .line 160
    sget-object v5, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    move v3, v4

    .line 161
    goto :goto_1
.end method

.method public static remove(IILandroid/content/Context;)V
    .locals 6
    .param p0, "oid"    # I
    .param p1, "pid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 99
    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;

    invoke-direct {v1, p2}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 102
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v3, "news_comments"

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

    .line 106
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 107
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    :goto_1
    sget-object v3, Lcom/vkontakte/android/cache/NewsfeedCommentsCache;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 110
    return-void

    .line 103
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    :catch_0
    move-exception v2

    .line 104
    .local v2, "x":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "vk"

    const-string v4, "Error writing news_comments cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 108
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static replace(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$1;

    invoke-direct {v1, p1, p0}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method public static setUpdateTime(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I

    .prologue
    .line 177
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "newsfeed_comments_last_update"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 179
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 180
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 181
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;IIIIZZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "liked"    # Z
    .param p6, "retweeted"    # Z

    .prologue
    .line 115
    :try_start_0
    new-instance v10, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 116
    .local v10, "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v1, "news_comments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "flags"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "`pid`="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 119
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 144
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    :cond_0
    :goto_0
    return-void

    .line 120
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 122
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "likes"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v1, "comments"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 129
    .local v9, "flags":I
    if-eqz p5, :cond_2

    or-int/lit8 v9, v9, 0x8

    .line 132
    :goto_1
    if-eqz p6, :cond_3

    or-int/lit8 v9, v9, 0x4

    .line 135
    :goto_2
    const-string v1, "flags"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v1, "news_comments"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "`pid`="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "flags":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 141
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;->close()V

    goto :goto_0

    .line 142
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 130
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "flags":I
    .restart local v10    # "helper":Lcom/vkontakte/android/cache/NewsfeedCommentsCache$CacheOpenHelper;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_2
    and-int/lit8 v9, v9, -0x9

    goto :goto_1

    .line 133
    :cond_3
    and-int/lit8 v9, v9, -0x5

    goto :goto_2

    .line 137
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "flags":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v12

    .line 138
    .local v12, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error writing news_comments cache DB!"

    invoke-static {v1, v2, v12}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
