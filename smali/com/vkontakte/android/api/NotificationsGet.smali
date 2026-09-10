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
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 44
    iget-boolean v5, p0, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    if-eqz v5, :cond_2

    .line 46
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v7, "replies"

    invoke-direct {v1, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v6

    .line 72
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-object v2

    .line 50
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    .local v3, "s":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v5, v7

    new-array v0, v5, [B

    .line 52
    .local v0, "d":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 53
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 54
    new-instance v5, Lorg/json/JSONTokener;

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v5, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 55
    .local v2, "o":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/vkontakte/android/api/NotificationsGet;->params:Ljava/util/HashMap;

    const-string v7, "v"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "v"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v6

    goto :goto_0

    .line 56
    :cond_1
    const-string v5, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parse ok "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "d":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "s":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "x":Ljava/lang/Exception;
    :cond_2
    move-object v2, v6

    .line 72
    goto :goto_0
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    if-nez v2, :cond_0

    .line 400
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 393
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 394
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 395
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/NotificationsGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 397
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 398
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
    .locals 39
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 77
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/api/NotificationsGet;->updateCache:Z

    move/from16 v35, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v35, :cond_1

    .line 79
    :try_start_1
    const-string v35, "v"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/NotificationsGet;->params:Ljava/util/HashMap;

    move-object/from16 v36, v0

    const-string v37, "v"

    invoke-virtual/range {v36 .. v37}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    new-instance v9, Ljava/io/File;

    sget-object v35, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v35

    const-string v36, "replies"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v35

    if-eqz v35, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 82
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 83
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 84
    .local v21, "os":Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, "UTF-8"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 85
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .end local v9    # "f":Ljava/io/File;
    .end local v21    # "os":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    :try_start_2
    const-string v35, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "items"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 89
    .local v16, "items":Lorg/json/JSONArray;
    const-string v35, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "profiles"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 90
    .local v25, "profiles":Lorg/json/JSONArray;
    const-string v35, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "groups"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 91
    .local v12, "groups":Lorg/json/JSONArray;
    const-string v35, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "last_viewed"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 93
    .local v18, "lastView":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v26, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    if-nez v16, :cond_2

    .line 98
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v26, v35, v36

    const/16 v36, 0x1

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    .line 388
    .end local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "groups":Lorg/json/JSONArray;
    .end local v16    # "items":Lorg/json/JSONArray;
    .end local v18    # "lastView":I
    .end local v25    # "profiles":Lorg/json/JSONArray;
    .end local v26    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :goto_1
    return-object v35

    .line 101
    .restart local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "groups":Lorg/json/JSONArray;
    .restart local v16    # "items":Lorg/json/JSONArray;
    .restart local v18    # "lastView":I
    .restart local v25    # "profiles":Lorg/json/JSONArray;
    .restart local v26    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :cond_2
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v33, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v20, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v23, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v25, :cond_6

    .line 107
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_6

    .line 109
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "id"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    .line 110
    .local v32, "uid":I
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "first_name"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "last_name"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v37

    sget v35, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v38, 0x3f800000    # 1.0f

    cmpl-float v35, v35, v38

    if-lez v35, :cond_3

    const-string v35, "photo_100"

    :goto_3
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v22, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v22 .. v22}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 113
    .local v22, "p":Lcom/vkontakte/android/UserProfile;
    move/from16 v0, v32

    move-object/from16 v1, v22

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 114
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "first_name"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 115
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "last_name"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 116
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 117
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "sex"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    const/16 v35, 0x1

    :goto_4
    move/from16 v0, v35

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 118
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    sget v35, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v35, v35, v37

    if-lez v35, :cond_5

    const-string v35, "photo_100"

    :goto_5
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 119
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 111
    .end local v22    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const-string v35, "photo_50"

    goto/16 :goto_3

    .line 117
    .restart local v22    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    const/16 v35, 0x0

    goto :goto_4

    .line 118
    :cond_5
    const-string v35, "photo_50"

    goto :goto_5

    .line 123
    .end local v13    # "i":I
    .end local v22    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v32    # "uid":I
    :cond_6
    if-eqz v12, :cond_a

    .line 124
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_a

    .line 125
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "id"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 126
    .local v11, "gid":I
    neg-int v0, v11

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "name"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    neg-int v0, v11

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v37

    sget v35, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v38, 0x3f800000    # 1.0f

    cmpl-float v35, v35, v38

    if-lez v35, :cond_8

    const-string v35, "photo_100"

    :goto_7
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "is_admin"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_7
    new-instance v22, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v22 .. v22}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 130
    .restart local v22    # "p":Lcom/vkontakte/android/UserProfile;
    neg-int v0, v11

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v22

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 131
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "name"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 132
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    sget v35, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v35, v35, v37

    if-lez v35, :cond_9

    const-string v35, "photo_100"

    :goto_8
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 133
    neg-int v0, v11

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 127
    .end local v22    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_8
    const-string v35, "photo_50"

    goto :goto_7

    .line 132
    .restart local v22    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_9
    const-string v35, "photo_50"

    goto :goto_8

    .line 144
    .end local v11    # "gid":I
    .end local v13    # "i":I
    .end local v22    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_9
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_32

    .line 145
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 146
    .local v15, "it":Lorg/json/JSONObject;
    const-string v35, "type"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 147
    .local v30, "tp":Ljava/lang/String;
    const-string v35, "_"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 148
    .local v31, "type":[Ljava/lang/String;
    new-instance v8, Lcom/vkontakte/android/api/NotificationEntry;

    invoke-direct {v8}, Lcom/vkontakte/android/api/NotificationEntry;-><init>()V

    .line 149
    .local v8, "e":Lcom/vkontakte/android/api/NotificationEntry;
    sget v35, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v36, "date"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    add-int v35, v35, v36

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    .line 151
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "mention"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_c

    :cond_b
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "wall"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    .line 152
    :cond_c
    new-instance v35, Lcom/vkontakte/android/NewsEntry;

    const-string v36, "feedback"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 153
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 154
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "mention"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 155
    const/16 v35, 0x4

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 157
    :cond_d
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "wall"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    .line 158
    const/16 v35, 0x5

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 159
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    sget v36, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 161
    :cond_e
    const/16 v35, 0x2

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 162
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v35

    move/from16 v0, v35

    iput-boolean v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    .line 164
    :cond_f
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "comment"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_10

    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "reply"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_10

    const-string v35, "mention_comments"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_10

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_15

    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "mention"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    const/16 v35, 0x1

    aget-object v35, v31, v35

    const-string v36, "comment"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 168
    :cond_10
    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 170
    .local v10, "fb":Lorg/json/JSONObject;
    const-string v35, "text"

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 171
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    if-eqz v35, :cond_11

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->length()I

    move-result v35

    if-nez v35, :cond_12

    .line 172
    :cond_11
    sget-object v35, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0d0034

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 174
    :cond_12
    const-string v35, "from_id"

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_16

    const-string v35, "from_id"

    :goto_a
    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    .line 175
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v35, v0

    if-nez v35, :cond_13

    const-string v35, "vk"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "no comment user "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "from_id"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_13
    const-string v35, "id"

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_17

    const-string v35, "id"

    :goto_b
    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    .line 178
    const/16 v35, 0x3

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 179
    const-string v35, "mention_comments"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 180
    new-instance v35, Lcom/vkontakte/android/NewsEntry;

    const-string v36, "parent"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 181
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "<a href=\'[^\']+\'>([^<]+)</a>"

    const-string v38, "$1"

    invoke-virtual/range {v36 .. v38}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 182
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 183
    const/16 v35, 0x4

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 185
    :cond_14
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "mention"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    const/16 v35, 0x1

    aget-object v35, v31, v35

    const-string v36, "comment"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_15

    .line 186
    const/16 v35, 0x2

    aget-object v35, v31, v35

    const-string v36, "photo"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_18

    .line 187
    const-string v35, "parent"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 188
    const/16 v35, 0x2

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 198
    :goto_c
    const/16 v35, 0x4

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 201
    .end local v10    # "fb":Lorg/json/JSONObject;
    :cond_15
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "like"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1c

    .line 202
    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-static {v15, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v10, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 204
    .local v10, "fb":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_d
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_1b

    .line 205
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v35, v0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "from_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 174
    .end local v17    # "j":I
    .local v10, "fb":Lorg/json/JSONObject;
    :cond_16
    const-string v35, "from_id"

    goto/16 :goto_a

    .line 177
    :cond_17
    const-string v35, "cid"

    goto/16 :goto_b

    .line 189
    :cond_18
    const/16 v35, 0x2

    aget-object v35, v31, v35

    const-string v36, "video"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    .line 190
    const-string v35, "parent"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 191
    const/16 v35, 0x3

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    .line 379
    .end local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v10    # "fb":Lorg/json/JSONObject;
    .end local v12    # "groups":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v15    # "it":Lorg/json/JSONObject;
    .end local v16    # "items":Lorg/json/JSONArray;
    .end local v18    # "lastView":I
    .end local v20    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v23    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v25    # "profiles":Lorg/json/JSONArray;
    .end local v26    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v30    # "tp":Ljava/lang/String;
    .end local v31    # "type":[Ljava/lang/String;
    .end local v33    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v34

    .line 380
    .local v34, "x":Ljava/lang/Exception;
    const-string v35, "vk"

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    move/from16 v35, v0

    if-eqz v35, :cond_40

    .line 382
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    .line 383
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/api/NotificationsGet;->updateCache:Z

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/api/NotificationsGet;->doExec()Lorg/json/JSONObject;

    move-result-object v17

    .line 385
    .local v17, "j":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NotificationsGet;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v35

    goto/16 :goto_1

    .line 192
    .end local v17    # "j":Lorg/json/JSONObject;
    .end local v34    # "x":Ljava/lang/Exception;
    .restart local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v10    # "fb":Lorg/json/JSONObject;
    .restart local v12    # "groups":Lorg/json/JSONArray;
    .restart local v13    # "i":I
    .restart local v15    # "it":Lorg/json/JSONObject;
    .restart local v16    # "items":Lorg/json/JSONArray;
    .restart local v18    # "lastView":I
    .restart local v20    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v23    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v25    # "profiles":Lorg/json/JSONArray;
    .restart local v26    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .restart local v30    # "tp":Ljava/lang/String;
    .restart local v31    # "type":[Ljava/lang/String;
    .restart local v33    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_19
    const/16 v35, 0x2

    :try_start_3
    aget-object v35, v31, v35

    const-string v36, "topic"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1a

    .line 193
    const-string v35, "parent"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 194
    const/16 v35, 0x5

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    goto/16 :goto_c

    .line 196
    :cond_1a
    const-string v35, "vk"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unknown mention type: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x2

    aget-object v37, v31, v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 207
    .local v10, "fb":Lorg/json/JSONArray;
    .local v17, "j":I
    :cond_1b
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 208
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 210
    .end local v10    # "fb":Lorg/json/JSONArray;
    .end local v17    # "j":I
    :cond_1c
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "copy"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e

    .line 211
    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-static {v15, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v10, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 214
    .restart local v10    # "fb":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_e
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_1d

    .line 215
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v35, v0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "from_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 217
    :cond_1d
    const/16 v35, 0x4

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 218
    const/16 v35, 0x2

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 220
    .end local v10    # "fb":Lorg/json/JSONArray;
    .end local v17    # "j":I
    :cond_1e
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "follow"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_20

    .line 221
    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-static {v15, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v10, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 223
    .restart local v10    # "fb":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_f
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_1f

    .line 224
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v35, v0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "from_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 226
    :cond_1f
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 227
    const/16 v35, 0x3

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 229
    .end local v10    # "fb":Lorg/json/JSONArray;
    .end local v17    # "j":I
    :cond_20
    const-string v35, "friend_accepted"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_22

    .line 230
    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-static {v15, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v35

    move-object/from16 v0, v35

    iget-object v10, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 232
    .restart local v10    # "fb":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .restart local v17    # "j":I
    :goto_10
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v35

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_21

    .line 233
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v35, v0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "from_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v17, v17, 0x1

    goto :goto_10

    .line 235
    :cond_21
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 236
    const/16 v35, 0x6

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 238
    .end local v10    # "fb":Lorg/json/JSONArray;
    .end local v17    # "j":I
    :cond_22
    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    if-eqz v35, :cond_23

    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "likes"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_23

    .line 239
    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "likes"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "count"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->numLikes:I

    .line 240
    const-string v35, "feedback"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "likes"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "user_likes"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2c

    const/16 v35, 0x1

    :goto_11
    move/from16 v0, v35

    iput-boolean v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    .line 244
    :cond_23
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_29

    const-string v35, "friend_accepted"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_29

    const-string v35, "mention_comment"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_29

    .line 245
    const/16 v35, 0x1

    aget-object v35, v31, v35

    const-string v36, "post"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_24

    .line 246
    new-instance v35, Lcom/vkontakte/android/NewsEntry;

    const-string v36, "parent"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 248
    const/16 v35, 0x1

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 250
    :cond_24
    const/16 v35, 0x1

    aget-object v35, v31, v35

    const-string v36, "photo"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_25

    .line 251
    const-string v35, "parent"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 252
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v36, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 253
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v36, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 254
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move/from16 v36, v0

    or-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 255
    const/16 v35, 0x2

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 257
    :cond_25
    const/16 v35, 0x1

    aget-object v35, v31, v35

    const-string v36, "video"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_26

    .line 258
    const-string v35, "parent"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 259
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v36, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 260
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v36, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 261
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move/from16 v36, v0

    or-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 262
    const/16 v35, 0x3

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 264
    :cond_26
    const/16 v35, 0x1

    aget-object v35, v31, v35

    const-string v36, "topic"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_27

    .line 265
    const-string v35, "parent"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 266
    const/16 v35, 0x5

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 267
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->text:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "\\[id(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v37, "$4"

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 269
    :cond_27
    const/16 v35, 0x1

    aget-object v35, v31, v35

    const-string v36, "comment"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 270
    const-string v35, "parent"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 271
    .local v6, "c":Lorg/json/JSONObject;
    new-instance v19, Lcom/vkontakte/android/NewsEntry;

    invoke-direct/range {v19 .. v19}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 272
    .local v19, "n":Lcom/vkontakte/android/NewsEntry;
    const/16 v35, 0x5

    move/from16 v0, v35

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 273
    const-string v35, "topic"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2d

    .line 274
    const-string v35, "text"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "\\[(id|club)[0-9]+:bp[-_0-9]+\\|([^\\]]+)\\]"

    const-string v37, "$2"

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 278
    :goto_12
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 279
    const-string v35, "owner_id"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v0, v35

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 280
    const-string v35, "date"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 281
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 282
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 283
    const-string v35, "id"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 284
    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 285
    const/16 v35, 0x4

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 287
    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "reply"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_28

    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "like"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_28

    const/16 v35, 0x0

    aget-object v35, v31, v35

    const-string v36, "copy"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 288
    :cond_28
    const-string v35, "post"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2e

    .line 289
    new-instance v35, Lcom/vkontakte/android/NewsEntry;

    const-string v36, "post"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    .line 306
    .end local v6    # "c":Lorg/json/JSONObject;
    .end local v19    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_29
    :goto_13
    const-string v35, "reply"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2a

    .line 307
    const-string v35, "reply"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "text"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->reply:Ljava/lang/String;

    .line 308
    const-string v35, "reply"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "id"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    .line 309
    const-string v35, "reply"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    const-string v36, "date"

    invoke-virtual/range {v35 .. v36}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->replyTime:I

    .line 312
    :cond_2a
    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v35, v0

    if-nez v35, :cond_2b

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v35, v0

    if-eqz v35, :cond_31

    :cond_2b
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_14
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_9

    .line 240
    :cond_2c
    const/16 v35, 0x0

    goto/16 :goto_11

    .line 276
    .restart local v6    # "c":Lorg/json/JSONObject;
    .restart local v19    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_2d
    const-string v35, "text"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string v37, "$3"

    invoke-virtual/range {v35 .. v37}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    goto/16 :goto_12

    .line 290
    :cond_2e
    const-string v35, "photo"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2f

    .line 291
    const-string v35, "photo"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    .line 292
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v36, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 293
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v36, v0

    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto/16 :goto_13

    .line 294
    :cond_2f
    const-string v35, "video"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_30

    .line 295
    const-string v35, "video"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    goto/16 :goto_13

    .line 296
    :cond_30
    const-string v35, "topic"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 297
    const-string v35, "topic"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/vkontakte/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v35

    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    goto/16 :goto_13

    .line 313
    .end local v6    # "c":Lorg/json/JSONObject;
    .end local v19    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_31
    const-string v35, "vk"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Unknown notification type "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 315
    .end local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v15    # "it":Lorg/json/JSONObject;
    .end local v30    # "tp":Ljava/lang/String;
    .end local v31    # "type":[Ljava/lang/String;
    :cond_32
    const/4 v13, 0x1

    :goto_15
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_33

    .line 316
    add-int/lit8 v35, v13, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/vkontakte/android/api/NotificationEntry;

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v24, v0

    .line 317
    .local v24, "prevTime":I
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/vkontakte/android/api/NotificationEntry;

    move-object/from16 v0, v35

    iget v0, v0, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v28, v0

    .line 319
    .local v28, "time":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_36

    move/from16 v0, v28

    move/from16 v1, v18

    if-gt v0, v1, :cond_36

    .line 320
    new-instance v8, Lcom/vkontakte/android/api/NotificationEntry;

    invoke-direct {v8}, Lcom/vkontakte/android/api/NotificationEntry;-><init>()V

    .line 321
    .restart local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    const/16 v35, 0x5

    move/from16 v0, v35

    iput v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 322
    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 327
    .end local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v24    # "prevTime":I
    .end local v28    # "time":I
    :cond_33
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v29, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v5, "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 330
    .local v7, "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    const/4 v13, 0x0

    :goto_16
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_3e

    .line 331
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/api/NotificationEntry;

    .line 332
    .restart local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_37

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_37

    .line 333
    if-eqz v7, :cond_35

    .line 334
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/util/ArrayList;

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-lez v35, :cond_34

    .line 335
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_34
    const/4 v7, 0x0

    .line 338
    :cond_35
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_16

    .line 315
    .end local v5    # "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v29    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .restart local v24    # "prevTime":I
    .restart local v28    # "time":I
    :cond_36
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_15

    .line 341
    .end local v24    # "prevTime":I
    .end local v28    # "time":I
    .restart local v5    # "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .restart local v29    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :cond_37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_38

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    :cond_38
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ","

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ","

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 343
    .local v27, "ss":Ljava/lang/String;
    iget-object v0, v8, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_39

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/UserProfile;

    .line 344
    .restart local v22    # "p":Lcom/vkontakte/android/UserProfile;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ","

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_18

    .line 347
    .end local v22    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_39
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3b

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3b

    .line 349
    if-nez v7, :cond_3a

    .line 350
    new-instance v7, Lcom/vkontakte/android/api/NotificationEntry;

    .end local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    invoke-direct {v7}, Lcom/vkontakte/android/api/NotificationEntry;-><init>()V

    .line 351
    .restart local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    const/16 v35, 0x6

    move/from16 v0, v35

    iput v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 352
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v35

    iput-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    .line 353
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 356
    :cond_3a
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 359
    :cond_3b
    if-eqz v7, :cond_3d

    .line 360
    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/util/ArrayList;

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-lez v35, :cond_3c

    .line 361
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_3c
    const/4 v7, 0x0

    .line 364
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 367
    :cond_3d
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 371
    .end local v8    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v27    # "ss":Ljava/lang/String;
    :cond_3e
    if-eqz v7, :cond_3f

    iget-object v0, v7, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/util/ArrayList;

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-lez v35, :cond_3f

    .line 372
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    const/4 v7, 0x0

    .line 376
    :cond_3f
    move-object/from16 v26, v29

    .line 378
    const/16 v35, 0x4

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v26, v35, v36

    const/16 v36, 0x1

    const-string v37, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "count"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "new_offset"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    const-string v38, "new_from"

    invoke-virtual/range {v37 .. v38}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 388
    .end local v4    # "adminGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "curGroup":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v12    # "groups":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v16    # "items":Lorg/json/JSONArray;
    .end local v18    # "lastView":I
    .end local v20    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v23    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v25    # "profiles":Lorg/json/JSONArray;
    .end local v26    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v29    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v33    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v34    # "x":Ljava/lang/Exception;
    :cond_40
    new-instance v35, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/16 v36, 0x0

    const-string v37, "Parse error"

    invoke-direct/range {v35 .. v37}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 86
    .end local v34    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v35

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/NotificationsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NotificationsGet$Callback;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    .line 404
    return-object p0
.end method
