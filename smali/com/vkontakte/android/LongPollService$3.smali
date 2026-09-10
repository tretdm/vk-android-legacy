.class final Lcom/vkontakte/android/LongPollService$3;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->syncStateWithServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sendNextRequest:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 463
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 464
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 467
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 469
    :goto_1
    return-void

    .line 468
    :cond_1
    const-string v0, "vk_longpoll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET LONG POLL HISTORY FAILED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 464
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 48
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 306
    :try_start_0
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v44, "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v29, "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v30, "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v13, "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v4, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 311
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    .local v35, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v39, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v4, "profiles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v40

    .line 313
    .local v40, "profiles":Lorg/json/JSONArray;
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v46, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-virtual/range {v40 .. v40}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 315
    move-object/from16 v0, v40

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    .line 316
    .local v27, "jp":Lorg/json/JSONObject;
    const-string v4, "id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "last_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v4, "id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    const-string v4, "photo_medium_rec"

    :goto_1
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v37, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v37 .. v37}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 319
    .local v37, "p":Lcom/vkontakte/android/UserProfile;
    const-string v4, "id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v37

    iput v4, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 320
    const-string v4, "first_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 321
    const-string v4, "last_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 323
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const-string v4, "photo_medium_rec"

    :goto_2
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 324
    move-object/from16 v0, v46

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 317
    .end local v37    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    const-string v4, "photo"

    goto :goto_1

    .line 323
    .restart local v37    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    const-string v4, "photo"

    goto :goto_2

    .line 327
    .end local v27    # "jp":Lorg/json/JSONObject;
    .end local v37    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    const-string v4, "chats"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 328
    .local v24, "jchats":Lorg/json/JSONArray;
    if-eqz v24, :cond_8

    .line 329
    const/16 v19, 0x0

    :goto_3
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_8

    .line 330
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 331
    .local v23, "jc":Lorg/json/JSONObject;
    new-instance v12, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v12}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 332
    .local v12, "c":Lcom/vkontakte/android/UserProfile;
    const v4, 0x77359400

    const-string v5, "id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v12, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 333
    const-string v4, "title"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 334
    const-string v4, "admin_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v12, Lcom/vkontakte/android/UserProfile;->online:I

    .line 335
    const-string v4, "photo_50"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 336
    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const-string v4, "photo_100"

    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 360
    :goto_5
    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 336
    :cond_3
    const-string v4, "photo_50"

    goto :goto_4

    .line 338
    :cond_4
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v38, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "M"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v4, "users"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 341
    .local v10, "act":Lorg/json/JSONArray;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v36, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_6
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_5

    .line 343
    move/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 345
    :cond_5
    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v42

    .line 346
    .local v42, "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/UserProfile;

    .line 347
    .restart local v37    # "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v37

    iget v4, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_6

    .line 348
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 349
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 352
    .end local v37    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_7
    const-string v4, "|"

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 460
    .end local v10    # "act":Lorg/json/JSONArray;
    .end local v12    # "c":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "i":I
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "j":I
    .end local v23    # "jc":Lorg/json/JSONObject;
    .end local v24    # "jchats":Lorg/json/JSONArray;
    .end local v29    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v30    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v35    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v36    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v38    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v40    # "profiles":Lorg/json/JSONArray;
    .end local v42    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v44    # "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v46    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v47

    .local v47, "x":Ljava/lang/Exception;
    const-string v4, "vk_longpoll"

    const-string v5, "get long poll history failed!"

    move-object/from16 v0, v47

    invoke-static {v4, v5, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    .end local v47    # "x":Ljava/lang/Exception;
    :goto_7
    return-void

    .line 363
    .restart local v13    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19    # "i":I
    .restart local v24    # "jchats":Lorg/json/JSONArray;
    .restart local v29    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v30    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v35    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v39    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v40    # "profiles":Lorg/json/JSONArray;
    .restart local v44    # "updatedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v46    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_8
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v46

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 364
    const-string v4, "messages"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v0, v4, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v26, v0

    .line 366
    .local v26, "jmsgs":Lorg/json/JSONArray;
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 367
    .local v33, "msgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/Message;>;"
    const/16 v19, 0x0

    :goto_8
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_d

    .line 368
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 369
    .local v25, "jm":Lorg/json/JSONObject;
    new-instance v32, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 370
    .local v32, "msg":Lcom/vkontakte/android/Message;
    const/4 v14, 0x0

    .line 371
    .local v14, "dnd":I
    const/16 v34, 0x0

    .line 372
    .local v34, "mute":Z
    const-string v4, "push_settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 373
    const-string v4, "push_settings"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 374
    .local v28, "jps":Lorg/json/JSONObject;
    const-string v4, "disabled_until"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 375
    const/4 v4, -0x1

    if-ne v14, v4, :cond_9

    const v14, 0x7fffffff

    .line 376
    :cond_9
    const-string v4, "sound"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    const/16 v34, 0x1

    .line 377
    :goto_9
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v0, v34

    invoke-static {v4, v14, v0}, Lcom/vkontakte/android/data/Messages;->setDnd(IIZ)V

    .line 379
    .end local v28    # "jps":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 381
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkontakte/android/Message;->peer:I

    const v5, 0x77359400

    sub-int/2addr v4, v5

    invoke-static {v4}, Lcom/vkontakte/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 382
    new-instance v21, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.CHAT_CHANGED"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v21, "intent":Landroid/content/Intent;
    const-string v4, "id"

    move-object/from16 v0, v32

    iget v5, v0, Lcom/vkontakte/android/Message;->peer:I

    const v6, 0x77359400

    sub-int/2addr v5, v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 386
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v43

    .line 387
    .local v43, "uid":I
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    move-object/from16 v45, v0

    .line 388
    .local v45, "userNameAcc":Ljava/lang/String;
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_user_name_acc"

    move-object/from16 v0, v45

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v43    # "uid":I
    .end local v45    # "userNameAcc":Ljava/lang/String;
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 376
    .restart local v28    # "jps":Lorg/json/JSONObject;
    :cond_c
    const/16 v34, 0x0

    goto/16 :goto_9

    .line 392
    .end local v14    # "dnd":I
    .end local v25    # "jm":Lorg/json/JSONObject;
    .end local v28    # "jps":Lorg/json/JSONObject;
    .end local v32    # "msg":Lcom/vkontakte/android/Message;
    .end local v34    # "mute":Z
    :cond_d
    const-string v4, "history"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 393
    .local v17, "events":Lorg/json/JSONArray;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v11, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    const/16 v19, 0x0

    :goto_a
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_13

    .line 395
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v16

    .line 396
    .local v16, "event":Lorg/json/JSONArray;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    .line 397
    .local v15, "ev":I
    packed-switch v15, :pswitch_data_0

    .line 394
    :cond_e
    :goto_b
    :pswitch_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 400
    :pswitch_1
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    .line 401
    .local v18, "flag":I
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v31

    .line 402
    .local v31, "mid":I
    and-int/lit8 v4, v18, 0x1

    if-lez v4, :cond_e

    .line 403
    new-instance v4, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v0, v31

    invoke-direct {v4, v0, v5, v6}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 405
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 406
    :cond_f
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 412
    .end local v18    # "flag":I
    .end local v31    # "mid":I
    :pswitch_2
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    .line 413
    .restart local v18    # "flag":I
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v31

    .line 414
    .restart local v31    # "mid":I
    and-int/lit8 v4, v18, 0x1

    if-lez v4, :cond_11

    .line 415
    new-instance v4, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move/from16 v0, v31

    invoke-direct {v4, v0, v5, v6}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(III)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 417
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 418
    :cond_10
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 419
    :cond_11
    move/from16 v0, v18

    and-int/lit16 v4, v0, 0x80

    if-lez v4, :cond_e

    .line 420
    new-instance v4, Lcom/vkontakte/android/cache/DeleteMessageAction;

    move/from16 v0, v31

    invoke-direct {v4, v0}, Lcom/vkontakte/android/cache/DeleteMessageAction;-><init>(I)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 427
    .end local v18    # "flag":I
    .end local v31    # "mid":I
    :pswitch_3
    new-instance v4, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;

    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x6

    if-ne v15, v8, :cond_12

    const/4 v8, 0x1

    :goto_c
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;-><init>(IIIZI)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_12
    const/4 v8, 0x0

    goto :goto_c

    .line 430
    :pswitch_4
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_e

    .line 431
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/Message;

    .line 432
    .restart local v32    # "msg":Lcom/vkontakte/android/Message;
    new-instance v4, Lcom/vkontakte/android/cache/AddMessageAction;

    move-object/from16 v0, v32

    invoke-direct {v4, v0}, Lcom/vkontakte/android/cache/AddMessageAction;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 438
    .end local v15    # "ev":I
    .end local v16    # "event":Lorg/json/JSONArray;
    .end local v32    # "msg":Lcom/vkontakte/android/Message;
    :cond_13
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_14

    .line 439
    invoke-static {v11}, Lcom/vkontakte/android/data/Messages;->applyActions(Ljava/util/ArrayList;)V

    .line 444
    :cond_14
    const-string v4, "new_pts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v41

    .line 445
    .local v41, "pts":I
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "longpoll"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pts"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_15

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v4, v5

    goto/16 :goto_7

    .line 449
    :cond_15
    if-lez v41, :cond_16

    .line 450
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "longpoll"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pts"

    move/from16 v0, v41

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 451
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v6, 0x0

    const-string v4, "more"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_17

    const/4 v4, 0x1

    :goto_d
    aput-boolean v4, v5, v6

    .line 452
    const-string v4, "vk_longpoll"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/LongPollService$3;->val$sendNextRequest:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v21, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.REFRESH_DIALOGS"

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .restart local v21    # "intent":Landroid/content/Intent;
    const-string v4, "reload_chats"

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 455
    const-string v4, "marked_as_read"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 456
    const-string v4, "marked_as_unread"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    const-string v4, "deleted"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 458
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 451
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_17
    const/4 v4, 0x0

    goto :goto_d

    .line 397
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
