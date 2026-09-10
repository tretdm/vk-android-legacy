.class public Lcom/vkontakte/android/cache/UserWallCache;
.super Ljava/lang/Object;
.source "UserWallCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
    .locals 5
    .param p0, "entry"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    new-instance v1, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "wall"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/NewsEntry;->writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 94
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V

    .line 95
    return-void

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing wall cache DB!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)[Lcom/vkontakte/android/NewsEntry;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    new-instance v10, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 40
    .local v10, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    new-array v12, v1, [Lcom/vkontakte/android/NewsEntry;

    .line 43
    .local v12, "result":[Lcom/vkontakte/android/NewsEntry;
    :try_start_0
    const-string v1, "wall"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "`time` desc"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 44
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 45
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v12, v1, [Lcom/vkontakte/android/NewsEntry;

    .line 46
    const/4 v11, 0x0

    .line 47
    .local v11, "i":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    :cond_0
    new-instance v9, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v9}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 50
    .local v9, "entry":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v9, v8, p0}, Lcom/vkontakte/android/NewsEntry;->readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 51
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iput v1, v9, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 52
    aput-object v9, v12, v11

    .line 53
    add-int/lit8 v11, v11, 0x1

    .line 54
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 60
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v11    # "i":I
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :goto_1
    return-object v12

    .line 56
    :catch_0
    move-exception v13

    .line 57
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading wall cache DB!"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getUpdateTime(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "wall_last_update"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 147
    .local v2, "t":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v2    # "t":I
    :goto_0
    return v2

    .line 149
    :catch_0
    move-exception v3

    .line 150
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

    .line 127
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 128
    .local v2, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 129
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT COUNT(*) FROM `wall`"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 130
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v3, 0x1

    .line 132
    .local v3, "result":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    .end local v3    # "result":Z
    :goto_1
    return v3

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    :cond_0
    move v3, v5

    .line 131
    goto :goto_0

    .line 136
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    :catch_0
    move-exception v4

    .line 137
    .local v4, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    const-string v7, "Error reading wall cache DB!"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    .line 139
    goto :goto_1
.end method

.method public static remove(ILandroid/content/Context;)V
    .locals 6
    .param p0, "pid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    new-instance v1, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "news"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "`pid`="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 106
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V

    .line 107
    return-void

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing wall cache DB!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static replace([Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
    .locals 8
    .param p0, "items"    # [Lcom/vkontakte/android/NewsEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v2, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 68
    .local v2, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 69
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 71
    :try_start_0
    const-string v4, "wall"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    array-length v5, p0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {p1, v4}, Lcom/vkontakte/android/cache/UserWallCache;->setUpdateTime(Landroid/content/Context;I)V

    .line 83
    return-void

    .line 72
    :cond_0
    :try_start_1
    aget-object v1, p0, v4

    .line 73
    .local v1, "entry":Lcom/vkontakte/android/NewsEntry;
    const-string v6, "wall"

    invoke-virtual {v1, v0, v6}, Lcom/vkontakte/android/NewsEntry;->writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "entry":Lcom/vkontakte/android/NewsEntry;
    :catch_0
    move-exception v3

    .line 77
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing wall cache DB!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static setUpdateTime(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # I

    .prologue
    .line 155
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "wall_last_update"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 157
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 158
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 159
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;IIIIZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "liked"    # Z

    .prologue
    .line 110
    new-instance v1, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "likes"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v4, "comments"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v4, "is_liked"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 117
    const-string v4, "wall"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "`pid`="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 122
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V

    .line 123
    return-void

    .line 118
    :catch_0
    move-exception v3

    .line 119
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing wall cache DB!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
