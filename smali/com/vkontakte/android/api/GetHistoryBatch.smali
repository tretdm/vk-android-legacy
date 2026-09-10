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
    .locals 7
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
    .line 26
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v2, "execute"

    invoke-direct {p0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v1, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    const-string v2, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "return ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "];"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/api/GetHistoryBatch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 33
    new-instance v2, Lcom/vkontakte/android/api/GetHistoryBatch$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/api/GetHistoryBatch$1;-><init>(Lcom/vkontakte/android/api/GetHistoryBatch;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/api/GetHistoryBatch;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 43
    return-void

    .line 28
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    .local v0, "pid":I
    const-string v2, "{peer:%1$d,messages:API.messages.getHistory({uid:%1$d,count:20})}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseOneMessage(Lorg/json/JSONObject;)Lcom/vkontakte/android/Message;
    .locals 14
    .param p1, "jm"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v5, Lcom/vkontakte/android/Message;

    invoke-direct {v5}, Lcom/vkontakte/android/Message;-><init>()V

    .line 47
    .local v5, "msg":Lcom/vkontakte/android/Message;
    const-string v8, "mid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/vkontakte/android/Message;->id:I

    .line 48
    const-string v8, "from_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v5, Lcom/vkontakte/android/Message;->out:Z

    .line 49
    const-string v8, "from_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/vkontakte/android/Message;->sender:I

    .line 50
    sget v8, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v9, "date"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v5, Lcom/vkontakte/android/Message;->time:I

    .line 51
    const-string v8, "body"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 52
    const-string v8, "read_state"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v5, Lcom/vkontakte/android/Message;->readState:Z

    .line 53
    const-string v8, "attachments"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 54
    const-string v8, "attachments"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 55
    .local v4, "ja":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_6

    .line 57
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/vkontakte/android/Attachment;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/vkontakte/android/Attachment;

    iput-object v8, v5, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 88
    .end local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v3    # "j":I
    .end local v4    # "ja":Lorg/json/JSONArray;
    :cond_1
    const-string v8, "geo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v5, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v9, 0x5

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 89
    :cond_2
    const-string v8, "fwd_messages"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v5, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v9, 0x4

    const-string v10, "fwd_messages"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    aput v10, v8, v9

    .line 90
    :cond_3
    return-object v5

    .line 48
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 52
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 56
    .restart local v1    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v3    # "j":I
    .restart local v4    # "ja":Lorg/json/JSONArray;
    :cond_6
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 58
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 59
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v8, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v8, :cond_8

    .line 60
    iget-object v8, v5, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v10, 0x0

    aget v11, v8, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v8, v10

    move-object v6, v0

    .line 61
    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .line 62
    .local v6, "pa":Lcom/vkontakte/android/PhotoAttachment;
    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_c

    .line 63
    iget-object v10, v5, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    iget-object v8, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v11, "m"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v6    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_8
    :goto_4
    instance-of v8, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v8, :cond_9

    .line 72
    iget-object v8, v5, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v10, 0x2

    aget v11, v8, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v8, v10

    move-object v7, v0

    .line 73
    check-cast v7, Lcom/vkontakte/android/VideoAttachment;

    .line 74
    .local v7, "va":Lcom/vkontakte/android/VideoAttachment;
    iget-object v8, v5, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    iget-object v10, v7, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v7    # "va":Lcom/vkontakte/android/VideoAttachment;
    :cond_9
    instance-of v8, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v8, :cond_a

    .line 78
    iget-object v8, v5, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v10, 0x3

    aget v11, v8, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v8, v10

    move-object v2, v0

    .line 79
    check-cast v2, Lcom/vkontakte/android/DocumentAttachment;

    .line 80
    .local v2, "da":Lcom/vkontakte/android/DocumentAttachment;
    iget-object v8, v5, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    iget-object v10, v2, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v8, v5, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    iget-object v10, v2, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v2    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_a
    instance-of v8, v0, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v8, :cond_b

    iget-object v8, v5, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v10, 0x1

    aget v11, v8, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v8, v10

    .line 85
    :cond_b
    instance-of v8, v0, Lcom/vkontakte/android/PostAttachment;

    if-eqz v8, :cond_0

    iget-object v8, v5, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v10, 0x6

    aget v11, v8, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v8, v10

    goto/16 :goto_3

    .line 64
    .restart local v6    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_c
    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v10, v8

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    cmpg-double v8, v10, v12

    if-gtz v8, :cond_e

    .line 65
    iget-object v10, v5, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    iget-object v8, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v11, "q"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v11, "q"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_5
    invoke-virtual {v10, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    iget-object v8, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v11, "m"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_5

    .line 67
    :cond_e
    iget-object v10, v5, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    iget-object v8, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v11, "r"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v11, "r"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_6
    invoke-virtual {v10, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_f
    iget-object v8, v6, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v11, "m"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v8, v8, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_6
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/vkontakte/android/api/GetHistoryBatch;->callback:Lcom/vkontakte/android/api/GetHistoryBatch$Callback;

    if-nez v1, :cond_0

    .line 124
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 118
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 120
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GetHistoryBatch;->callback:Lcom/vkontakte/android/api/GetHistoryBatch$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetHistoryBatch$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 122
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
    .line 95
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;>;"
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 98
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v1, v9, :cond_0

    .line 113
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v7    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;>;"
    :goto_1
    return-object v7

    .line 99
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v7    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 100
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v9, "peer"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, "peer":I
    const-string v9, "messages"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 102
    .local v3, "jmsgs":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v4, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_1

    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/vkontakte/android/api/GetHistoryBatch;->parseOneMessage(Lorg/json/JSONObject;)Lcom/vkontakte/android/Message;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 110
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

    .line 111
    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetHistoryBatch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetHistoryBatch$Callback;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/vkontakte/android/api/GetHistoryBatch;->callback:Lcom/vkontakte/android/api/GetHistoryBatch$Callback;

    .line 128
    return-object p0
.end method
