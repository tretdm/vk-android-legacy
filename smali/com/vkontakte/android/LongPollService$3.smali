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

    .line 307
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 453
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 454
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 457
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 459
    :goto_1
    return-void

    .line 458
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

    .line 454
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 44
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 310
    :try_start_0
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v40, "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v26, "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v27, "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v13, "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v4, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 315
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .local v31, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v35, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v4, "profiles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v36

    .line 317
    .local v36, "profiles":Lorg/json/JSONArray;
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v42, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v18

    if-lt v0, v4, :cond_2

    .line 331
    const-string v4, "chats"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 332
    .local v22, "jchats":Lorg/json/JSONArray;
    if-eqz v22, :cond_0

    .line 333
    const/16 v18, 0x0

    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v18

    if-lt v0, v4, :cond_5

    .line 362
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 363
    const-string v4, "messages"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v0, v4, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v24, v0

    .line 365
    .local v24, "jmsgs":Lorg/json/JSONArray;
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v30, "msgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/Message;>;"
    const/16 v18, 0x0

    :goto_2
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v18

    if-lt v0, v4, :cond_b

    .line 382
    const-string v4, "history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 383
    .local v16, "events":Lorg/json/JSONArray;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v11, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    const/16 v18, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v18

    if-lt v0, v4, :cond_d

    .line 428
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 429
    invoke-static {v11}, Lcom/vkontakte/android/data/Messages;->applyActions(Ljava/util/ArrayList;)V

    .line 434
    :cond_1
    const-string v4, "new_pts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 435
    .local v37, "pts":I
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "longpoll"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pts"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_13

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v4, v5

    .line 451
    .end local v11    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    .end local v13    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "events":Lorg/json/JSONArray;
    .end local v18    # "i":I
    .end local v22    # "jchats":Lorg/json/JSONArray;
    .end local v24    # "jmsgs":Lorg/json/JSONArray;
    .end local v26    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "msgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/Message;>;"
    .end local v31    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v35    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v36    # "profiles":Lorg/json/JSONArray;
    .end local v37    # "pts":I
    .end local v40    # "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v42    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_4
    return-void

    .line 319
    .restart local v13    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "i":I
    .restart local v26    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v31    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v35    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v36    # "profiles":Lorg/json/JSONArray;
    .restart local v40    # "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v42    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 320
    .local v25, "jp":Lorg/json/JSONObject;
    const-string v4, "id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "first_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "last_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v4, "id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    const-string v4, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v33, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v33 .. v33}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 323
    .local v33, "p":Lcom/vkontakte/android/UserProfile;
    const-string v4, "id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 324
    const-string v4, "first_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    iput-object v4, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 325
    const-string v4, "last_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    iput-object v4, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    iput-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 327
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    const-string v4, "photo_medium_rec"

    :goto_6
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    iput-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 328
    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 321
    .end local v33    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const-string v4, "photo"

    goto :goto_5

    .line 327
    .restart local v33    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    const-string v4, "photo"

    goto :goto_6

    .line 334
    .end local v25    # "jp":Lorg/json/JSONObject;
    .end local v33    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v22    # "jchats":Lorg/json/JSONArray;
    :cond_5
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 335
    .local v21, "jc":Lorg/json/JSONObject;
    new-instance v12, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v12}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 336
    .local v12, "c":Lcom/vkontakte/android/UserProfile;
    const v4, 0x77359400

    const-string v5, "id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v12, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 337
    const-string v4, "title"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 338
    const-string v4, "admin_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v12, Lcom/vkontakte/android/UserProfile;->online:I

    .line 339
    const-string v4, "photo_50"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 340
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    const-string v4, "photo_100"

    :goto_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 359
    :goto_8
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 340
    :cond_6
    const-string v4, "photo_50"

    goto :goto_7

    .line 342
    :cond_7
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v34, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "M"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v4, "users"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 345
    .local v10, "act":Lorg/json/JSONArray;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v32, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_9
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v20

    if-lt v0, v4, :cond_9

    .line 349
    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v38

    .line 350
    .local v38, "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_a

    .line 356
    :goto_a
    const-string v4, "|"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 450
    .end local v10    # "act":Lorg/json/JSONArray;
    .end local v12    # "c":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "i":I
    .end local v20    # "j":I
    .end local v21    # "jc":Lorg/json/JSONObject;
    .end local v22    # "jchats":Lorg/json/JSONArray;
    .end local v26    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v32    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v34    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v35    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v36    # "profiles":Lorg/json/JSONArray;
    .end local v38    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v40    # "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v42    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v43

    .local v43, "x":Ljava/lang/Exception;
    const-string v4, "vk_longpoll"

    const-string v5, "get long poll history failed!"

    move-object/from16 v0, v43

    invoke-static {v4, v5, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 347
    .end local v43    # "x":Ljava/lang/Exception;
    .restart local v10    # "act":Lorg/json/JSONArray;
    .restart local v12    # "c":Lcom/vkontakte/android/UserProfile;
    .restart local v13    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "i":I
    .restart local v20    # "j":I
    .restart local v21    # "jc":Lorg/json/JSONObject;
    .restart local v22    # "jchats":Lorg/json/JSONArray;
    .restart local v26    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v31    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v32    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v34    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v35    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v36    # "profiles":Lorg/json/JSONArray;
    .restart local v40    # "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v42    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_9
    :try_start_1
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 350
    .restart local v38    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/vkontakte/android/UserProfile;

    .line 351
    .restart local v33    # "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v33

    iget v5, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v5, v6, :cond_8

    .line 352
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 353
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    goto :goto_a

    .line 367
    .end local v10    # "act":Lorg/json/JSONArray;
    .end local v12    # "c":Lcom/vkontakte/android/UserProfile;
    .end local v20    # "j":I
    .end local v21    # "jc":Lorg/json/JSONObject;
    .end local v32    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v33    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v34    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v24    # "jmsgs":Lorg/json/JSONArray;
    .restart local v30    # "msgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/Message;>;"
    :cond_b
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 368
    .local v23, "jm":Lorg/json/JSONObject;
    new-instance v29, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 369
    .local v29, "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    move-object/from16 v0, v29

    iget-boolean v4, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 371
    move-object/from16 v0, v29

    iget v4, v0, Lcom/vkontakte/android/Message;->peer:I

    const v5, 0x77359400

    sub-int/2addr v4, v5

    invoke-static {v4}, Lcom/vkontakte/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 372
    new-instance v19, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.CHAT_CHANGED"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v19, "intent":Landroid/content/Intent;
    const-string v4, "id"

    move-object/from16 v0, v29

    iget v5, v0, Lcom/vkontakte/android/Message;->peer:I

    const v6, 0x77359400

    sub-int/2addr v5, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 376
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 377
    .local v39, "uid":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 378
    .local v41, "userNameAcc":Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_user_name_acc"

    move-object/from16 v0, v41

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v39    # "uid":I
    .end local v41    # "userNameAcc":Ljava/lang/String;
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 385
    .end local v23    # "jm":Lorg/json/JSONObject;
    .end local v29    # "msg":Lcom/vkontakte/android/Message;
    .restart local v11    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    .restart local v16    # "events":Lorg/json/JSONArray;
    :cond_d
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v15

    .line 386
    .local v15, "event":Lorg/json/JSONArray;
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    .line 387
    .local v14, "ev":I
    packed-switch v14, :pswitch_data_0

    .line 384
    :cond_e
    :goto_b
    :pswitch_0
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 390
    :pswitch_1
    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    .line 391
    .local v17, "flag":I
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v28

    .line 392
    .local v28, "mid":I
    and-int/lit8 v4, v17, 0x1

    if-lez v4, :cond_e

    .line 393
    new-instance v4, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v0, v28

    invoke-direct {v4, v0, v5, v6}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 395
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    :cond_f
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 402
    .end local v17    # "flag":I
    .end local v28    # "mid":I
    :pswitch_2
    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    .line 403
    .restart local v17    # "flag":I
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v28

    .line 404
    .restart local v28    # "mid":I
    and-int/lit8 v4, v17, 0x1

    if-lez v4, :cond_11

    .line 405
    new-instance v4, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move/from16 v0, v28

    invoke-direct {v4, v0, v5, v6}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 407
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    :cond_10
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 409
    :cond_11
    move/from16 v0, v17

    and-int/lit16 v4, v0, 0x80

    if-lez v4, :cond_e

    .line 410
    new-instance v4, Lcom/vkontakte/android/cache/DeleteMessageAction;

    move/from16 v0, v28

    invoke-direct {v4, v0}, Lcom/vkontakte/android/cache/DeleteMessageAction;-><init>(I)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 417
    .end local v17    # "flag":I
    .end local v28    # "mid":I
    :pswitch_3
    new-instance v4, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x2

    invoke-virtual {v15, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x6

    if-ne v14, v8, :cond_12

    const/4 v8, 0x1

    :goto_c
    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(IIIZI)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_12
    const/4 v8, 0x0

    goto :goto_c

    .line 420
    :pswitch_4
    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_e

    .line 421
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/vkontakte/android/Message;

    .line 422
    .restart local v29    # "msg":Lcom/vkontakte/android/Message;
    new-instance v4, Lcom/vkontakte/android/cache/AddMessageAction;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Lcom/vkontakte/android/cache/AddMessageAction;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    move-object/from16 v0, v29

    iget v4, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, v29

    iget v4, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 439
    .end local v14    # "ev":I
    .end local v15    # "event":Lorg/json/JSONArray;
    .end local v29    # "msg":Lcom/vkontakte/android/Message;
    .restart local v37    # "pts":I
    :cond_13
    if-lez v37, :cond_14

    .line 440
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "longpoll"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pts"

    move/from16 v0, v37

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v6, 0x0

    const-string v4, "more"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_15

    const/4 v4, 0x1

    :goto_d
    aput-boolean v4, v5, v6

    .line 442
    const-string v4, "vk_longpoll"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "More="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v19, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.REFRESH_DIALOGS"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .restart local v19    # "intent":Landroid/content/Intent;
    const-string v4, "reload_chats"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 445
    const-string v4, "marked_as_read"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 446
    const-string v4, "marked_as_unread"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 447
    const-string v4, "deleted"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 448
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 441
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_15
    const/4 v4, 0x0

    goto :goto_d

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
