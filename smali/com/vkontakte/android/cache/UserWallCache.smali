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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V
    .locals 5
    .param p0, "entry"    # Lcom/vkontakte/android/NewsEntry;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    new-instance v1, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 85
    .local v1, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "wall"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/NewsEntry;->writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 92
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V

    .line 93
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 89
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing wall cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14
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
    .line 38
    new-instance v10, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 39
    .local v10, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 40
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
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

    .line 43
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 44
    const/4 v11, 0x0

    .line 45
    .local v11, "i":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 47
    :cond_0
    new-instance v9, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v9}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 48
    .local v9, "entry":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v9, v8, p0}, Lcom/vkontakte/android/NewsEntry;->readFromSQLite(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 49
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iput v1, v9, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 50
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v11, v11, 0x1

    .line 52
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 58
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v11    # "i":I
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :goto_1
    return-object v12

    .line 54
    :catch_0
    move-exception v13

    .line 55
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading wall cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
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

    invoke-static {v6, v7, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 139
    goto :goto_1
.end method

.method public static remove(ILandroid/content/Context;)V
    .locals 6
    .param p0, "pid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    new-instance v1, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "wall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "`pid`="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V

    .line 105
    return-void

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing wall cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static replace(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 9
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
    .line 65
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    new-instance v2, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 67
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 69
    :try_start_0
    const-string v5, "wall"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 71
    .local v1, "entry":Lcom/vkontakte/android/NewsEntry;
    const-string v5, "wall"

    invoke-virtual {v1, v0, v5}, Lcom/vkontakte/android/NewsEntry;->writeToSQLite(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v1    # "entry":Lcom/vkontakte/android/NewsEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 75
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "Error writing wall cache DB!"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v4    # "x":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 79
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {p1, v5}, Lcom/vkontakte/android/cache/UserWallCache;->setUpdateTime(Landroid/content/Context;I)V

    .line 81
    return-void

    .line 73
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "liked"    # Z

    .prologue
    .line 108
    new-instance v2, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 109
    .local v2, "helper":Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "flags"

    .line 112
    .local v1, "flagsAct":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 113
    const-string v1, "flags|8"

    .line 117
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE wall SET likes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", comments="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "flagsAct":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 122
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/UserWallCache$CacheOpenHelper;->close()V

    .line 123
    return-void

    .line 115
    .restart local v1    # "flagsAct":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v1, "flags&-9"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "flagsAct":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 119
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing wall cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
