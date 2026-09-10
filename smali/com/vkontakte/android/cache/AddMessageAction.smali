.class public Lcom/vkontakte/android/cache/AddMessageAction;
.super Lcom/vkontakte/android/cache/MessagesAction;
.source "AddMessageAction.java"


# instance fields
.field private m:Lcom/vkontakte/android/Message;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/Message;)V
    .locals 0
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkontakte/android/cache/MessagesAction;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    .line 26
    return-void
.end method


# virtual methods
.method public apply(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 23
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .local v20, "values":Landroid/content/ContentValues;
    const-string v2, "mid"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    const-string v2, "peer"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    const-string v2, "sender"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    const-string v2, "text"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v3, v3, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "time"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 38
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    .local v11, "buf":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 40
    new-instance v18, Ljava/io/DataOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    .local v18, "out":Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 45
    const-string v2, "attachments"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 48
    .end local v11    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "out":Ljava/io/DataOutputStream;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 49
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .restart local v11    # "buf":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 51
    new-instance v18, Ljava/io/DataOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .restart local v18    # "out":Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    .line 54
    const-string v2, "fwd"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 56
    .end local v11    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "out":Ljava/io/DataOutputStream;
    :cond_2
    const/4 v13, 0x0

    .line 57
    .local v13, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v2, :cond_3

    or-int/lit8 v13, v13, 0x1

    .line 58
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v2, :cond_4

    or-int/lit8 v13, v13, 0x2

    .line 59
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_5

    or-int/lit8 v13, v13, 0x4

    .line 61
    :cond_5
    const-string v2, "flags"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 64
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v17, "obj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 66
    .local v16, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 69
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    .line 71
    .local v22, "xtra":Ljava/lang/String;
    const-string v2, "extras"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "obj":Lorg/json/JSONObject;
    .end local v22    # "xtra":Ljava/lang/String;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->out:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v2, :cond_8

    .line 77
    const-string v3, "messages"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "count(*)"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mid="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 78
    .local v12, "crsr":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_7

    .line 79
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "INSERT OR REPLACE INTO messages_unread_counters (peer, unread_count) VALUES (%1$d, COALESCE((SELECT unread_count FROM messages_unread_counters WHERE peer=%1$d), 0)+1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v6, v6, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 80
    .local v19, "query":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    .end local v19    # "query":Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 84
    .end local v12    # "crsr":Landroid/database/Cursor;
    :cond_8
    const-string v2, "messages"

    const/4 v3, 0x0

    const/4 v4, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 86
    return-void

    .line 41
    .end local v13    # "flags":I
    .restart local v11    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "out":Ljava/io/DataOutputStream;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/Attachment;

    .line 42
    .local v10, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v10, :cond_0

    .line 43
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    goto/16 :goto_0

    .line 52
    .end local v10    # "att":Lcom/vkontakte/android/Attachment;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Message$FwdMessage;

    .line 53
    .local v14, "fm":Lcom/vkontakte/android/Message$FwdMessage;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/vkontakte/android/Message$FwdMessage;->serialize(Ljava/io/DataOutputStream;)V

    goto/16 :goto_1

    .line 66
    .end local v11    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "fm":Lcom/vkontakte/android/Message$FwdMessage;
    .end local v18    # "out":Ljava/io/DataOutputStream;
    .restart local v13    # "flags":I
    .restart local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "obj":Lorg/json/JSONObject;
    :cond_b
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 67
    .local v15, "k":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v3, v3, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 72
    .end local v15    # "k":Ljava/lang/String;
    .end local v16    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v21

    .line 73
    .local v21, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    const-string v3, "Error serializing extras for message!"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method
