.class public Lcom/vkontakte/android/api/WallGet;
.super Lcom/vkontakte/android/APIRequest;
.source "WallGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/WallGet$Callback;

.field public gphoto:Ljava/lang/String;

.field public gtitle:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(IIIZZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "owner"    # Z
    .param p5, "needStatus"    # Z

    .prologue
    const/4 v5, 0x1

    .line 32
    if-eqz p5, :cond_1

    const-string v1, "execute"

    :goto_0
    invoke-direct {p0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 33
    if-eqz p5, :cond_3

    .line 34
    const-string v2, "return API.wall.get({photo_sizes:1,owner_id:%1$d,offset:%2$d,count:%3$d,extended:1%4$s})+{status:API.status.get({uid:%1$d})};"

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x3

    if-eqz p4, :cond_2

    const-string v1, ",filter:\"owner\""

    :goto_1
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "code":Ljava/lang/String;
    const-string v1, "code"

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/WallGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 41
    .end local v0    # "code":Ljava/lang/String;
    :cond_0
    :goto_2
    iput p1, p0, Lcom/vkontakte/android/api/WallGet;->uid:I

    .line 43
    new-instance v1, Lcom/vkontakte/android/api/WallGet$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/api/WallGet$1;-><init>(Lcom/vkontakte/android/api/WallGet;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/api/WallGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 53
    return-void

    .line 32
    :cond_1
    const-string v1, "wall.get"

    goto :goto_0

    .line 34
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 37
    :cond_3
    const-string v1, "photo_sizes"

    invoke-virtual {p0, v1, v5}, Lcom/vkontakte/android/api/WallGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 38
    const-string v1, "owner_id"

    invoke-virtual {p0, v1, p1}, Lcom/vkontakte/android/api/WallGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v1, v2, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "extended"

    invoke-virtual {v1, v2, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 39
    if-eqz p4, :cond_0

    const-string v1, "filter"

    const-string v2, "owner"

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/api/WallGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_2
.end method

.method private doParse(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 10
    .param p3, "items"    # Lorg/json/JSONArray;
    .param p4, "status"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v8, v0, [Lcom/vkontakte/android/NewsEntry;

    .line 129
    .local v8, "result":[Lcom/vkontakte/android/NewsEntry;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGet;->callback:Lcom/vkontakte/android/api/WallGet$Callback;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGet;->callback:Lcom/vkontakte/android/api/WallGet$Callback;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-direct {p0, p4}, Lcom/vkontakte/android/api/WallGet;->parseStatus(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v8, v1, v2}, Lcom/vkontakte/android/api/WallGet$Callback;->success([Lcom/vkontakte/android/NewsEntry;ILjava/lang/Object;)V

    .line 136
    :cond_0
    return-void

    .line 130
    :cond_1
    add-int/lit8 v9, v7, -0x1

    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {p3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "from_id"

    const-string v5, "from_id"

    const-string v6, "id"

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v8, v9

    .line 131
    add-int/lit8 v0, v7, -0x1

    aget-object v0, v8, v0

    iget v1, p0, Lcom/vkontakte/android/api/WallGet;->uid:I

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 129
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private parseStatus(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioFile;-><init>()V

    .line 59
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "aid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 60
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 61
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 62
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "artist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 63
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 64
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 65
    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    goto/16 :goto_0

    .line 68
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_2
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    .line 76
    :try_start_0
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "wall"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 77
    .local v2, "items":Lorg/json/JSONArray;
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "profiles"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 78
    .local v5, "profiles1":Lorg/json/JSONArray;
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "groups"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 80
    .local v6, "profiles2":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 81
    iget-object v9, p0, Lcom/vkontakte/android/api/WallGet;->callback:Lcom/vkontakte/android/api/WallGet$Callback;

    if-eqz v9, :cond_0

    .line 82
    iget-object v9, p0, Lcom/vkontakte/android/api/WallGet;->callback:Lcom/vkontakte/android/api/WallGet$Callback;

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/vkontakte/android/NewsEntry;

    const/4 v11, 0x0

    const-string v12, "response"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "status"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/vkontakte/android/api/WallGet;->parseStatus(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Lcom/vkontakte/android/api/WallGet$Callback;->success([Lcom/vkontakte/android/NewsEntry;ILjava/lang/Object;)V

    .line 124
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v5    # "profiles1":Lorg/json/JSONArray;
    .end local v6    # "profiles2":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v2    # "items":Lorg/json/JSONArray;
    .restart local v5    # "profiles1":Lorg/json/JSONArray;
    .restart local v6    # "profiles2":Lorg/json/JSONArray;
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v4, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 90
    .local v0, "groupsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v1, v9, :cond_5

    .line 95
    if-eqz v5, :cond_2

    .line 96
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v1, v9, :cond_7

    .line 103
    :cond_2
    if-eqz v6, :cond_3

    .line 104
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v1, v9, :cond_9

    .line 113
    :cond_3
    iget v9, p0, Lcom/vkontakte/android/api/WallGet;->uid:I

    if-gez v9, :cond_4

    .line 114
    iget v9, p0, Lcom/vkontakte/android/api/WallGet;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/api/WallGet;->gtitle:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget v9, p0, Lcom/vkontakte/android/api/WallGet;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/api/WallGet;->gphoto:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_4
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "status"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {p0, v3, v4, v2, v9}, Lcom/vkontakte/android/api/WallGet;->doParse(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v0    # "groupsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v1    # "i":I
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "profiles1":Lorg/json/JSONArray;
    .end local v6    # "profiles2":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 122
    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    .end local v8    # "x":Ljava/lang/Exception;
    .restart local v0    # "groupsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v1    # "i":I
    .restart local v2    # "items":Lorg/json/JSONArray;
    .restart local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "profiles1":Lorg/json/JSONArray;
    .restart local v6    # "profiles2":Lorg/json/JSONArray;
    :cond_5
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "copy_owner_id"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-gez v9, :cond_6

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "copy_owner_id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    neg-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 92
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "copy_owner_id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    neg-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_7
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "uid"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 98
    .local v7, "uid":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "first_name"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "last_name"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    sget v9, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v9, v9, v13

    if-lez v9, :cond_8

    const-string v9, "photo_medium_rec"

    :goto_4
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 99
    :cond_8
    const-string v9, "photo"

    goto :goto_4

    .line 105
    .end local v7    # "uid":I
    :cond_9
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "gid"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    neg-int v7, v9

    .line 106
    .restart local v7    # "uid":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 107
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    sget v9, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v9, v9, v13

    if-lez v9, :cond_b

    const-string v9, "photo_medium"

    :goto_5
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 108
    :cond_b
    const-string v9, "photo"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallGet$Callback;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vkontakte/android/api/WallGet;->callback:Lcom/vkontakte/android/api/WallGet$Callback;

    .line 140
    return-object p0
.end method
