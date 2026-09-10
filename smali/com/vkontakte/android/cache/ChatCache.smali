.class public Lcom/vkontakte/android/cache/ChatCache;
.super Ljava/lang/Object;
.source "ChatCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;
    }
.end annotation


# static fields
.field private static final MAX_DIALOGS:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peerID"    # I
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    new-instance v1, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "helper":Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 157
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1}, Lcom/vkontakte/android/cache/CacheTables;->createChat(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 158
    if-eqz p3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chat"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    :cond_0
    invoke-static {p1, v0}, Lcom/vkontakte/android/cache/ChatCache;->updateStats(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 160
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 173
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 178
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->close()V

    .line 179
    return-void

    .line 163
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 164
    .local v2, "msg":Lcom/vkontakte/android/Message;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 165
    const-string v6, "mid"

    iget v7, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v6, "sender"

    iget v7, v2, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v6, "text"

    iget-object v7, v2, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v6, "attachments"

    invoke-static {v2}, Lcom/vkontakte/android/cache/ChatCache;->serializeAttachments(Lcom/vkontakte/android/Message;)[B

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 169
    const-string v6, "time"

    iget v7, v2, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v6, "readstate"

    iget-boolean v7, v2, Lcom/vkontakte/android/Message;->readState:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chat"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 174
    .end local v2    # "msg":Lcom/vkontakte/android/Message;
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 176
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .restart local v4    # "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static get(Landroid/content/Context;I)Ljava/util/Vector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peerID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLastDate(Landroid/content/Context;I)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peerID"    # I

    .prologue
    .line 215
    const/4 v11, 0x0

    .line 216
    .local v11, "result":I
    new-instance v10, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 217
    .local v10, "helper":Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 219
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chat"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "time"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time desc"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 220
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 223
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 224
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->close()V

    .line 225
    return v11

    .line 222
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static serializeAttachments(Lcom/vkontakte/android/Message;)[B
    .locals 5
    .param p0, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 136
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v2, "o1":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 140
    .local v1, "o":Ljava/io/DataOutputStream;
    iget-object v3, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 147
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 149
    .end local v1    # "o":Ljava/io/DataOutputStream;
    .end local v2    # "o1":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v3

    .line 141
    .restart local v1    # "o":Ljava/io/DataOutputStream;
    .restart local v2    # "o1":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 142
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    .end local v1    # "o":Ljava/io/DataOutputStream;
    .end local v2    # "o1":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 149
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static setReadState(Landroid/content/Context;IIZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peerID"    # I
    .param p2, "msgID"    # I
    .param p3, "read"    # Z

    .prologue
    .line 202
    new-instance v1, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 203
    .local v1, "helper":Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 205
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1}, Lcom/vkontakte/android/cache/CacheTables;->createChat(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 206
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "readstate"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chat"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 211
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->close()V

    .line 212
    return-void

    .line 209
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updateStats(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p0, "peerID"    # I
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v12, 0x32

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 182
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "peer"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v0, "last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v0, "stats"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "peer="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 186
    const-string v0, "stats"

    invoke-virtual {p1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 187
    const-string v1, "stats"

    const-string v7, "last_update desc"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 188
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v12, :cond_1

    .line 189
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v9, "peersToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v8, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 192
    :cond_0
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE chat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 194
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 196
    const-string v0, "stats"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "peer IN ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-static {v3, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "peersToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method
