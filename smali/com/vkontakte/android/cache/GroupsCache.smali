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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static add(Lcom/vkontakte/android/api/Group;Landroid/content/Context;)V
    .locals 6
    .param p0, "g"    # Lcom/vkontakte/android/api/Group;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    new-instance v1, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 151
    .local v1, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 153
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "id"

    iget v5, p0, Lcom/vkontakte/android/api/Group;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v4, "title"

    iget-object v5, p0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v4, "photo"

    iget-object v5, p0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v4, "type"

    iget v5, p0, Lcom/vkontakte/android/api/Group;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v4, "groups"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 163
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V

    .line 164
    return-void

    .line 159
    :catch_0
    move-exception v3

    .line 160
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    const-string v5, "Error writing friends cache DB!"

    invoke-static {v4, v5, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static get()Ljava/util/Vector;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 48
    new-instance v10, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 49
    .local v10, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 50
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 52
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

    .line 53
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 54
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 55
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v12, "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v8, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 59
    new-instance v9, Lcom/vkontakte/android/api/Group;

    invoke-direct {v9}, Lcom/vkontakte/android/api/Group;-><init>()V

    .line 60
    .local v9, "group":Lcom/vkontakte/android/api/Group;
    const-string v1, "id"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->id:I

    .line 61
    const-string v1, "title"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 62
    const-string v1, "photo"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 63
    const-string v1, "type"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->type:I

    .line 64
    const-string v1, "event_time"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->startTime:I

    .line 65
    const-string v1, "closed"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->isClosed:I

    .line 66
    const-string v1, "admin"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v14, :cond_2

    move v1, v14

    :goto_0
    iput-boolean v1, v9, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    .line 67
    const-string v1, "admin_level"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/api/Group;->adminLevel:I

    .line 70
    invoke-virtual {v11, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 77
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "group":Lcom/vkontakte/android/api/Group;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 78
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :goto_2
    return-object v11

    .line 66
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "group":Lcom/vkontakte/android/api/Group;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "group":Lcom/vkontakte/android/api/Group;
    .end local v12    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v13

    .line 74
    .local v13, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error reading groups cache DB!"

    invoke-static {v1, v2, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 79
    .end local v13    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static get(Landroid/content/Context;I)Ljava/util/Vector;
    .locals 16
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
    .line 84
    new-instance v11, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 85
    .local v11, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 86
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 87
    .local v13, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    const/4 v12, 0x0

    .line 89
    .local v12, "i":I
    :try_start_0
    const-string v2, "groups"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 90
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 91
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v14, "values":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v9, v14}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 95
    new-instance v10, Lcom/vkontakte/android/api/Group;

    invoke-direct {v10}, Lcom/vkontakte/android/api/Group;-><init>()V

    .line 96
    .local v10, "group":Lcom/vkontakte/android/api/Group;
    const-string v2, "id"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkontakte/android/api/Group;->id:I

    .line 97
    const-string v2, "title"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 98
    const-string v2, "photo"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 99
    const-string v2, "type"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkontakte/android/api/Group;->type:I

    .line 100
    const-string v2, "event_time"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkontakte/android/api/Group;->startTime:I

    .line 101
    const-string v2, "closed"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkontakte/android/api/Group;->isClosed:I

    .line 102
    const-string v2, "admin"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v10, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    .line 103
    const-string v2, "admin_level"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lcom/vkontakte/android/api/Group;->adminLevel:I

    .line 104
    invoke-virtual {v13, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v12, v12, 0x1

    .line 106
    move/from16 v0, p1

    if-ge v12, v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 112
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "group":Lcom/vkontakte/android/api/Group;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 113
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :goto_1
    return-object v13

    .line 108
    :catch_0
    move-exception v15

    .line 109
    .local v15, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error reading groups cache DB!"

    invoke-static {v2, v3, v15}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    .end local v15    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static hasEntries(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 180
    :try_start_0
    new-instance v2, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 181
    .local v2, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 182
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "SELECT COUNT(*) FROM `groups`"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v3, 0x1

    .line 185
    .local v3, "result":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 187
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
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

    .line 184
    goto :goto_0

    .line 189
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    :catch_0
    move-exception v4

    .line 190
    .local v4, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    const-string v7, "Error reading groups cache DB!"

    invoke-static {v6, v7, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v5

    .line 192
    goto :goto_1
.end method

.method public static remove(ILandroid/content/Context;)V
    .locals 6
    .param p0, "gid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    new-instance v1, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 170
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v3, "groups"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "`id`="

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

    .line 174
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 175
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V

    .line 176
    return-void

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    const-string v4, "Error writing groups cache DB!"

    invoke-static {v3, v4, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static replace(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    new-instance v2, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 120
    .local v2, "helper":Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;
    const/4 v0, 0x0

    .line 122
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 124
    const-string v6, "groups"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 126
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "id"

    iget v7, v1, Lcom/vkontakte/android/api/Group;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v6, "title"

    iget-object v7, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v6, "photo"

    iget-object v7, v1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v6, "type"

    iget v7, v1, Lcom/vkontakte/android/api/Group;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v6, "closed"

    iget v7, v1, Lcom/vkontakte/android/api/Group;->isClosed:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v6, "admin"

    iget-boolean v7, v1, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 133
    const-string v6, "admin_level"

    iget v7, v1, Lcom/vkontakte/android/api/Group;->adminLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v6, "event_time"

    iget v7, v1, Lcom/vkontakte/android/api/Group;->startTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v6, "groups"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 139
    .local v5, "x":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "vk"

    const-string v7, "Error writing groups cache DB!"

    invoke-static {v6, v7, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    .end local v5    # "x":Ljava/lang/Exception;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 146
    :cond_1
    invoke-virtual {v2}, Lcom/vkontakte/android/cache/GroupsCache$CacheOpenHelper;->close()V

    .line 147
    return-void

    .line 137
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 141
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v6
.end method
