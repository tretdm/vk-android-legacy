.class public Lcom/vkontakte/android/cache/GroupsCache;
.super Ljava/lang/Object;
.source "GroupsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/vkontakte/android/api/Group;Landroid/content/Context;)V
    .locals 6
    .param p0, "g"    # Lcom/vkontakte/android/api/Group;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    new-instance v1, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 121
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "id"

    iget v5, p0, Lcom/vkontakte/android/api/Group;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v4, "title"

    iget-object v5, p0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v4, "photo"

    iget-object v5, p0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v4, "type"

    iget v5, p0, Lcom/vkontakte/android/api/Group;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v4, "groups"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V

    .line 132
    return-void

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing friends cache DB!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Ljava/util/Vector;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v10, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 35
    .local v10, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 36
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 38
    .local v11, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :try_start_0
    const-string v1, "groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 39
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 40
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 42
    :cond_0
    new-instance v9, Lcom/vkontakte/android/api/Group;

    invoke-direct {v9}, Lcom/vkontakte/android/api/Group;-><init>()V

    .line 43
    .local v9, "group":Lcom/vkontakte/android/api/Group;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->id:I

    .line 44
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 45
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 46
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->type:I

    .line 47
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->startTime:I

    .line 48
    invoke-virtual {v11, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 55
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "group":Lcom/vkontakte/android/api/Group;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 56
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :goto_1
    return-object v11

    .line 51
    :catch_0
    move-exception v12

    .line 52
    .local v12, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading groups cache DB!"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v12    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;I)Ljava/util/Vector;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v10, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 63
    .local v10, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 65
    .local v12, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    const/4 v11, 0x0

    .line 67
    .local v11, "i":I
    :try_start_0
    const-string v1, "groups"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 68
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 69
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    :cond_0
    new-instance v9, Lcom/vkontakte/android/api/Group;

    invoke-direct {v9}, Lcom/vkontakte/android/api/Group;-><init>()V

    .line 72
    .local v9, "group":Lcom/vkontakte/android/api/Group;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->id:I

    .line 73
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 74
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 75
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->type:I

    .line 76
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->startTime:I

    .line 77
    invoke-virtual {v12, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v11, v11, 0x1

    .line 79
    if-ge v11, p1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    if-nez v1, :cond_0

    .line 85
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "group":Lcom/vkontakte/android/api/Group;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 86
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :goto_1
    return-object v12

    .line 81
    :catch_0
    move-exception v13

    .line 82
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading groups cache DB!"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 87
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static hasEntries(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 148
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 149
    .local v2, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 150
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT COUNT(*) FROM `groups`"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v3, 0x1

    .line 153
    .local v3, "result":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 155
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    .end local v3    # "result":Z
    :goto_1
    return v3

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    :cond_0
    move v3, v5

    .line 152
    goto :goto_0

    .line 157
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    :catch_0
    move-exception v4

    .line 158
    .local v4, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    const-string v7, "Error reading groups cache DB!"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    .line 160
    goto :goto_1
.end method

.method public static remove(ILandroid/content/Context;)V
    .locals 6
    .param p0, "gid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    new-instance v1, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 136
    .local v1, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 138
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "groups"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "`id`="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 143
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V

    .line 144
    return-void

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing groups cache DB!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static replace(Ljava/util/Vector;Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "items":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    new-instance v2, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 93
    .local v2, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 97
    :try_start_0
    const-string v5, "groups"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 114
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V

    .line 115
    return-void

    .line 98
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 99
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "id"

    iget v7, v1, Lcom/vkontakte/android/api/Group;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v6, "title"

    iget-object v7, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v6, "photo"

    iget-object v7, v1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v6, "type"

    iget v7, v1, Lcom/vkontakte/android/api/Group;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v6, "event_time"

    iget v7, v1, Lcom/vkontakte/android/api/Group;->startTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v6, "groups"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 109
    .local v4, "x":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "vk"

    const-string v6, "Error writing groups cache DB!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 110
    .end local v4    # "x":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 112
    throw v5
.end method
