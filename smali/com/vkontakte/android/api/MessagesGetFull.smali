.class public Lcom/vkontakte/android/api/MessagesGetFull;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesGetFull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesGetFull$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesGetFull$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "mid"    # I

    .prologue
    .line 18
    const-string v0, "messages.getById"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "mid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesGetFull;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "fields"

    const-string v1, "first_name,last_name,photo_rec,photo_medium_rec"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesGetFull;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetFull$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetFull$1;-><init>(Lcom/vkontakte/android/api/MessagesGetFull;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/MessagesGetFull;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 32
    return-void
.end method

.method private fillAttachments([Lcom/vkontakte/android/Attachment;Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "atts"    # [Lcom/vkontakte/android/Attachment;
    .param p2, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 142
    return-void

    .line 140
    :cond_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v1

    aput-object v1, p1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fillFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "msgs"    # [Lcom/vkontakte/android/Message$FwdMessage;
    .param p2, "jmsgs"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/vkontakte/android/Message$FwdMessage;",
            "Lorg/json/JSONArray;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p4, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 136
    return-void

    .line 115
    :cond_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 116
    .local v2, "jfmsg":Lorg/json/JSONObject;
    new-instance v0, Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {v0}, Lcom/vkontakte/android/Message$FwdMessage;-><init>()V

    .line 117
    .local v0, "fmsg":Lcom/vkontakte/android/Message$FwdMessage;
    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    .line 118
    const-string v3, "body"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    .line 119
    sget v3, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v5, "date"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    .line 120
    iget v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    .line 121
    iget v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    .line 122
    const-string v3, "attachments"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    const-string v3, "attachments"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const-string v3, "geo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    add-int/2addr v3, v5

    new-array v3, v3, [Lcom/vkontakte/android/Attachment;

    iput-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 124
    iget-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    const-string v5, "attachments"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/vkontakte/android/api/MessagesGetFull;->fillAttachments([Lcom/vkontakte/android/Attachment;Lorg/json/JSONArray;)V

    .line 126
    :cond_1
    const-string v3, "fwd_messages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const-string v3, "fwd_messages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Lcom/vkontakte/android/Message$FwdMessage;

    iput-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    .line 128
    iget-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    const-string v5, "fwd_messages"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-direct {p0, v3, v5, p3, p4}, Lcom/vkontakte/android/api/MessagesGetFull;->fillFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 130
    :cond_2
    const-string v3, "geo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    iget-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    if-nez v3, :cond_3

    new-array v3, v4, [Lcom/vkontakte/android/Attachment;

    iput-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 132
    :cond_3
    iget-object v3, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    iget-object v5, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    const-string v6, "geo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v6

    aput-object v6, v3, v5

    .line 134
    :cond_4
    aput-object v0, p1, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 123
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findUserIDs(Lorg/json/JSONArray;Ljava/util/Vector;)V
    .locals 4
    .param p1, "msgs"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "array":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 150
    return-void

    .line 146
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 147
    .local v1, "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "fwd_messages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "fwd_messages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/vkontakte/android/api/MessagesGetFull;->findUserIDs(Lorg/json/JSONArray;Ljava/util/Vector;)V

    .line 145
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesGetFull;->callback:Lcom/vkontakte/android/api/MessagesGetFull$Callback;

    if-nez v1, :cond_0

    .line 111
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 105
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 107
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesGetFull;->callback:Lcom/vkontakte/android/api/MessagesGetFull$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/MessagesGetFull$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/MessagesGetFull;->callback:Lcom/vkontakte/android/api/MessagesGetFull$Callback;

    check-cast p1, Lcom/vkontakte/android/Message;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/MessagesGetFull$Callback;->success(Lcom/vkontakte/android/Message;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 14
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    :try_start_0
    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 37
    .local v5, "jmsg":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkontakte/android/Message;

    invoke-direct {v6}, Lcom/vkontakte/android/Message;-><init>()V

    .line 38
    .local v6, "msg":Lcom/vkontakte/android/Message;
    const-string v10, "body"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 39
    const-string v10, "mid"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v6, Lcom/vkontakte/android/Message;->id:I

    .line 40
    sget v10, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v11, "date"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, v6, Lcom/vkontakte/android/Message;->time:I

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v1, "fwdNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v2, "fwdPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v10, "fwd_messages"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 44
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 45
    .local v3, "fwdUids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const-string v10, "fwd_messages"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/vkontakte/android/api/MessagesGetFull;->findUserIDs(Lorg/json/JSONArray;Ljava/util/Vector;)V

    .line 46
    const-string v9, ""

    .line 47
    .local v9, "uids":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 49
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 50
    new-instance v10, Lcom/vkontakte/android/APIRequest;

    const-string v11, "users.get"

    invoke-direct {v10, v11}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v11, "uids"

    invoke-virtual {v10, v11, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v11

    .line 52
    const-string v12, "fields"

    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v13

    if-lez v10, :cond_5

    const-string v10, "photo_medium_rec"

    :goto_1
    invoke-virtual {v11, v12, v10}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 53
    new-instance v11, Lcom/vkontakte/android/api/MessagesGetFull$2;

    invoke-direct {v11, p0, v1, v2}, Lcom/vkontakte/android/api/MessagesGetFull$2;-><init>(Lcom/vkontakte/android/api/MessagesGetFull;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 71
    invoke-virtual {v10}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 72
    const-string v10, "fwd_messages"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Lcom/vkontakte/android/Message$FwdMessage;

    iput-object v10, v6, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    .line 73
    iget-object v10, v6, Lcom/vkontakte/android/Message;->fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

    const-string v11, "fwd_messages"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-direct {p0, v10, v11, v1, v2}, Lcom/vkontakte/android/api/MessagesGetFull;->fillFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 76
    .end local v3    # "fwdUids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v9    # "uids":Ljava/lang/String;
    :cond_0
    const-string v10, "attachments"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 77
    const-string v10, "attachments"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 78
    .local v0, "atts":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    const-string v10, "geo"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v10, v11

    new-array v10, v10, [Lcom/vkontakte/android/Attachment;

    iput-object v10, v6, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 79
    iget-object v10, v6, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    invoke-direct {p0, v10, v0}, Lcom/vkontakte/android/api/MessagesGetFull;->fillAttachments([Lcom/vkontakte/android/Attachment;Lorg/json/JSONArray;)V

    .line 80
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v4, v10, :cond_7

    .line 91
    .end local v0    # "atts":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_1
    const-string v10, "geo"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 92
    iget-object v10, v6, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v11, 0x5

    aget v12, v10, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11

    .line 93
    iget-object v10, v6, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-nez v10, :cond_2

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/vkontakte/android/Attachment;

    iput-object v10, v6, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 94
    :cond_2
    iget-object v10, v6, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    iget-object v11, v6, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    const-string v12, "geo"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v12

    aput-object v12, v10, v11

    .line 100
    .end local v1    # "fwdNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "fwdPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "jmsg":Lorg/json/JSONObject;
    .end local v6    # "msg":Lcom/vkontakte/android/Message;
    :cond_3
    :goto_4
    return-object v6

    .line 47
    .restart local v1    # "fwdNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v2    # "fwdPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3    # "fwdUids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5    # "jmsg":Lorg/json/JSONObject;
    .restart local v6    # "msg":Lcom/vkontakte/android/Message;
    .restart local v9    # "uids":Ljava/lang/String;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 48
    .local v8, "uid":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 52
    .end local v8    # "uid":I
    :cond_5
    const-string v10, "photo_rec"

    goto/16 :goto_1

    .line 78
    .end local v3    # "fwdUids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v9    # "uids":Ljava/lang/String;
    .restart local v0    # "atts":Lorg/json/JSONArray;
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 81
    .restart local v4    # "i":I
    :cond_7
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "type"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "type":Ljava/lang/String;
    const-string v10, "photo"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 83
    iget-object v10, v6, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11

    .line 84
    iget-object v10, v6, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "photo"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "src"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_8
    const-string v10, "video"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v6, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v11, 0x2

    aget v12, v10, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11

    .line 87
    :cond_9
    const-string v10, "audio"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v6, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v11, 0x1

    aget v12, v10, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11

    .line 88
    :cond_a
    const-string v10, "doc"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v6, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v11, 0x3

    aget v12, v10, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 98
    .end local v0    # "atts":Lorg/json/JSONArray;
    .end local v1    # "fwdNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "fwdPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "jmsg":Lorg/json/JSONObject;
    .end local v6    # "msg":Lcom/vkontakte/android/Message;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 100
    const/4 v6, 0x0

    goto/16 :goto_4
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetFull$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetFull$Callback;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetFull;->callback:Lcom/vkontakte/android/api/MessagesGetFull$Callback;

    .line 154
    return-object p0
.end method
