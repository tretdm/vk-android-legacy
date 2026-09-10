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

    .line 29
    const-string v3, "notifications.get"

    invoke-direct {p0, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v3, "offset"

    invoke-virtual {p0, v3, p1}, Lcom/vkontakte/android/api/NotificationsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v3, v4, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 31
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "notifications_filter"

    const-string v5, "wall,mentions,comments,likes,reposts,followers"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
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

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 34
    const-string v3, "filters"

    const-string v4, "_none"

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/api/NotificationsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 36
    :cond_0
    const-string v3, "photo_sizes"

    invoke-virtual {p0, v3, v1}, Lcom/vkontakte/android/api/NotificationsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 38
    if-nez p4, :cond_1

    if-nez p1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/api/NotificationsGet;->updateCache:Z

    .line 39
    iput-boolean p4, p0, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    .line 40
    return-void

    :cond_1
    move v1, v2

    .line 38
    goto :goto_0
.end method


# virtual methods
.method protected doExec()Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 43
    iget-boolean v4, p0, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    if-eqz v4, :cond_2

    .line 45
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v6, "replies"

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v5

    .line 70
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 49
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 50
    .local v3, "s":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    new-array v0, v4, [B

    .line 51
    .local v0, "d":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 53
    new-instance v4, Lorg/json/JSONTokener;

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 54
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

    .line 56
    .end local v0    # "d":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "s":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    :cond_2
    move-object v2, v5

    .line 70
    goto :goto_0
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 300
    iget-object v2, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    if-nez v2, :cond_0

    .line 308
    :goto_0
    return-void

    .line 301
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 302
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 303
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/NotificationsGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 305
    check-cast v1, [Ljava/lang/Object;

    .line 306
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

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

    invoke-interface {v4, v2, v5, v6, v3}, Lcom/vkontakte/android/api/NotificationsGet$Callback;->success(Ljava/util/Vector;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 30
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 75
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/api/NotificationsGet;->updateCache:Z

    move/from16 v26, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v26, :cond_1

    .line 77
    :try_start_1
    const-string v26, "v"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/NotificationsGet;->params:Ljava/util/Hashtable;

    move-object/from16 v27, v0

    const-string v28, "v"

    invoke-virtual/range {v27 .. v28}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    new-instance v6, Ljava/io/File;

    sget-object v26, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v26

    const-string v27, "replies"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 80
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 81
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    .local v16, "os":Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "UTF-8"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 83
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .end local v6    # "f":Ljava/io/File;
    .end local v16    # "os":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    :try_start_2
    const-string v26, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "items"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 87
    .local v12, "items":Lorg/json/JSONArray;
    const-string v26, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "profiles"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 88
    .local v19, "profiles":Lorg/json/JSONArray;
    const-string v26, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "groups"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 90
    .local v9, "groups":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 92
    .local v3, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v20, Ljava/util/Vector;

    invoke-direct/range {v20 .. v20}, Ljava/util/Vector;-><init>()V

    .line 94
    .local v20, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    if-nez v12, :cond_2

    .line 95
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v20, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    .line 296
    .end local v3    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v9    # "groups":Lorg/json/JSONArray;
    .end local v12    # "items":Lorg/json/JSONArray;
    .end local v19    # "profiles":Lorg/json/JSONArray;
    .end local v20    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :goto_1
    return-object v26

    .line 98
    .restart local v3    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v9    # "groups":Lorg/json/JSONArray;
    .restart local v12    # "items":Lorg/json/JSONArray;
    .restart local v19    # "profiles":Lorg/json/JSONArray;
    .restart local v20    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :cond_2
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v24, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v15, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v18, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v19, :cond_3

    .line 104
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v10, v0, :cond_5

    .line 120
    .end local v10    # "i":I
    :cond_3
    if-eqz v9, :cond_4

    .line 121
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v10, v0, :cond_9

    .line 141
    .end local v10    # "i":I
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v10, v0, :cond_d

    .line 292
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v20, v26, v27

    const/16 v27, 0x1

    const-string v28, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "count"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const-string v28, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "new_offset"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x3

    const-string v28, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "new_from"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 293
    .end local v3    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v9    # "groups":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .end local v12    # "items":Lorg/json/JSONArray;
    .end local v15    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v18    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v19    # "profiles":Lorg/json/JSONArray;
    .end local v20    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v24    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v25

    .line 294
    .local v25, "x":Ljava/lang/Exception;
    const-string v26, "vk"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    new-instance v26, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const/16 v27, 0x0

    const-string v28, "Parse error"

    invoke-direct/range {v26 .. v28}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 106
    .end local v25    # "x":Ljava/lang/Exception;
    .restart local v3    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v9    # "groups":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    .restart local v12    # "items":Lorg/json/JSONArray;
    .restart local v15    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v18    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v19    # "profiles":Lorg/json/JSONArray;
    .restart local v20    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .restart local v24    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 107
    .local v23, "uid":I
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "first_name"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "last_name"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    sget v26, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v29, 0x3f800000    # 1.0f

    cmpl-float v26, v26, v29

    if-lez v26, :cond_6

    const-string v26, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v17, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 110
    .local v17, "p":Lcom/vkontakte/android/UserProfile;
    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 111
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "first_name"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 112
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "last_name"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 113
    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 114
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "sex"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v26, 0x1

    :goto_6
    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 115
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    sget v26, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v26, v26, v28

    if-lez v26, :cond_8

    const-string v26, "photo_medium_rec"

    :goto_7
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 116
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 108
    .end local v17    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_6
    const-string v26, "photo"

    goto/16 :goto_5

    .line 114
    .restart local v17    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_7
    const/16 v26, 0x0

    goto :goto_6

    .line 115
    :cond_8
    const-string v26, "photo"

    goto :goto_7

    .line 122
    .end local v17    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v23    # "uid":I
    :cond_9
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 123
    .local v8, "gid":I
    neg-int v0, v8

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "name"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    neg-int v0, v8

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    sget v26, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v29, 0x3f800000    # 1.0f

    cmpl-float v26, v26, v29

    if-lez v26, :cond_b

    const-string v26, "photo_100"

    :goto_8
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "is_admin"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_a
    new-instance v17, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 127
    .restart local v17    # "p":Lcom/vkontakte/android/UserProfile;
    neg-int v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 128
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "name"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 129
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    sget v26, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v26, v26, v28

    if-lez v26, :cond_c

    const-string v26, "photo_100"

    :goto_9
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 130
    neg-int v0, v8

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 124
    .end local v17    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_b
    const-string v26, "photo_50"

    goto :goto_8

    .line 129
    .restart local v17    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_c
    const-string v26, "photo_50"

    goto :goto_9

    .line 142
    .end local v8    # "gid":I
    .end local v17    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_d
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 143
    .local v11, "it":Lorg/json/JSONObject;
    const-string v26, "type"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 144
    .local v21, "tp":Ljava/lang/String;
    const-string v26, "_"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 145
    .local v22, "type":[Ljava/lang/String;
    new-instance v5, Lcom/vkontakte/android/api/NotificationEntry;

    invoke-direct {v5}, Lcom/vkontakte/android/api/NotificationEntry;-><init>()V

    .line 146
    .local v5, "e":Lcom/vkontakte/android/api/NotificationEntry;
    sget v26, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v27, "date"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    .line 148
    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "mention"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    :cond_e
    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "wall"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 149
    :cond_f
    new-instance v26, Lcom/vkontakte/android/NewsEntry;

    const-string v27, "feedback"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 150
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 151
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    sget-object v27, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 152
    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "mention"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 153
    const/16 v26, 0x4

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 155
    :cond_10
    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "wall"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 156
    const/16 v26, 0x5

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 157
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    sget v27, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 159
    :cond_11
    const/16 v26, 0x2

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 160
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v26

    move/from16 v0, v26

    iput-boolean v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    .line 162
    :cond_12
    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "comment"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_13

    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "reply"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_13

    const-string v26, "mention_comments"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 166
    :cond_13
    const-string v26, "feedback"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 168
    .local v7, "fb":Lorg/json/JSONObject;
    const-string v26, "text"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 169
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-nez v26, :cond_15

    .line 170
    :cond_14
    sget-object v26, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0601e2

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 172
    :cond_15
    const-string v26, "from_id"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_25

    const-string v26, "from_id"

    :goto_a
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    .line 173
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v26, v0

    if-nez v26, :cond_16

    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "no comment user "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "from_id"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_16
    const-string v26, "id"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_26

    const-string v26, "id"

    :goto_b
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    .line 176
    const/16 v26, 0x3

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 177
    const-string v26, "mention_comments"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 178
    new-instance v26, Lcom/vkontakte/android/NewsEntry;

    const-string v27, "parent"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 179
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "<a href=\'[^\']+\'>([^<]+)</a>"

    const-string v29, "$1"

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 180
    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 181
    const/16 v26, 0x4

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 184
    .end local v7    # "fb":Lorg/json/JSONObject;
    :cond_17
    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "like"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 185
    const-string v26, "feedback"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 187
    .local v7, "fb":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_c
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v13, v0, :cond_27

    .line 190
    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 191
    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 193
    .end local v7    # "fb":Lorg/json/JSONArray;
    .end local v13    # "j":I
    :cond_18
    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "copy"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 194
    const-string v26, "feedback"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 197
    .restart local v7    # "fb":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_d
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v13, v0, :cond_28

    .line 200
    const/16 v26, 0x4

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 201
    const/16 v26, 0x2

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 203
    .end local v7    # "fb":Lorg/json/JSONArray;
    .end local v13    # "j":I
    :cond_19
    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "follow"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 204
    const-string v26, "feedback"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 206
    .restart local v7    # "fb":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_e
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v13, v0, :cond_29

    .line 209
    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 210
    const/16 v26, 0x3

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 212
    .end local v7    # "fb":Lorg/json/JSONArray;
    .end local v13    # "j":I
    :cond_1a
    const-string v26, "friend_accepted"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 213
    const-string v26, "feedback"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 215
    .restart local v7    # "fb":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_f
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v13, v0, :cond_2a

    .line 218
    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 219
    const/16 v26, 0x6

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 221
    .end local v7    # "fb":Lorg/json/JSONArray;
    .end local v13    # "j":I
    :cond_1b
    const-string v26, "feedback"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    if-eqz v26, :cond_1c

    const-string v26, "feedback"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "likes"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 222
    const-string v26, "feedback"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "likes"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "count"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->numLikes:I

    .line 223
    const-string v26, "feedback"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "likes"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "user_likes"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2b

    const/16 v26, 0x1

    :goto_10
    move/from16 v0, v26

    iput-boolean v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    .line 227
    :cond_1c
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_22

    const-string v26, "friend_accepted"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_22

    .line 228
    const/16 v26, 0x1

    aget-object v26, v22, v26

    const-string v27, "post"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 229
    new-instance v26, Lcom/vkontakte/android/NewsEntry;

    const-string v27, "parent"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 231
    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 233
    :cond_1d
    const/16 v26, 0x1

    aget-object v26, v22, v26

    const-string v27, "photo"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 234
    const-string v26, "parent"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 235
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 236
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 237
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 238
    const/16 v26, 0x2

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 240
    :cond_1e
    const/16 v26, 0x1

    aget-object v26, v22, v26

    const-string v27, "video"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 241
    const-string v26, "parent"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 242
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 243
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 244
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 245
    const/16 v26, 0x3

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 247
    :cond_1f
    const/16 v26, 0x1

    aget-object v26, v22, v26

    const-string v27, "topic"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 248
    const-string v26, "parent"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 249
    const/16 v26, 0x5

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 250
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->text:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\\[id(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v28, "$4"

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 252
    :cond_20
    const/16 v26, 0x1

    aget-object v26, v22, v26

    const-string v27, "comment"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 253
    const-string v26, "parent"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 254
    .local v4, "c":Lorg/json/JSONObject;
    new-instance v14, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v14}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 255
    .local v14, "n":Lcom/vkontakte/android/NewsEntry;
    const/16 v26, 0x5

    move/from16 v0, v26

    iput v0, v14, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 256
    const-string v26, "text"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string v28, "$3"

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v14, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 257
    iget-object v0, v14, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v14, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    .line 258
    const-string v26, "owner_id"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    iput v0, v14, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v0, v26

    iput v0, v14, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 259
    const-string v26, "date"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    iput v0, v14, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 260
    iget v0, v14, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v14, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 261
    iget v0, v14, Lcom/vkontakte/android/NewsEntry;->userID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v0, v14, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 262
    iput-object v14, v5, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 263
    const/16 v26, 0x4

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 265
    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "reply"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_21

    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "like"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_21

    const/16 v26, 0x0

    aget-object v26, v22, v26

    const-string v27, "copy"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 266
    :cond_21
    const-string v26, "post"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2c

    .line 267
    new-instance v26, Lcom/vkontakte/android/NewsEntry;

    const-string v27, "post"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    .line 282
    .end local v4    # "c":Lorg/json/JSONObject;
    .end local v14    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_22
    :goto_11
    const-string v26, "reply"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_23

    .line 283
    const-string v26, "reply"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "text"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->reply:Ljava/lang/String;

    .line 284
    const-string v26, "reply"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "id"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    .line 285
    const-string v26, "reply"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "date"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    iput v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->replyTime:I

    .line 288
    :cond_23
    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    move/from16 v26, v0

    if-nez v26, :cond_24

    iget v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    move/from16 v26, v0

    if-eqz v26, :cond_2e

    :cond_24
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 172
    .local v7, "fb":Lorg/json/JSONObject;
    :cond_25
    const-string v26, "from_id"

    goto/16 :goto_a

    .line 175
    :cond_26
    const-string v26, "cid"

    goto/16 :goto_b

    .line 188
    .local v7, "fb":Lorg/json/JSONArray;
    .restart local v13    # "j":I
    :cond_27
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v27, v0

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v28, "from_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_c

    .line 198
    :cond_28
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v27, v0

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v28, "from_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_d

    .line 207
    :cond_29
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v27, v0

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v28, "from_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_e

    .line 216
    :cond_2a
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move-object/from16 v27, v0

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v28, "from_id"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_f

    .line 223
    .end local v7    # "fb":Lorg/json/JSONArray;
    .end local v13    # "j":I
    :cond_2b
    const/16 v26, 0x0

    goto/16 :goto_10

    .line 268
    .restart local v4    # "c":Lorg/json/JSONObject;
    .restart local v14    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_2c
    const-string v26, "photo"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2d

    .line 269
    const-string v26, "photo"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    .line 270
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 271
    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v27, v0

    iget-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto/16 :goto_11

    .line 272
    :cond_2d
    const-string v26, "video"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 273
    const-string v26, "video"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    goto/16 :goto_11

    .line 289
    .end local v4    # "c":Lorg/json/JSONObject;
    .end local v14    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_2e
    const-string v26, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Unknown notification type "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_12

    .line 84
    .end local v3    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v5    # "e":Lcom/vkontakte/android/api/NotificationEntry;
    .end local v9    # "groups":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .end local v11    # "it":Lorg/json/JSONObject;
    .end local v12    # "items":Lorg/json/JSONArray;
    .end local v15    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v18    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v19    # "profiles":Lorg/json/JSONArray;
    .end local v20    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v21    # "tp":Ljava/lang/String;
    .end local v22    # "type":[Ljava/lang/String;
    .end local v24    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_1
    move-exception v26

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/NotificationsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NotificationsGet$Callback;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    .line 312
    return-object p0
.end method
