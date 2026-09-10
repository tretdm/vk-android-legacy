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
.method public constructor <init>(IIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "fromCache"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    const-string v2, "execute"

    invoke-direct {p0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v2, "code"

    const-string v3, "var n=API.notifications.get({offset:%1$d,count:%2$d,filters:\"wall,mentions,comments,likes,reposts,followers,friends\"});return n+{users_dat: API.users.get({uids:n.profiles@.uid,name_case:\"dat\"})};"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/api/NotificationsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 31
    if-nez p3, :cond_0

    if-nez p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/api/NotificationsGet;->updateCache:Z

    .line 32
    iput-boolean p3, p0, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    .line 34
    new-instance v0, Lcom/vkontakte/android/api/NotificationsGet$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/NotificationsGet$1;-><init>(Lcom/vkontakte/android/api/NotificationsGet;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/NotificationsGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 44
    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method


# virtual methods
.method protected doExec()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 47
    iget-boolean v5, p0, Lcom/vkontakte/android/api/NotificationsGet;->fromCache:Z

    if-eqz v5, :cond_1

    .line 49
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "replies"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 52
    invoke-super {p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    .local v2, "o":Lorg/json/JSONObject;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 54
    .local v3, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 55
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 77
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-object v2

    .line 58
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    .local v4, "s":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v0, v5, [B

    .line 60
    .local v0, "d":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 61
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 62
    new-instance v5, Lorg/json/JSONTokener;

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    goto :goto_0

    .line 63
    .end local v0    # "d":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "s":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 65
    :cond_1
    iget-boolean v5, p0, Lcom/vkontakte/android/api/NotificationsGet;->updateCache:Z

    if-eqz v5, :cond_3

    .line 67
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "replies"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 69
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 70
    invoke-super {p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v2

    .line 71
    .restart local v2    # "o":Lorg/json/JSONObject;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 73
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 75
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    .line 77
    :cond_3
    invoke-super {p0}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 31
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 82
    :try_start_0
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "items"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 83
    .local v17, "items":Lorg/json/JSONArray;
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "profiles"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 84
    .local v22, "profiles":Lorg/json/JSONArray;
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "groups"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 85
    .local v14, "groups":Lorg/json/JSONArray;
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "users_dat"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 86
    .local v27, "ud":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 88
    .local v9, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/Vector;

    invoke-direct/range {v23 .. v23}, Ljava/util/Vector;-><init>()V

    .line 90
    .local v23, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    if-nez v17, :cond_1

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    if-eqz v2, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v2, v0, v3}, Lcom/vkontakte/android/api/NotificationsGet$Callback;->success(Ljava/util/Vector;I)V

    .line 266
    .end local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v14    # "groups":Lorg/json/JSONArray;
    .end local v17    # "items":Lorg/json/JSONArray;
    .end local v22    # "profiles":Lorg/json/JSONArray;
    .end local v23    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v27    # "ud":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v14    # "groups":Lorg/json/JSONArray;
    .restart local v17    # "items":Lorg/json/JSONArray;
    .restart local v22    # "profiles":Lorg/json/JSONArray;
    .restart local v23    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .restart local v27    # "ud":Lorg/json/JSONArray;
    :cond_1
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v29, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v4, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v20, "namesd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v5, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v22, :cond_2

    .line 102
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v15, v2, :cond_5

    .line 117
    .end local v15    # "i":I
    :cond_2
    if-eqz v14, :cond_3

    .line 118
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v15, v2, :cond_9

    .line 126
    .end local v15    # "i":I
    :cond_3
    if-eqz v27, :cond_4

    .line 127
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v15, v2, :cond_c

    .line 133
    .end local v15    # "i":I
    :cond_4
    const/4 v15, 0x1

    .restart local v15    # "i":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v15, v2, :cond_d

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    if-eqz v2, :cond_0

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    move-object/from16 v0, v23

    invoke-interface {v2, v0, v3}, Lcom/vkontakte/android/api/NotificationsGet$Callback;->success(Ljava/util/Vector;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v14    # "groups":Lorg/json/JSONArray;
    .end local v15    # "i":I
    .end local v17    # "items":Lorg/json/JSONArray;
    .end local v20    # "namesd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22    # "profiles":Lorg/json/JSONArray;
    .end local v23    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .end local v27    # "ud":Lorg/json/JSONArray;
    .end local v29    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v30

    .line 264
    .local v30, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v30    # "x":Ljava/lang/Exception;
    .restart local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v14    # "groups":Lorg/json/JSONArray;
    .restart local v15    # "i":I
    .restart local v17    # "items":Lorg/json/JSONArray;
    .restart local v20    # "namesd":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v22    # "profiles":Lorg/json/JSONArray;
    .restart local v23    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    .restart local v27    # "ud":Lorg/json/JSONArray;
    .restart local v29    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    :try_start_1
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 104
    .local v28, "uid":I
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "first_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "last_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    const-string v2, "photo_medium_rec"

    :goto_5
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v21, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 107
    .local v21, "p":Lcom/vkontakte/android/UserProfile;
    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 108
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "first_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 109
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "last_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 111
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sex"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 112
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_8

    const-string v2, "photo_medium_rec"

    :goto_7
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 113
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 105
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_6
    const-string v2, "photo"

    goto/16 :goto_5

    .line 111
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 112
    :cond_8
    const-string v2, "photo"

    goto :goto_7

    .line 119
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v28    # "uid":I
    :cond_9
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "gid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 120
    .local v13, "gid":I
    neg-int v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    neg-int v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v7

    if-lez v2, :cond_b

    const-string v2, "photo_medium"

    :goto_8
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "is_admin"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 121
    :cond_b
    const-string v2, "photo"

    goto :goto_8

    .line 128
    .end local v13    # "gid":I
    :cond_c
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 129
    .local v26, "u":Lorg/json/JSONObject;
    const-string v2, "uid"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "first_name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 134
    .end local v26    # "u":Lorg/json/JSONObject;
    :cond_d
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 135
    .local v16, "it":Lorg/json/JSONObject;
    const-string v2, "type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 136
    .local v24, "tp":Ljava/lang/String;
    const-string v2, "_"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 137
    .local v25, "type":[Ljava/lang/String;
    new-instance v11, Lcom/vkontakte/android/api/NotificationEntry;

    invoke-direct {v11}, Lcom/vkontakte/android/api/NotificationEntry;-><init>()V

    .line 138
    .local v11, "e":Lcom/vkontakte/android/api/NotificationEntry;
    sget v2, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v3, "date"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    .line 140
    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "mention"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "wall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 141
    :cond_e
    new-instance v2, Lcom/vkontakte/android/NewsEntry;

    const-string v3, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "owner_id"

    const-string v7, "owner_id"

    const-string v8, "id"

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 142
    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    iput v3, v2, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 143
    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v6, v11, Lcom/vkontakte/android/api/NotificationEntry;->time:I

    invoke-static {v3, v6}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 144
    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "mention"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 145
    const/4 v2, 0x4

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 147
    :cond_f
    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "wall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 148
    const/4 v2, 0x5

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 149
    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 151
    :cond_10
    const/4 v2, 0x2

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 152
    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    iput-boolean v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    .line 154
    :cond_11
    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "comment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "reply"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 158
    :cond_12
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 159
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "owner_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iput-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->commentUser:Lcom/vkontakte/android/UserProfile;

    .line 160
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "owner_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->nameDat:Ljava/lang/String;

    .line 161
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    .line 162
    const/4 v2, 0x3

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 164
    :cond_13
    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "like"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 165
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 167
    .local v12, "fb":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_9
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_20

    .line 170
    const/4 v2, 0x1

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 171
    const/4 v2, 0x1

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 173
    .end local v12    # "fb":Lorg/json/JSONArray;
    .end local v18    # "j":I
    :cond_14
    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "copy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 174
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 177
    .restart local v12    # "fb":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_a
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_21

    .line 180
    const/4 v2, 0x4

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 181
    const/4 v2, 0x2

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 183
    .end local v12    # "fb":Lorg/json/JSONArray;
    .end local v18    # "j":I
    :cond_15
    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "follow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 184
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 186
    .restart local v12    # "fb":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_b
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_22

    .line 189
    const/4 v2, 0x1

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 190
    const/4 v2, 0x3

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 192
    .end local v12    # "fb":Lorg/json/JSONArray;
    .end local v18    # "j":I
    :cond_16
    const-string v2, "friend_accepted"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 193
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 195
    .restart local v12    # "fb":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_c
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_23

    .line 198
    const/4 v2, 0x1

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    .line 199
    const/4 v2, 0x6

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->action:I

    .line 201
    .end local v12    # "fb":Lorg/json/JSONArray;
    .end local v18    # "j":I
    :cond_17
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_18

    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "likes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 202
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "likes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->numLikes:I

    .line 203
    const-string v2, "feedback"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "likes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "user_likes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    const/4 v2, 0x1

    :goto_d
    iput-boolean v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->isLiked:Z

    .line 207
    :cond_18
    move-object/from16 v0, v25

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1d

    const-string v2, "friend_accepted"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 208
    const/4 v2, 0x1

    aget-object v2, v25, v2

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 209
    new-instance v2, Lcom/vkontakte/android/NewsEntry;

    const-string v3, "parent"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "to_id"

    const-string v7, "from_id"

    const-string v8, "id"

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 210
    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v6, "<a href=\'[^\']+\'>([^<]+)</a>"

    const-string v7, "$1"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 211
    const/4 v2, 0x1

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 213
    :cond_19
    const/4 v2, 0x1

    aget-object v2, v25, v2

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 214
    const-string v2, "parent"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->parsePhoto(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iput-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 215
    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 216
    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 217
    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v3, v2, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 218
    const/4 v2, 0x2

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 220
    :cond_1a
    const/4 v2, 0x1

    aget-object v2, v25, v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 221
    const-string v2, "parent"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->parseVideo(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iput-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 222
    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 223
    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 224
    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v3, v2, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 225
    const/4 v2, 0x3

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 227
    :cond_1b
    const/4 v2, 0x1

    aget-object v2, v25, v2

    const-string v3, "topic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 228
    const-string v2, "parent"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsEntry;->parseTopic(Lorg/json/JSONObject;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iput-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 229
    const/4 v2, 0x5

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 230
    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->text:Ljava/lang/String;

    const-string v3, "\\[id(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v6, "$4"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/vkontakte/android/api/NotificationEntry;->setText(Ljava/lang/String;)V

    .line 232
    :cond_1c
    const/4 v2, 0x1

    aget-object v2, v25, v2

    const-string v3, "comment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 233
    const-string v2, "parent"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 234
    .local v10, "c":Lorg/json/JSONObject;
    new-instance v19, Lcom/vkontakte/android/NewsEntry;

    invoke-direct/range {v19 .. v19}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 235
    .local v19, "n":Lcom/vkontakte/android/NewsEntry;
    const/4 v2, 0x5

    move-object/from16 v0, v19

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 236
    const-string v2, "text"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\[(id|club)(\\d+)\\|([^\\]]+)\\]"

    const-string v6, "$3"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 237
    const-string v2, "owner_id"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    move-object/from16 v0, v19

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 238
    const-string v2, "date"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 239
    move-object/from16 v0, v19

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 240
    move-object/from16 v0, v19

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 241
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 242
    const/4 v2, 0x4

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    .line 244
    const/4 v2, 0x0

    aget-object v2, v25, v2

    const-string v3, "reply"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "post"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 245
    new-instance v2, Lcom/vkontakte/android/NewsEntry;

    const-string v3, "post"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "to_id"

    const-string v7, "from_id"

    const-string v8, "id"

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    .line 246
    iget-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    const-string v6, "<a href=\'[^\']+\'>([^<]+)</a>"

    const-string v7, "$1"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 251
    .end local v10    # "c":Lorg/json/JSONObject;
    .end local v19    # "n":Lcom/vkontakte/android/NewsEntry;
    :cond_1d
    const-string v2, "reply"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 252
    const-string v2, "reply"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->reply:Ljava/lang/String;

    .line 253
    const-string v2, "reply"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->replyID:I

    .line 254
    const-string v2, "reply"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->replyTime:I

    .line 257
    :cond_1e
    iget v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    if-nez v2, :cond_1f

    iget v2, v11, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    if-eqz v2, :cond_25

    :cond_1f
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 168
    .restart local v12    # "fb":Lorg/json/JSONArray;
    .restart local v18    # "j":I
    :cond_20
    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "owner_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_9

    .line 178
    :cond_21
    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "owner_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_a

    .line 187
    :cond_22
    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "owner_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    .line 196
    :cond_23
    iget-object v3, v11, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "owner_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_c

    .line 203
    .end local v12    # "fb":Lorg/json/JSONArray;
    .end local v18    # "j":I
    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 258
    :cond_25
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Unknown notification type "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_e
.end method

.method public setCallback(Lcom/vkontakte/android/api/NotificationsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NotificationsGet$Callback;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/vkontakte/android/api/NotificationsGet;->callback:Lcom/vkontakte/android/api/NotificationsGet$Callback;

    .line 270
    return-object p0
.end method
