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
    .line 19
    invoke-direct {p0}, Lcom/vkontakte/android/cache/MessagesAction;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "mid"

    iget-object v7, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v7, v7, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    const-string v6, "peer"

    iget-object v7, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v7, v7, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    const-string v6, "sender"

    iget-object v7, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v7, v7, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const-string v6, "text"

    iget-object v7, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v7, v7, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v6, "time"

    iget-object v7, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget v7, v7, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v6, v6, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v6, v6, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 33
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v6, v6, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    .local v4, "out":Ljava/io/DataOutputStream;
    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v6, v6, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 40
    const-string v6, "attachments"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 43
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v6, v6, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v6, v6, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 44
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    .restart local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v6, v6, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-object v6, v6, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 49
    const-string v6, "fwd"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 51
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :cond_2
    const/4 v2, 0x0

    .line 52
    .local v2, "flags":I
    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-boolean v6, v6, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v6, :cond_3

    or-int/lit8 v2, v2, 0x1

    .line 53
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-boolean v6, v6, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v6, :cond_4

    or-int/lit8 v2, v2, 0x2

    .line 54
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/cache/AddMessageAction;->m:Lcom/vkontakte/android/Message;

    iget-boolean v6, v6, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v6, :cond_5

    or-int/lit8 v2, v2, 0x4

    .line 56
    :cond_5
    const-string v6, "flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v6, "messages"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {p1, v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 59
    return-void

    .line 36
    .end local v2    # "flags":I
    .restart local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "out":Ljava/io/DataOutputStream;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 37
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, v4}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 47
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message$FwdMessage;

    .line 48
    .local v3, "fm":Lcom/vkontakte/android/Message$FwdMessage;
    invoke-virtual {v3, v4}, Lcom/vkontakte/android/Message$FwdMessage;->serialize(Ljava/io/DataOutputStream;)V

    goto :goto_1
.end method
