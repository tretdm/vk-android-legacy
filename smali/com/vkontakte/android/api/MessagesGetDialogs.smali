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

    .line 25
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 26
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

    .line 27
    const-string v2, "var act=[]; var i=0; var _act=a@.chat_active; while(i<_act.length){if(_act[i].length+\"\"!=\"\"){act=act+_act[i];} i=i+1;}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    const-string v2, "var p2=API.getProfiles({uids:act,fields:\""

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

    .line 29
    const-string v2, "return{p2:p2,a:a,p:p,c:API.getCounters()};"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/MessagesGetDialogs;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 31
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetDialogs$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetDialogs$1;-><init>(Lcom/vkontakte/android/api/MessagesGetDialogs;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/MessagesGetDialogs;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 41
    return-void

    .line 26
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "photo_rec"

    goto :goto_1
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 135
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    if-nez v2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 137
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 138
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 140
    check-cast v1, [Ljava/lang/Object;

    .line 141
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 21
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    :try_start_0
    sget-object v18, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "userphoto"

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 46
    .local v9, "myPhoto":Ljava/lang/String;
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 47
    .local v14, "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v13, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const-string v18, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "p"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 49
    .local v10, "p":Lorg/json/JSONArray;
    if-eqz v10, :cond_0

    .line 50
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v6, v0, :cond_2

    .line 59
    .end local v6    # "i":I
    :cond_0
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v19 .. v19}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v18, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "p2"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 62
    .local v11, "p2":Lorg/json/JSONArray;
    if-eqz v11, :cond_1

    .line 63
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v6, v0, :cond_4

    .line 71
    .end local v6    # "i":I
    :cond_1
    const-string v18, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "a"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 72
    .local v2, "a":Lorg/json/JSONArray;
    if-nez v2, :cond_7

    .line 73
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    .line 131
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v9    # "myPhoto":Ljava/lang/String;
    .end local v10    # "p":Lorg/json/JSONArray;
    .end local v11    # "p2":Lorg/json/JSONArray;
    .end local v13    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v14    # "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    :goto_2
    return-object v18

    .line 51
    .restart local v6    # "i":I
    .restart local v9    # "myPhoto":Ljava/lang/String;
    .restart local v10    # "p":Lorg/json/JSONArray;
    .restart local v13    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v14    # "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_2
    new-instance v16, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v16 .. v16}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 52
    .local v16, "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "first_name"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 53
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "first_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "last_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 54
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    sget v18, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v20

    if-lez v18, :cond_3

    const-string v18, "photo_medium_rec"

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 55
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "uid"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 56
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 57
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 54
    :cond_3
    const-string v18, "photo_rec"

    goto :goto_3

    .line 64
    .end local v16    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v11    # "p2":Lorg/json/JSONArray;
    :cond_4
    new-instance v16, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v16 .. v16}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 65
    .restart local v16    # "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    sget v18, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v20

    if-lez v18, :cond_6

    const-string v18, "photo_medium_rec"

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 66
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "uid"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 67
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 65
    :cond_6
    const-string v18, "photo_rec"

    goto :goto_4

    .line 75
    .end local v6    # "i":I
    .end local v16    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v2    # "a":Lorg/json/JSONArray;
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v15

    .line 77
    .local v15, "total":I
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v6, v0, :cond_8

    .line 127
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 128
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v9    # "myPhoto":Ljava/lang/String;
    .end local v10    # "p":Lorg/json/JSONArray;
    .end local v11    # "p2":Lorg/json/JSONArray;
    .end local v13    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v14    # "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    .end local v15    # "total":I
    :catch_0
    move-exception v17

    .line 129
    .local v17, "x":Ljava/lang/Exception;
    const-string v18, "vk"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 78
    .end local v17    # "x":Ljava/lang/Exception;
    .restart local v2    # "a":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v9    # "myPhoto":Ljava/lang/String;
    .restart local v10    # "p":Lorg/json/JSONArray;
    .restart local v11    # "p2":Lorg/json/JSONArray;
    .restart local v13    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v14    # "results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/DialogEntry;>;"
    .restart local v15    # "total":I
    :cond_8
    :try_start_1
    new-instance v5, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v5}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 79
    .local v5, "entry":Lcom/vkontakte/android/DialogEntry;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 84
    .local v8, "msg":Lorg/json/JSONObject;
    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 85
    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 87
    :cond_9
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    .line 88
    new-instance v18, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 89
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v18, v0

    const-string v19, "uid"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 92
    :cond_a
    const-string v18, "read_state"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 93
    sget v18, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v19, "date"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 94
    const-string v18, "out"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 95
    iget-boolean v0, v5, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v18, v0

    const v19, 0x77359400

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    :cond_b
    iput-object v9, v5, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    .line 96
    :cond_c
    const-string v18, "mid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    const-string v18, "mid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 97
    :cond_d
    const-string v18, "chat_id"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_e

    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_f

    .line 98
    :cond_e
    new-instance v12, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v12}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 99
    .local v12, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 100
    const v18, 0x77359400

    const-string v19, "chat_id"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v12, Lcom/vkontakte/android/UserProfile;->uid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :try_start_2
    const-string v18, "chat_active"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 103
    .local v4, "ca":Lorg/json/JSONArray;
    const-string v18, "M"

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 104
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_16

    .line 108
    .end local v4    # "ca":Lorg/json/JSONArray;
    .end local v7    # "j":I
    :goto_9
    :try_start_3
    iput-object v12, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 109
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v5, Lcom/vkontakte/android/DialogEntry;->isConference:Z

    .line 110
    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 111
    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    .line 113
    .end local v12    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_f
    const-string v18, "body"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "<br>"

    const-string v20, "<br/>"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/DialogEntry;->setLastMessage(Ljava/lang/String;)V

    .line 114
    const-string v18, "attachments"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 115
    const-string v18, "attachments"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "type"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "atype":Ljava/lang/String;
    const-string v18, "photo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 117
    :cond_10
    const-string v18, "audio"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 118
    :cond_11
    const-string v18, "video"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 119
    :cond_12
    const-string v18, "doc"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v18, 0x3

    move/from16 v0, v18

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 125
    .end local v3    # "atype":Ljava/lang/String;
    :cond_13
    :goto_a
    invoke-virtual {v14, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 77
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 92
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 94
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 105
    .restart local v4    # "ca":Lorg/json/JSONArray;
    .restart local v7    # "j":I
    .restart local v12    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_16
    :try_start_4
    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "|"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 104
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 120
    .end local v4    # "ca":Lorg/json/JSONArray;
    .end local v7    # "j":I
    .end local v12    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_17
    :try_start_5
    const-string v18, "geo"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 121
    const/16 v18, 0x5

    move/from16 v0, v18

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    goto :goto_a

    .line 122
    :cond_18
    const-string v18, "fwd_messages"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 123
    const/16 v18, 0x4

    move/from16 v0, v18

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    .line 107
    .restart local v12    # "profile":Lcom/vkontakte/android/UserProfile;
    :catch_1
    move-exception v18

    goto/16 :goto_9
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    .line 147
    return-object p0
.end method
