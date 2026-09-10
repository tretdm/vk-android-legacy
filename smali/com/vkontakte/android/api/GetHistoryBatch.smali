.class public Lcom/vkontakte/android/api/GetHistoryBatch;
.super Lcom/vkontakte/android/APIRequest;
.source "GetHistoryBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GetHistoryBatch$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GetHistoryBatch$Callback;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "execute"

    invoke-direct {p0, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v2, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 25
    .local v1, "pid":I
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "{peer:%1$d,messages:API.messages.getHistory({uid:%1$d,count:20})}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    .end local v1    # "pid":I
    :cond_0
    const-string v3, "code"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "];"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/api/GetHistoryBatch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 28
    return-void
.end method

.method private parseOneMessage(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Message;
    .locals 8
    .param p1, "jm"    # Lorg/json/JSONObject;
    .param p2, "peer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 31
    new-instance v3, Lcom/vkontakte/android/Message;

    invoke-direct {v3}, Lcom/vkontakte/android/Message;-><init>()V

    .line 32
    .local v3, "msg":Lcom/vkontakte/android/Message;
    const-string v4, "mid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/vkontakte/android/Message;->id:I

    .line 33
    const-string v4, "from_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v7, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, v3, Lcom/vkontakte/android/Message;->out:Z

    .line 34
    const-string v4, "from_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/vkontakte/android/Message;->sender:I

    .line 35
    sget v4, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v7, "date"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    iput v4, v3, Lcom/vkontakte/android/Message;->time:I

    .line 36
    const-string v4, "body"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 37
    const-string v4, "read_state"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_1

    :goto_1
    iput-boolean v5, v3, Lcom/vkontakte/android/Message;->readState:Z

    .line 38
    iput p2, v3, Lcom/vkontakte/android/Message;->peer:I

    .line 40
    const-string v4, "attachments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    const-string v4, "attachments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 42
    .local v2, "ja":Lorg/json/JSONArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v1    # "j":I
    .end local v2    # "ja":Lorg/json/JSONArray;
    :cond_0
    move v4, v6

    .line 33
    goto :goto_0

    :cond_1
    move v5, v6

    .line 37
    goto :goto_1

    .line 44
    .restart local v0    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v1    # "j":I
    .restart local v2    # "ja":Lorg/json/JSONArray;
    :cond_2
    invoke-static {v0}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 45
    iput-object v0, v3, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 47
    .end local v0    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v1    # "j":I
    .end local v2    # "ja":Lorg/json/JSONArray;
    :cond_3
    return-object v3
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/api/GetHistoryBatch;->callback:Lcom/vkontakte/android/api/GetHistoryBatch$Callback;

    if-nez v1, :cond_0

    .line 81
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 75
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 77
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GetHistoryBatch;->callback:Lcom/vkontakte/android/api/GetHistoryBatch$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetHistoryBatch$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GetHistoryBatch;->callback:Lcom/vkontakte/android/api/GetHistoryBatch$Callback;

    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/GetHistoryBatch$Callback;->success(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;>;"
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 55
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 56
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 57
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v9, "peer"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 58
    .local v6, "peer":I
    const-string v9, "messages"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 59
    .local v3, "jmsgs":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v4, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 61
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lcom/vkontakte/android/api/GetHistoryBatch;->parseOneMessage(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Message;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "jmsgs":Lorg/json/JSONArray;
    .end local v4    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "peer":I
    .end local v7    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;>;"
    :catch_0
    move-exception v8

    .line 68
    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v7, 0x0

    .end local v8    # "x":Ljava/lang/Exception;
    :cond_1
    return-object v7
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetHistoryBatch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetHistoryBatch$Callback;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/api/GetHistoryBatch;->callback:Lcom/vkontakte/android/api/GetHistoryBatch$Callback;

    .line 85
    return-object p0
.end method
