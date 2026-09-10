.class Lcom/vkontakte/android/LongPollService$3;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->syncStateWithServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$sendNextRequest:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    .line 253
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 380
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 381
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 384
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 386
    :goto_1
    return-void

    .line 385
    :cond_1
    const-string v0, "vk_longpoll"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET LONG POLL HISTORY FAILED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 36
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 256
    :try_start_0
    const-string v32, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 257
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .local v21, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v26, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v32, "profiles"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 259
    .local v27, "profiles":Lorg/json/JSONArray;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v30, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-lt v11, v0, :cond_3

    .line 272
    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/ArrayList;)V

    .line 273
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    .line 274
    const-string v32, "chats"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 275
    .local v15, "jchats":Lorg/json/JSONArray;
    if-eqz v15, :cond_0

    .line 276
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-lt v11, v0, :cond_6

    .line 302
    :cond_0
    const-string v32, "messages"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v17, v0

    .line 304
    .local v17, "jmsgs":Lorg/json/JSONArray;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 305
    .local v20, "msgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/Message;>;"
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-lt v11, v0, :cond_c

    .line 332
    const-string v32, "history"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 333
    .local v9, "events":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v5, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-lt v11, v0, :cond_10

    .line 362
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_1

    .line 363
    invoke-static {v5}, Lcom/vkontakte/android/data/Messages;->applyActions(Ljava/util/ArrayList;)V

    .line 365
    :cond_1
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_2

    .line 366
    invoke-static/range {v30 .. v30}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/ArrayList;)V

    .line 368
    :cond_2
    const-string v32, "new_pts"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 369
    .local v28, "pts":I
    sget-object v32, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v33, "longpoll"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v32

    const-string v33, "pts"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v32

    if-nez v32, :cond_13

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aput-boolean v34, v32, v33

    .line 378
    .end local v5    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    .end local v9    # "events":Lorg/json/JSONArray;
    .end local v11    # "i":I
    .end local v15    # "jchats":Lorg/json/JSONArray;
    .end local v17    # "jmsgs":Lorg/json/JSONArray;
    .end local v20    # "msgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/Message;>;"
    .end local v21    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v26    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v27    # "profiles":Lorg/json/JSONArray;
    .end local v28    # "pts":I
    .end local v30    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_4
    return-void

    .line 261
    .restart local v11    # "i":I
    .restart local v21    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v26    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v27    # "profiles":Lorg/json/JSONArray;
    .restart local v30    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 262
    .local v18, "jp":Lorg/json/JSONObject;
    const-string v32, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "first_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "last_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v32, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    sget v32, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v34

    if-lez v32, :cond_4

    const-string v32, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v23, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v23 .. v23}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 265
    .local v23, "p":Lcom/vkontakte/android/UserProfile;
    const-string v32, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v23

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 266
    const-string v32, "first_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 267
    const-string v32, "last_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 268
    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 269
    sget v32, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_5

    const-string v32, "photo_medium_rec"

    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 270
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 263
    .end local v23    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    const-string v32, "photo"

    goto/16 :goto_5

    .line 269
    .restart local v23    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    const-string v32, "photo"

    goto :goto_6

    .line 277
    .end local v18    # "jp":Lorg/json/JSONObject;
    .end local v23    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v15    # "jchats":Lorg/json/JSONArray;
    :cond_6
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 278
    .local v14, "jc":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v6}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 279
    .local v6, "c":Lcom/vkontakte/android/UserProfile;
    const v32, 0x77359400

    const-string v33, "id"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    iput v0, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 280
    const-string v32, "title"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 281
    const-string v32, "admin_id"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    iput v0, v6, Lcom/vkontakte/android/UserProfile;->online:I

    .line 282
    const-string v32, "photo_50"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 283
    sget v32, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_7

    const-string v32, "photo_100"

    :goto_7
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 299
    :goto_8
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 283
    :cond_7
    const-string v32, "photo_50"

    goto :goto_7

    .line 285
    :cond_8
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v25, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v32, "M"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v32, "users"

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 288
    .local v4, "act":Lorg/json/JSONArray;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v22, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_9
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v32

    const/16 v33, 0x4

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v32

    move/from16 v0, v32

    if-lt v13, v0, :cond_a

    .line 292
    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v29

    .line 293
    .local v29, "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_9
    :goto_a
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_b

    .line 297
    const-string v32, "|"

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 377
    .end local v4    # "act":Lorg/json/JSONArray;
    .end local v6    # "c":Lcom/vkontakte/android/UserProfile;
    .end local v11    # "i":I
    .end local v13    # "j":I
    .end local v14    # "jc":Lorg/json/JSONObject;
    .end local v15    # "jchats":Lorg/json/JSONArray;
    .end local v21    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v25    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v27    # "profiles":Lorg/json/JSONArray;
    .end local v29    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v30    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v31

    .local v31, "x":Ljava/lang/Exception;
    const-string v32, "vk_longpoll"

    const-string v33, "get long poll history failed!"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 290
    .end local v31    # "x":Ljava/lang/Exception;
    .restart local v4    # "act":Lorg/json/JSONArray;
    .restart local v6    # "c":Lcom/vkontakte/android/UserProfile;
    .restart local v11    # "i":I
    .restart local v13    # "j":I
    .restart local v14    # "jc":Lorg/json/JSONObject;
    .restart local v15    # "jchats":Lorg/json/JSONArray;
    .restart local v21    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v22    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v25    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v27    # "profiles":Lorg/json/JSONArray;
    .restart local v30    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_a
    :try_start_1
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 293
    .restart local v29    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_b
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/UserProfile;

    .line 294
    .restart local v23    # "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v33, v0

    sget v34, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_9

    .line 295
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 306
    .end local v4    # "act":Lorg/json/JSONArray;
    .end local v6    # "c":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "j":I
    .end local v14    # "jc":Lorg/json/JSONObject;
    .end local v22    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v25    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v17    # "jmsgs":Lorg/json/JSONArray;
    .restart local v20    # "msgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/Message;>;"
    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 307
    .local v16, "jm":Lorg/json/JSONObject;
    new-instance v19, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 308
    .local v19, "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    move/from16 v32, v0

    if-eqz v32, :cond_d

    const-string v32, "%act:chat_photo_update"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 310
    sget v32, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v33, 0x3f800000    # 1.0f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_f

    const-string v32, "photo_100"

    :goto_b
    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 311
    .local v24, "ph":Ljava/lang/String;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v32, v0

    const v33, 0x77359400

    sub-int v32, v32, v33

    const/16 v33, 0x0

    const/16 v34, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 312
    new-instance v12, Landroid/content/Intent;

    const-string v32, "com.vkontakte.android.CHAT_CHANGED"

    move-object/from16 v0, v32

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v12, "intent":Landroid/content/Intent;
    const-string v32, "id"

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v33, v0

    const v34, 0x77359400

    sub-int v33, v33, v34

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string v32, "photo"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    sget-object v32, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v24    # "ph":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    const-string v32, "%act:chat_photo_remove"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 318
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v32, v0

    const v33, 0x77359400

    sub-int v32, v32, v33

    new-instance v33, Lcom/vkontakte/android/LongPollService$3$1;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/LongPollService$3$1;-><init>(Lcom/vkontakte/android/LongPollService$3;Lcom/vkontakte/android/Message;)V

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 305
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 310
    :cond_f
    const-string v32, "photo_50"

    goto/16 :goto_b

    .line 335
    .end local v16    # "jm":Lorg/json/JSONObject;
    .end local v19    # "msg":Lcom/vkontakte/android/Message;
    .restart local v5    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    .restart local v9    # "events":Lorg/json/JSONArray;
    :cond_10
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 336
    .local v8, "event":Lorg/json/JSONArray;
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    .line 337
    .local v7, "ev":I
    packed-switch v7, :pswitch_data_0

    .line 334
    :cond_11
    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 340
    :pswitch_0
    const/16 v32, 0x2

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    .line 341
    .local v10, "flag":I
    and-int/lit8 v32, v10, 0x1

    if-lez v32, :cond_11

    .line 342
    new-instance v32, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x1

    invoke-direct/range {v32 .. v35}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 348
    .end local v10    # "flag":I
    :pswitch_1
    const/16 v32, 0x2

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    .line 349
    .restart local v10    # "flag":I
    and-int/lit8 v32, v10, 0x1

    if-lez v32, :cond_12

    .line 350
    new-instance v32, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-direct/range {v32 .. v35}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 351
    :cond_12
    and-int/lit16 v0, v10, 0x80

    move/from16 v32, v0

    if-lez v32, :cond_11

    .line 352
    new-instance v32, Lcom/vkontakte/android/cache/DeleteMessageAction;

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v33

    invoke-direct/range {v32 .. v33}, Lcom/vkontakte/android/cache/DeleteMessageAction;-><init>(I)V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 357
    .end local v10    # "flag":I
    :pswitch_2
    const/16 v32, 0x2

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v32

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0x80

    move/from16 v32, v0

    if-nez v32, :cond_11

    .line 358
    new-instance v33, Lcom/vkontakte/android/cache/AddMessageAction;

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/vkontakte/android/cache/AddMessageAction;-><init>(Lcom/vkontakte/android/Message;)V

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 373
    .end local v7    # "ev":I
    .end local v8    # "event":Lorg/json/JSONArray;
    .restart local v28    # "pts":I
    :cond_13
    sget-object v32, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v33, "longpoll"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    const-string v33, "pts"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v32, "more"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v32

    const/16 v35, 0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_14

    const/16 v32, 0x1

    :goto_d
    aput-boolean v32, v33, v34

    .line 375
    const-string v32, "vk_longpoll"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "More="

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-boolean v34, v34, v35

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v32, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v33, Landroid/content/Intent;

    const-string v34, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct/range {v33 .. v34}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 374
    :cond_14
    const/16 v32, 0x0

    goto :goto_d

    .line 337
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
