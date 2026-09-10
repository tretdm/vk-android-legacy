.class public Lcom/vkontakte/android/api/MessagesGetDialogs;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesGetDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v1, "code"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "var a=API.messages.getDialogs({\"count\":"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"offset\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "});var p=API.getProfiles({uids:a@.uid,fields:\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",online\"});"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    const-string v2, "var p2=API.getProfiles({uids:a@.chat_active,fields:\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    const-string v0, "photo_medium_rec"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"});"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    const-string v2, "return{a:a,p:p,p2:p2};"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/MessagesGetDialogs;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 28
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetDialogs$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetDialogs$1;-><init>(Lcom/vkontakte/android/api/MessagesGetDialogs;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/MessagesGetDialogs;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 38
    return-void

    .line 24
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "photo_rec"

    goto :goto_1
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 20
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    :try_start_0
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 43
    .local v13, "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v12, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "p"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 45
    .local v9, "p":Lorg/json/JSONArray;
    if-eqz v9, :cond_0

    .line 46
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v6, v0, :cond_3

    .line 55
    .end local v6    # "i":I
    :cond_0
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "p2"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 58
    .local v10, "p2":Lorg/json/JSONArray;
    if-eqz v10, :cond_1

    .line 59
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v6, v0, :cond_6

    .line 67
    .end local v6    # "i":I
    :cond_1
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "a"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 68
    .local v2, "a":Lorg/json/JSONArray;
    if-nez v2, :cond_9

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v13}, Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;->success(ILjava/util/Vector;)V

    .line 126
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v9    # "p":Lorg/json/JSONArray;
    .end local v10    # "p2":Lorg/json/JSONArray;
    .end local v12    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v13    # "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_2
    :goto_2
    return-void

    .line 47
    .restart local v6    # "i":I
    .restart local v9    # "p":Lorg/json/JSONArray;
    .restart local v12    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v13    # "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_3
    new-instance v15, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v15}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 48
    .local v15, "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "first_name"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 49
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "first_name"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "last_name"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 50
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v19

    if-lez v17, :cond_4

    const-string v17, "photo_medium_rec"

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 51
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "uid"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 52
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "online"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/vkontakte/android/UserProfile;->online:Z

    .line 53
    iget v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 50
    :cond_4
    const-string v17, "photo_rec"

    goto :goto_3

    .line 52
    :cond_5
    const/16 v17, 0x0

    goto :goto_4

    .line 60
    .end local v15    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v10    # "p2":Lorg/json/JSONArray;
    :cond_6
    new-instance v15, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v15}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 61
    .restart local v15    # "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v19

    if-lez v17, :cond_8

    const-string v17, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 62
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "uid"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 63
    iget v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    iget v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 61
    :cond_8
    const-string v17, "photo_rec"

    goto :goto_5

    .line 72
    .end local v6    # "i":I
    .end local v15    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v2    # "a":Lorg/json/JSONArray;
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    .line 74
    .local v14, "total":I
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v6, v0, :cond_a

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14, v13}, Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;->success(ILjava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 123
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v9    # "p":Lorg/json/JSONArray;
    .end local v10    # "p2":Lorg/json/JSONArray;
    .end local v12    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v13    # "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    .end local v14    # "total":I
    :catch_0
    move-exception v16

    .line 124
    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 75
    .end local v16    # "x":Ljava/lang/Exception;
    .restart local v2    # "a":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v9    # "p":Lorg/json/JSONArray;
    .restart local v10    # "p2":Lorg/json/JSONArray;
    .restart local v12    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v13    # "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    .restart local v14    # "total":I
    :cond_a
    :try_start_1
    new-instance v5, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v5}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 76
    .local v5, "entry":Lcom/vkontakte/android/DialogEntry;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 80
    .local v8, "msg":Lorg/json/JSONObject;
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "<br>"

    const-string v19, "<br/>"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    .line 82
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 83
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 85
    :cond_b
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 86
    new-instance v17, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 87
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 90
    :cond_c
    const-string v17, "read_state"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const-string v17, "out"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_15

    :cond_d
    const-string v17, "out"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    iput-boolean v0, v5, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 91
    sget v17, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v18, "date"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 92
    const-string v17, "out"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v17

    iput-boolean v0, v5, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 93
    const-string v17, "mid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "mid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 94
    :cond_e
    const-string v17, "chat_id"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_10

    .line 95
    :cond_f
    new-instance v11, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v11}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 96
    .local v11, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 97
    const v17, 0x77359400

    const-string v18, "chat_id"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Lcom/vkontakte/android/UserProfile;->uid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :try_start_2
    const-string v17, "chat_active"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "ca":[Ljava/lang/String;
    const-string v17, "M"

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 101
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_9
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_17

    .line 105
    .end local v4    # "ca":[Ljava/lang/String;
    .end local v7    # "j":I
    :goto_a
    :try_start_3
    iput-object v11, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 106
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v5, Lcom/vkontakte/android/DialogEntry;->isConference:Z

    .line 108
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_10
    const-string v17, "attachments"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 109
    const-string v17, "attachments"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "type"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "atype":Ljava/lang/String;
    const-string v17, "photo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 111
    :cond_11
    const-string v17, "audio"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 112
    :cond_12
    const-string v17, "video"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 113
    :cond_13
    const-string v17, "doc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 119
    .end local v3    # "atype":Ljava/lang/String;
    :cond_14
    :goto_b
    invoke-virtual {v13, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 90
    :cond_15
    const/16 v17, 0x1

    goto/16 :goto_7

    .line 92
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 102
    .restart local v4    # "ca":[Ljava/lang/String;
    .restart local v7    # "j":I
    .restart local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_17
    :try_start_4
    iget-object v0, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "|"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v4, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 114
    .end local v4    # "ca":[Ljava/lang/String;
    .end local v7    # "j":I
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_18
    :try_start_5
    const-string v17, "geo"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 115
    const/16 v17, 0x5

    move/from16 v0, v17

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    goto :goto_b

    .line 116
    :cond_19
    const-string v17, "fwd_messages"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 117
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_b

    .line 104
    .restart local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    :catch_1
    move-exception v17

    goto/16 :goto_a
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    .line 130
    return-object p0
.end method
