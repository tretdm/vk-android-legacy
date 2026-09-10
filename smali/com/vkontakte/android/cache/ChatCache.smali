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
    .line 25
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
    .line 165
    .local p2, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    new-instance v1, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "helper":Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1}, Lcom/vkontakte/android/cache/CacheTables;->createChat(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 170
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

    .line 171
    :cond_0
    invoke-static {p1, v0}, Lcom/vkontakte/android/cache/ChatCache;->updateStats(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 172
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 185
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 190
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->close()V

    .line 191
    return-void

    .line 175
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 176
    .local v2, "msg":Lcom/vkontakte/android/Message;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 177
    const-string v6, "mid"

    iget v7, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string v6, "sender"

    iget v7, v2, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v6, "text"

    iget-object v7, v2, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v6, "attachments"

    invoke-static {v2}, Lcom/vkontakte/android/cache/ChatCache;->serializeAttachments(Lcom/vkontakte/android/Message;)[B

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 181
    const-string v6, "time"

    iget v7, v2, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string v6, "readstate"

    iget-boolean v7, v2, Lcom/vkontakte/android/Message;->readState:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 183
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

    .line 186
    .end local v2    # "msg":Lcom/vkontakte/android/Message;
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "vk"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 188
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .restart local v4    # "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static get(Landroid/content/Context;I)Ljava/util/Vector;
    .locals 20
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
    .line 72
    new-instance v11, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 73
    .local v11, "helper":Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 74
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 76
    .local v16, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chat"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "time asc"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 77
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 78
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v18, "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v13, Lcom/vkontakte/android/Message;

    invoke-direct {v13}, Lcom/vkontakte/android/Message;-><init>()V

    .line 82
    .local v13, "msg":Lcom/vkontakte/android/Message;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 83
    move-object/from16 v0, v18

    invoke-static {v10, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 84
    const-string v2, "sender"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v13, Lcom/vkontakte/android/Message;->sender:I

    .line 85
    const-string v2, "mid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v13, Lcom/vkontakte/android/Message;->id:I

    .line 86
    const-string v2, "text"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 87
    const-string v2, "time"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v13, Lcom/vkontakte/android/Message;->time:I

    .line 88
    const-string v2, "readstate"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v13, Lcom/vkontakte/android/Message;->readState:Z

    .line 90
    iget v2, v13, Lcom/vkontakte/android/Message;->sender:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v13, Lcom/vkontakte/android/Message;->out:Z

    .line 91
    const-string v2, "attachments"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 92
    .local v9, "att":[B
    if-eqz v9, :cond_2

    .line 93
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v17, "s":Ljava/io/DataInputStream;
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 95
    .local v14, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-lt v12, v14, :cond_6

    .line 98
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 99
    const/4 v12, 0x0

    :goto_3
    if-lt v12, v14, :cond_7

    .line 102
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    .line 103
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 104
    const/4 v12, 0x0

    :goto_4
    if-lt v12, v14, :cond_8

    .line 107
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 108
    const/4 v12, 0x0

    :goto_5
    if-lt v12, v14, :cond_9

    .line 111
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 112
    const/4 v12, 0x0

    :goto_6
    if-lt v12, v14, :cond_a

    .line 116
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_2

    .line 117
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 118
    .local v15, "na":I
    new-array v2, v15, [Lcom/vkontakte/android/Attachment;

    iput-object v2, v13, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 119
    const/4 v12, 0x0

    :goto_7
    if-lt v12, v15, :cond_b

    .line 122
    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v15    # "na":I
    .end local v17    # "s":Ljava/io/DataInputStream;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 80
    if-nez v2, :cond_0

    .line 124
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v9    # "att":[B
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "msg":Lcom/vkontakte/android/Message;
    .end local v18    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 128
    invoke-virtual {v11}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->close()V

    .line 129
    return-object v16

    .line 88
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "msg":Lcom/vkontakte/android/Message;
    .restart local v18    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 90
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 96
    .restart local v9    # "att":[B
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    .restart local v17    # "s":Ljava/io/DataInputStream;
    :cond_6
    :try_start_1
    iget-object v2, v13, Lcom/vkontakte/android/Message;->attachCount:[I

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v12

    .line 95
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 100
    :cond_7
    iget-object v2, v13, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 105
    :cond_8
    iget-object v2, v13, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 109
    :cond_9
    iget-object v2, v13, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 113
    :cond_a
    iget-object v2, v13, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 119
    .restart local v15    # "na":I
    :cond_b
    iget-object v2, v13, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v3

    aput-object v3, v2, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 126
    .end local v9    # "att":[B
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "i":I
    .end local v13    # "msg":Lcom/vkontakte/android/Message;
    .end local v14    # "n":I
    .end local v15    # "na":I
    .end local v17    # "s":Ljava/io/DataInputStream;
    .end local v18    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v19

    .local v19, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static getLastDate(Landroid/content/Context;I)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peerID"    # I

    .prologue
    .line 227
    const/4 v11, 0x0

    .line 228
    .local v11, "result":I
    new-instance v10, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 229
    .local v10, "helper":Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 231
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

    .line 232
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 233
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 235
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    invoke-virtual {v10}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->close()V

    .line 237
    return v11

    .line 234
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static serializeAttachments(Lcom/vkontakte/android/Message;)[B
    .locals 9
    .param p0, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    const/4 v5, 0x0

    .line 134
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v3, "o1":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 136
    .local v2, "o":Ljava/io/DataOutputStream;
    iget-object v6, p0, Lcom/vkontakte/android/Message;->attachCount:[I

    array-length v6, v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 137
    iget-object v7, p0, Lcom/vkontakte/android/Message;->attachCount:[I

    array-length v8, v7

    move v6, v5

    :goto_0
    if-lt v6, v8, :cond_1

    .line 139
    iget-object v6, p0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 140
    iget-object v6, p0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 142
    iget-object v6, p0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 143
    iget-object v6, p0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 145
    iget-object v6, p0, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 146
    iget-object v6, p0, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 148
    iget-object v6, p0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 149
    iget-object v6, p0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 151
    iget-object v6, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-nez v6, :cond_6

    move v6, v5

    :goto_5
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    iget-object v6, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-eqz v6, :cond_0

    .line 153
    iget-object v6, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v7, v6

    :goto_6
    if-lt v5, v7, :cond_7

    .line 158
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 159
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 161
    .end local v2    # "o":Ljava/io/DataOutputStream;
    .end local v3    # "o1":Ljava/io/ByteArrayOutputStream;
    :goto_7
    return-object v5

    .line 137
    .restart local v2    # "o":Ljava/io/DataOutputStream;
    .restart local v3    # "o1":Ljava/io/ByteArrayOutputStream;
    :cond_1
    aget v1, v7, v6

    .local v1, "c":I
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "c":I
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    .end local v2    # "o":Ljava/io/DataOutputStream;
    .end local v3    # "o1":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 161
    const/4 v5, 0x0

    goto :goto_7

    .line 143
    .restart local v2    # "o":Ljava/io/DataOutputStream;
    .restart local v3    # "o1":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "url":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 146
    .end local v4    # "url":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "url":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .line 149
    .end local v4    # "url":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "url":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4

    .line 151
    .end local v4    # "url":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v6, v6

    goto :goto_5

    .line 153
    :cond_7
    aget-object v0, v6, v5

    .line 154
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method

.method public static setReadState(Landroid/content/Context;IIZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "peerID"    # I
    .param p2, "msgID"    # I
    .param p3, "read"    # Z

    .prologue
    .line 214
    new-instance v1, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, "helper":Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1}, Lcom/vkontakte/android/cache/CacheTables;->createChat(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 218
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "readstate"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 220
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

    .line 222
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 223
    invoke-virtual {v1}, Lcom/vkontakte/android/cache/ChatCache$CacheOpenHelper;->close()V

    .line 224
    return-void

    .line 221
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 194
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "peer"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v0, "last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
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

    .line 198
    const-string v0, "stats"

    invoke-virtual {p1, v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 199
    const-string v1, "stats"

    const-string v7, "last_update desc"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 200
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v12, :cond_1

    .line 201
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v9, "peersToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v8, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 204
    :cond_0
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
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

    .line 206
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 203
    if-nez v0, :cond_0

    .line 207
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 208
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

    .line 211
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "peersToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method
