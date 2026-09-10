.class public Lcom/vkontakte/android/api/MessagesGetHistory;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesGetHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesGetHistory$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 28
    const-string v0, "messages.getHistory"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesGetHistory;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "photo_sizes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 31
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetHistory$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetHistory$1;-><init>(Lcom/vkontakte/android/api/MessagesGetHistory;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/MessagesGetHistory;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 41
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 23
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    :try_start_0
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 46
    .local v2, "a":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    invoke-interface/range {v17 .. v19}, Lcom/vkontakte/android/api/MessagesGetHistory$Callback;->success(ILjava/util/Vector;)V

    .line 112
    .end local v2    # "a":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v2    # "a":Lorg/json/JSONArray;
    :cond_1
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 52
    .local v12, "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v12}, Lcom/vkontakte/android/api/MessagesGetHistory$Callback;->success(ILjava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v12    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :catch_0
    move-exception v16

    .line 110
    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v16    # "x":Ljava/lang/Exception;
    .restart local v2    # "a":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v12    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 54
    .local v10, "jm":Lorg/json/JSONObject;
    new-instance v11, Lcom/vkontakte/android/Message;

    invoke-direct {v11}, Lcom/vkontakte/android/Message;-><init>()V

    .line 55
    .local v11, "msg":Lcom/vkontakte/android/Message;
    const-string v17, "mid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/vkontakte/android/Message;->id:I

    .line 56
    const-string v17, "from_id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    sget v18, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/vkontakte/android/Message;->out:Z

    .line 57
    const-string v17, "from_id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/vkontakte/android/Message;->sender:I

    .line 58
    sget v17, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v18, "date"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lcom/vkontakte/android/Message;->time:I

    .line 59
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 60
    const-string v17, "read_state"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/vkontakte/android/Message;->readState:Z

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v4, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const-string v17, "attachments"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 63
    const-string v17, "attachments"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 64
    .local v9, "ja":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_9

    .line 65
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_a

    .line 95
    .end local v8    # "j":I
    .end local v9    # "ja":Lorg/json/JSONArray;
    :cond_4
    const-string v17, "geo"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 96
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v17, v0

    const/16 v18, 0x5

    aget v19, v17, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v17, v18

    .line 97
    const-string v17, "geo"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "coordinates"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 98
    .local v14, "point":[Ljava/lang/String;
    new-instance v6, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v6}, Lcom/vkontakte/android/GeoAttachment;-><init>()V

    .line 99
    .local v6, "ga":Lcom/vkontakte/android/GeoAttachment;
    const/16 v17, 0x0

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 100
    const/16 v17, 0x1

    aget-object v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 101
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v6    # "ga":Lcom/vkontakte/android/GeoAttachment;
    .end local v14    # "point":[Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Lcom/vkontakte/android/Attachment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/vkontakte/android/Attachment;

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 104
    const-string v17, "fwd_messages"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v17, v0

    const/16 v18, 0x4

    const-string v19, "fwd_messages"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v19

    aput v19, v17, v18

    .line 105
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0, v11}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 52
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 56
    .end local v4    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 60
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 64
    .restart local v4    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v8    # "j":I
    .restart local v9    # "ja":Lorg/json/JSONArray;
    :cond_9
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const/16 v18, -0x1

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 65
    :cond_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Attachment;

    .line 66
    .local v3, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v3, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 67
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v17, v0

    const/16 v19, 0x0

    aget v20, v17, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v17, v19

    .line 68
    move-object v0, v3

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    move-object v13, v0

    .line 69
    .local v13, "pa":Lcom/vkontakte/android/PhotoAttachment;
    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v17, v17, v19

    if-gtz v17, :cond_f

    .line 70
    iget-object v0, v11, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v20, "m"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v13    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_b
    :goto_6
    instance-of v0, v3, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 79
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v17, v0

    const/16 v19, 0x2

    aget v20, v17, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v17, v19

    .line 80
    move-object v0, v3

    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    move-object v15, v0

    .line 81
    .local v15, "va":Lcom/vkontakte/android/VideoAttachment;
    iget-object v0, v11, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v15    # "va":Lcom/vkontakte/android/VideoAttachment;
    :cond_c
    instance-of v0, v3, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 85
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v17, v0

    const/16 v19, 0x3

    aget v20, v17, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v17, v19

    .line 86
    move-object v0, v3

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v5, v0

    .line 87
    .local v5, "da":Lcom/vkontakte/android/DocumentAttachment;
    iget-object v0, v11, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, v11, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v5    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_d
    instance-of v0, v3, Lcom/vkontakte/android/AudioAttachment;

    move/from16 v17, v0

    if-eqz v17, :cond_e

    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v17, v0

    const/16 v19, 0x1

    aget v20, v17, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v17, v19

    .line 92
    :cond_e
    instance-of v0, v3, Lcom/vkontakte/android/PostAttachment;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v17, v0

    const/16 v19, 0x6

    aget v20, v17, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v17, v19

    goto/16 :goto_5

    .line 71
    .restart local v13    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_f
    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff8000000000000L    # 1.5

    cmpg-double v17, v19, v21

    if-gtz v17, :cond_11

    .line 72
    iget-object v0, v11, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v20, "q"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    iget-object v0, v13, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v20, "q"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_7
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    iget-object v0, v13, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v20, "m"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_7

    .line 74
    :cond_11
    iget-object v0, v11, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v20, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    iget-object v0, v13, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v20, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_8
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_12
    iget-object v0, v13, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v20, "m"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    .line 116
    return-object p0
.end method
