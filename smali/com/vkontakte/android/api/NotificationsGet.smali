.class public Lcom/vkontakte/android/api/NotificationsGet;
.super Lcom/vkontakte/android/APIRequest;
.source "NotificationsGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/NotificationsGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

.field private fromCache:Z

.field private updateCache:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IZ)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "fromCache"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    const-string v3, "execute.getNotifications"

    invoke-direct {p0, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v3, "offset"

    invoke-virtual {p0, v3, p1}, Lcom/vkontakte/android/api/NotificationsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v3, v4, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 32
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "notifications_filter"

    const-string v5, "wall,mentions,comments,likes,reposts,followers,friends"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "filters":Ljava/lang/String;
    const-string v3, "filters"

    const-string v4, ","

    new-array v5, v1, [Ljava/lang/String;

    const/16 v6, 0x7c

    const/16 v7, 0x2c

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/api/NotificationsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 35
    const-string v3, "filters"

    const-string v4, "_none"

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/api/NotificationsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 37
    :cond_0
    const-string v3, "photo_sizes"

    invoke-virtual {p0, v3, v1}, Lcom/vkontakte/android/api/NotificationsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 39
    if-nez p4, :cond_1

    if-nez p1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/api/NotificationsGet;->updateCache:Z

    .line 40
    iput-boolean p4, p0, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    .line 41
    return-void

    :cond_1
    move v1, v2

    .line 39
    goto :goto_0
.end method


# virtual methods
.method protected doExec()Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 44
    iget-boolean v4, p0, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    if-eqz v4, :cond_2

    .line 46
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v6, "replies"

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v5

    .line 71
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 50
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    .local v3, "s":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    new-array v0, v4, [B

    .line 52
    .local v0, "d":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 54
    new-instance v4, Lorg/json/JSONTokener;

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 55
    .local v2, "o":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/vkontakte/android/api/NotificationsGet;->params:Ljava/util/Hashtable;

    const-string v6, "v"

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "v"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v5

    goto :goto_0

    .line 57
    .end local v0    # "d":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "s":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    :cond_2
    move-object v2, v5

    .line 71
    goto :goto_0
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 391
    iget-object v2, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    if-nez v2, :cond_0

    .line 399
    :goto_0
    return-void

    .line 392
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 393
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 394
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/NotificationsGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 396
    check-cast v1, [Ljava/lang/Object;

    .line 397
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x3

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v5, v6, v3}, Lcom/vkontakte/android/api/NotificationsGet$Callback;->success(Ljava/util/List;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 38
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 76
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/api/NotificationsGet;->updateCache:Z

    move/from16 v34, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v34, :cond_1

    .line 78
    :try_start_1
    const-string v34, "v"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/NotificationsGet;->params:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    const-string v36, "v"

    invoke-virtual/range {v35 .. v36}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    new-instance v9, Ljava/io/File;

    sget-object v34, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v34

    const-string v35, "replies"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 81
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 82
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v20, "os":Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, "UTF-8"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 84
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .end local v9    # "f":Ljava/io/File;
    .end local v20    # "os":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    :try_start_2
    const-string v34, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "items"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 88
    .local v15, "items":Lorg/json/JSONArray;
    const-string v34, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "profiles"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 89
    .local v24, "profiles":Lorg/json/JSONArray;
    const-string v34, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "groups"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 90
    .local v12, "groups":Lorg/json/JSONArray;
    const-string v34, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "last_viewed"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 92
    .local v17, "lastView":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v25, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    if-nez v15, :cond_2

    .line 97
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v25, v34, v35

    const/16 v35, 0x1

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    .line 387
    .end local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "groups":Lorg/json/JSONArray;
    .end local v15    # "items":Lorg/json/JSONArray;
    .end local v17    # "lastView":I
    .end local v24    # "profiles":Lorg/json/JSONArray;
    .end local v25    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :goto_1
    return-object v34

    .line 100
    .restart local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "groups":Lorg/json/JSONArray;
    .restart local v15    # "items":Lorg/json/JSONArray;
    .restart local v17    # "lastView":I
    .restart local v24    # "profiles":Lorg/json/JSONArray;
    .restart local v25    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :cond_2
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v32, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v19, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v22, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v24, :cond_3

    .line 106
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v34

    if-lt v13, v0, :cond_6

    .line 122
    .end local v13    # "i":I
    :cond_3
    if-eqz v12, :cond_4

    .line 123
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v34

    if-lt v13, v0, :cond_a

    .line 143
    .end local v13    # "i":I
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v34

    if-lt v13, v0, :cond_e

    .line 314
    const/4 v13, 0x1

    :goto_5
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    if-lt v13, v0, :cond_36

    .line 326
    :goto_6
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v28, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v5, "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 329
    .local v7, "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    const/4 v13, 0x0

    :goto_7
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    if-lt v13, v0, :cond_38

    .line 370
    if-eqz v7, :cond_5

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_5

    .line 371
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    const/4 v7, 0x0

    .line 375
    :cond_5
    move-object/from16 v25, v28

    .line 377
    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v25, v34, v35

    const/16 v35, 0x1

    const-string v36, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "count"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    const-string v36, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "new_offset"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x3

    const-string v36, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "new_from"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 378
    .end local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v12    # "groups":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v15    # "items":Lorg/json/JSONArray;
    .end local v17    # "lastView":I
    .end local v19    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v24    # "profiles":Lorg/json/JSONArray;
    .end local v25    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v28    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v32    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v33

    .line 379
    .local v33, "x":Ljava/lang/Exception;
    const-string v34, "vk"

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    move/from16 v34, v0

    if-eqz v34, :cond_42

    .line 381
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    .line 382
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/api/NotificationsGet;->updateCache:Z

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/api/NotificationsGet;->doExec()Lorg/json/JSONObject;

    move-result-object v16

    .line 384
    .local v16, "j":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NotificationsGet;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v34

    goto/16 :goto_1

    .line 108
    .end local v16    # "j":Lorg/json/JSONObject;
    .end local v33    # "x":Ljava/lang/Exception;
    .restart local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "groups":Lorg/json/JSONArray;
    .restart local v13    # "i":I
    .restart local v15    # "items":Lorg/json/JSONArray;
    .restart local v17    # "lastView":I
    .restart local v19    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v22    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v24    # "profiles":Lorg/json/JSONArray;
    .restart local v25    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .restart local v32    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_6
    :try_start_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "id"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 109
    .local v31, "uid":I
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "first_name"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "last_name"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    sget v34, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v34, v34, v37

    if-lez v34, :cond_7

    const-string v34, "photo_100"

    :goto_8
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v21, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 112
    .local v21, "p":Lcom/vkontakte/android/UserProfile;
    move/from16 v0, v31

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 113
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "first_name"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 114
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "last_name"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 115
    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 116
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "sex"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    const/16 v34, 0x1

    :goto_9
    move/from16 v0, v34

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 117
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    sget v34, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v36, 0x3f800000    # 1.0f

    cmpl-float v34, v34, v36

    if-lez v34, :cond_9

    const-string v34, "photo_100"

    :goto_a
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 118
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 110
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_7
    const-string v34, "photo_50"

    goto/16 :goto_8

    .line 116
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_8
    const/16 v34, 0x0

    goto :goto_9

    .line 117
    :cond_9
    const-string v34, "photo_50"

    goto :goto_a

    .line 124
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v31    # "uid":I
    :cond_a
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "id"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 125
    .local v11, "gid":I
    neg-int v0, v11

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "name"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    neg-int v0, v11

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    sget v34, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v34, v34, v37

    if-lez v34, :cond_c

    const-string v34, "photo_100"

    :goto_b
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "is_admin"

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_b
    new-instance v21, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 129
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    neg-int v0, v11

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 130
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "name"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 131
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    sget v34, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v36, 0x3f800000    # 1.0f

    cmpl-float v34, v34, v36

    if-lez v34, :cond_d

    const-string v34, "photo_100"

    :goto_c
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 132
    neg-int v0, v11

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 126
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_c
    const-string v34, "photo_50"

    goto :goto_b

    .line 131
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_d
    const-string v34, "photo_50"

    goto :goto_c

    .line 144
    .end local v11    # "gid":I
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_e
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 145
    .local v14, "it":Lorg/json/JSONObject;
    const-string v34, "type"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 146
    .local v29, "tp":Ljava/lang/String;
    const-string v34, "_"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 147
    .local v30, "type":[Ljava/lang/String;
    new-instance v8, Lcom/vkontakte/android/api/NotificationEntry;

    invoke-direct {v8}, Lcom/vkontakte/android/api/NotificationEntry;-><init>()V

    .line 148
    .local v8, "e":Lcom/vkontakte/android/api/NotificationEntry;
    sget v34, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v35, "date"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    add-int v34, v34, v35

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    .line 150
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "mention"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_10

    :cond_f
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "wall"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 151
    :cond_10
    new-instance v34, Lcom/vkontakte/android/NewsEntry;

    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 152
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 153
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "mention"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 154
    const/16 v34, 0x4

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 156
    :cond_11
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "wall"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 157
    const/16 v34, 0x5

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 158
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    sget v35, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 160
    :cond_12
    const/16 v34, 0x2

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 161
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    const/16 v35, 0x8

    invoke-virtual/range {v34 .. v35}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v34

    move/from16 v0, v34

    iput-boolean v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    .line 163
    :cond_13
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "comment"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_14

    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "reply"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_14

    const-string v34, "mention_comments"

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_14

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "mention"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    const/16 v34, 0x1

    aget-object v34, v30, v34

    const-string v35, "comment"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    .line 167
    :cond_14
    const-string v34, "feedback"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 169
    .local v10, "fb":Lorg/json/JSONObject;
    const-string v34, "text"

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 170
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    if-eqz v34, :cond_15

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->length()I

    move-result v34

    if-nez v34, :cond_16

    .line 171
    :cond_15
    sget-object v34, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0801fc

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 173
    :cond_16
    const-string v34, "from_id"

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_27

    const-string v34, "from_id"

    :goto_d
    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    .line 174
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v34, v0

    if-nez v34, :cond_17

    const-string v34, "vk"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "no comment user "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, "from_id"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_17
    const-string v34, "id"

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_28

    const-string v34, "id"

    :goto_e
    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    .line 177
    const/16 v34, 0x3

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 178
    const-string v34, "mention_comments"

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    .line 179
    new-instance v34, Lcom/vkontakte/android/NewsEntry;

    const-string v35, "parent"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 180
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "<a href=\'[^\']+\'>([^<]+)</a>"

    const-string v37, "$1"

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 181
    const/16 v34, 0x1

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 182
    const/16 v34, 0x4

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 184
    :cond_18
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "mention"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    const/16 v34, 0x1

    aget-object v34, v30, v34

    const-string v35, "comment"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    .line 185
    const/16 v34, 0x2

    aget-object v34, v30, v34

    const-string v35, "photo"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_29

    .line 186
    const-string v34, "parent"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 187
    const/16 v34, 0x2

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 197
    :goto_f
    const/16 v34, 0x4

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 200
    .end local v10    # "fb":Lorg/json/JSONObject;
    :cond_19
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "like"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1a

    .line 201
    const-string v34, "feedback"

    move-object/from16 v0, v34

    invoke-static {v14, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 203
    .local v10, "fb":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_10
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-lt v0, v1, :cond_2c

    .line 206
    const/16 v34, 0x1

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 207
    const/16 v34, 0x1

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 209
    .end local v10    # "fb":Lorg/json/JSONArray;
    .end local v16    # "j":I
    :cond_1a
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "copy"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1b

    .line 210
    const-string v34, "feedback"

    move-object/from16 v0, v34

    invoke-static {v14, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 213
    .restart local v10    # "fb":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_11
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-lt v0, v1, :cond_2d

    .line 216
    const/16 v34, 0x4

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 217
    const/16 v34, 0x2

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 219
    .end local v10    # "fb":Lorg/json/JSONArray;
    .end local v16    # "j":I
    :cond_1b
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "follow"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 220
    const-string v34, "feedback"

    move-object/from16 v0, v34

    invoke-static {v14, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 222
    .restart local v10    # "fb":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_12
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-lt v0, v1, :cond_2e

    .line 225
    const/16 v34, 0x1

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 226
    const/16 v34, 0x3

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 228
    .end local v10    # "fb":Lorg/json/JSONArray;
    .end local v16    # "j":I
    :cond_1c
    const-string v34, "friend_accepted"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1d

    .line 229
    const-string v34, "feedback"

    move-object/from16 v0, v34

    invoke-static {v14, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 231
    .restart local v10    # "fb":Lorg/json/JSONArray;
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_13
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-lt v0, v1, :cond_2f

    .line 234
    const/16 v34, 0x1

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 235
    const/16 v34, 0x6

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 237
    .end local v10    # "fb":Lorg/json/JSONArray;
    .end local v16    # "j":I
    :cond_1d
    const-string v34, "feedback"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    if-eqz v34, :cond_1e

    const-string v34, "feedback"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "likes"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1e

    .line 238
    const-string v34, "feedback"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "likes"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "count"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->numLikes:I

    .line 239
    const-string v34, "feedback"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "likes"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "user_likes"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_30

    const/16 v34, 0x1

    :goto_14
    move/from16 v0, v34

    iput-boolean v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    .line 243
    :cond_1e
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_24

    const-string v34, "friend_accepted"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_24

    const-string v34, "mention_comment"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_24

    .line 244
    const/16 v34, 0x1

    aget-object v34, v30, v34

    const-string v35, "post"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 245
    new-instance v34, Lcom/vkontakte/android/NewsEntry;

    const-string v35, "parent"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 247
    const/16 v34, 0x1

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 249
    :cond_1f
    const/16 v34, 0x1

    aget-object v34, v30, v34

    const-string v35, "photo"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_20

    .line 250
    const-string v34, "parent"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 251
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 252
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 253
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move/from16 v35, v0

    or-int/lit8 v35, v35, 0x2

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 254
    const/16 v34, 0x2

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 256
    :cond_20
    const/16 v34, 0x1

    aget-object v34, v30, v34

    const-string v35, "video"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_21

    .line 257
    const-string v34, "parent"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 258
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 259
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 260
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move/from16 v35, v0

    or-int/lit8 v35, v35, 0x2

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 261
    const/16 v34, 0x3

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 263
    :cond_21
    const/16 v34, 0x1

    aget-object v34, v30, v34

    const-string v35, "topic"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_22

    .line 264
    const-string v34, "parent"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 265
    const/16 v34, 0x5

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 266
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->text:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "\\[id(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v36, "$4"

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 268
    :cond_22
    const/16 v34, 0x1

    aget-object v34, v30, v34

    const-string v35, "comment"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 269
    const-string v34, "parent"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 270
    .local v6, "c":Lorg/json/JSONObject;
    new-instance v18, Lcom/vkontakte/android/NewsEntry;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 271
    .local v18, "n":Lcom/vkontakte/android/NewsEntry;
    const/16 v34, 0x5

    move/from16 v0, v34

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 272
    const-string v34, "topic"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_31

    .line 273
    const-string v34, "text"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v35, "\\[(id|club)[0-9]+:bp[-_0-9]+\\|([^\\]]+)\\]"

    const-string v36, "$2"

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 277
    :goto_15
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 278
    const-string v34, "owner_id"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v0, v34

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 279
    const-string v34, "date"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 280
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 281
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 282
    const-string v34, "id"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 283
    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 284
    const/16 v34, 0x4

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 286
    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "reply"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_23

    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "like"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_23

    const/16 v34, 0x0

    aget-object v34, v30, v34

    const-string v35, "copy"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 287
    :cond_23
    const-string v34, "post"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_32

    .line 288
    new-instance v34, Lcom/vkontakte/android/NewsEntry;

    const-string v35, "post"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    .line 305
    .end local v6    # "c":Lorg/json/JSONObject;
    .end local v18    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_24
    :goto_16
    const-string v34, "reply"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_25

    .line 306
    const-string v34, "reply"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "text"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->reply:Ljava/lang/String;

    .line 307
    const-string v34, "reply"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "id"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    .line 308
    const-string v34, "reply"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    const-string v35, "date"

    invoke-virtual/range {v34 .. v35}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->replyTime:I

    .line 311
    :cond_25
    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v34, v0

    if-nez v34, :cond_26

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v34, v0

    if-eqz v34, :cond_35

    :cond_26
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 173
    .local v10, "fb":Lorg/json/JSONObject;
    :cond_27
    const-string v34, "from_id"

    goto/16 :goto_d

    .line 176
    :cond_28
    const-string v34, "cid"

    goto/16 :goto_e

    .line 188
    :cond_29
    const/16 v34, 0x2

    aget-object v34, v30, v34

    const-string v35, "video"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2a

    .line 189
    const-string v34, "parent"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 190
    const/16 v34, 0x3

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    goto/16 :goto_f

    .line 191
    :cond_2a
    const/16 v34, 0x2

    aget-object v34, v30, v34

    const-string v35, "topic"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2b

    .line 192
    const-string v34, "parent"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 193
    const/16 v34, 0x5

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    goto/16 :goto_f

    .line 195
    :cond_2b
    const-string v34, "vk"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Unknown mention type: "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v36, 0x2

    aget-object v36, v30, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 204
    .local v10, "fb":Lorg/json/JSONArray;
    .restart local v16    # "j":I
    :cond_2c
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v35, v0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v36, "from_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_10

    .line 214
    :cond_2d
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v35, v0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v36, "from_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_11

    .line 223
    :cond_2e
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v35, v0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v36, "from_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_12

    .line 232
    :cond_2f
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v35, v0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v34

    const-string v36, "from_id"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_13

    .line 239
    .end local v10    # "fb":Lorg/json/JSONArray;
    .end local v16    # "j":I
    :cond_30
    const/16 v34, 0x0

    goto/16 :goto_14

    .line 275
    .restart local v6    # "c":Lorg/json/JSONObject;
    .restart local v18    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_31
    const-string v34, "text"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v35, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string v36, "$3"

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    goto/16 :goto_15

    .line 289
    :cond_32
    const-string v34, "photo"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_33

    .line 290
    const-string v34, "photo"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    .line 291
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 292
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto/16 :goto_16

    .line 293
    :cond_33
    const-string v34, "video"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_34

    .line 294
    const-string v34, "video"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    goto/16 :goto_16

    .line 295
    :cond_34
    const-string v34, "topic"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 296
    const-string v34, "topic"

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/vkontakte/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    goto/16 :goto_16

    .line 312
    .end local v6    # "c":Lorg/json/JSONObject;
    .end local v18    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_35
    const-string v34, "vk"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Unknown notification type "

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 315
    .end local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v14    # "it":Lorg/json/JSONObject;
    .end local v29    # "tp":Ljava/lang/String;
    .end local v30    # "type":[Ljava/lang/String;
    :cond_36
    add-int/lit8 v34, v13, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkontakte/android/api/NotificationEntry;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v23, v0

    .line 316
    .local v23, "prevTime":I
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkontakte/android/api/NotificationEntry;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v27, v0

    .line 318
    .local v27, "time":I
    move/from16 v0, v23

    move/from16 v1, v17

    if-le v0, v1, :cond_37

    move/from16 v0, v27

    move/from16 v1, v17

    if-gt v0, v1, :cond_37

    .line 319
    new-instance v8, Lcom/vkontakte/android/api/NotificationEntry;

    invoke-direct {v8}, Lcom/vkontakte/android/api/NotificationEntry;-><init>()V

    .line 320
    .restart local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    const/16 v34, 0x5

    move/from16 v0, v34

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 321
    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 314
    .end local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    :cond_37
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 330
    .end local v23    # "prevTime":I
    .end local v27    # "time":I
    .restart local v5    # "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v28    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :cond_38
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/api/NotificationEntry;

    .line 331
    .restart local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v34, v0

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_3b

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_3b

    .line 332
    if-eqz v7, :cond_3a

    .line 333
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_39

    .line 334
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_39
    const/4 v7, 0x0

    .line 337
    :cond_3a
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :goto_18
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 340
    :cond_3b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_3c

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    :cond_3c
    new-instance v34, Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 342
    .local v26, "ss":Ljava/lang/String;
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_19
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-nez v35, :cond_3d

    .line 346
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_3f

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3f

    .line 348
    if-nez v7, :cond_3e

    .line 349
    new-instance v7, Lcom/vkontakte/android/api/NotificationEntry;

    .end local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    invoke-direct {v7}, Lcom/vkontakte/android/api/NotificationEntry;-><init>()V

    .line 350
    .restart local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    const/16 v34, 0x6

    move/from16 v0, v34

    iput v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 351
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v34

    iput-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    .line 352
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v34, "vk"

    const-string v35, "Creating new group"

    invoke-static/range {v34 .. v35}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 342
    :cond_3d
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/UserProfile;

    .line 343
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, ","

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_19

    .line 355
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3e
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 358
    :cond_3f
    if-eqz v7, :cond_41

    .line 359
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-lez v34, :cond_40

    .line 360
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_40
    const/4 v7, 0x0

    .line 363
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 366
    :cond_41
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_18

    .line 387
    .end local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v12    # "groups":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v15    # "items":Lorg/json/JSONArray;
    .end local v17    # "lastView":I
    .end local v19    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v24    # "profiles":Lorg/json/JSONArray;
    .end local v25    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v26    # "ss":Ljava/lang/String;
    .end local v28    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v32    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v33    # "x":Ljava/lang/Exception;
    :cond_42
    new-instance v34, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/16 v35, 0x0

    const-string v36, "Parse error"

    invoke-direct/range {v34 .. v36}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 85
    .end local v33    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v34

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/NotificationsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NotificationsGet$Callback;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    .line 403
    return-object p0
.end method
