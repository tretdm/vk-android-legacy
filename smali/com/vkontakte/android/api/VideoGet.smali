.class public Lcom/vkontakte/android/api/VideoGet;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VideoGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/VideoGet$Callback;


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "album"    # I

    .prologue
    .line 17
    const-string v0, "video.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    if-lez p1, :cond_0

    const-string v0, "uid"

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VideoGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "aid"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    new-instance v0, Lcom/vkontakte/android/api/VideoGet$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/VideoGet$1;-><init>(Lcom/vkontakte/android/api/VideoGet;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/VideoGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 30
    return-void

    .line 18
    :cond_0
    const-string v0, "gid"

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    if-nez v2, :cond_0

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 83
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/VideoGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 85
    check-cast v1, [Ljava/lang/Object;

    .line 86
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/VideoGet$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    :try_start_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 35
    .local v6, "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    const/4 v4, 0x0

    .line 36
    .local v4, "total":I
    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 37
    .local v0, "arr":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 38
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    .line 39
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 72
    .end local v2    # "i":I
    :cond_0
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    .line 76
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v4    # "total":I
    .end local v6    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :goto_1
    return-object v8

    .line 40
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v4    # "total":I
    .restart local v6    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 41
    .local v3, "jv":Lorg/json/JSONObject;
    new-instance v5, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v5}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 42
    .local v5, "v":Lcom/vkontakte/android/api/VideoFile;
    const-string v8, "vid"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 43
    const-string v8, "owner_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 44
    const-string v8, "title"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 45
    const-string v8, "description"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    .line 46
    const-string v8, "duration"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 47
    const-string v8, "image"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 48
    const-string v8, "image_medium"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    .line 49
    sget v8, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v9, "date"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v5, Lcom/vkontakte/android/api/VideoFile;->date:I

    .line 50
    const-string v8, "views"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Lcom/vkontakte/android/api/VideoFile;->views:I

    .line 51
    const-string v8, "files"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 52
    .local v1, "files":Lorg/json/JSONObject;
    if-eqz v1, :cond_8

    .line 54
    const-string v8, "flv_320"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    const-string v8, "flv_320"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 56
    :cond_2
    const-string v8, "mp4_240"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 57
    const-string v8, "mp4_240"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 58
    :cond_3
    const-string v8, "mp4_360"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 59
    const-string v8, "mp4_360"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 60
    :cond_4
    const-string v8, "mp4_480"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 61
    const-string v8, "mp4_480"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 62
    :cond_5
    const-string v8, "mp4_720"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 63
    const-string v8, "mp4_720"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    .line 64
    :cond_6
    const-string v8, "external"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 65
    const-string v8, "external"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 69
    :cond_7
    :goto_2
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 67
    :cond_8
    const-string v8, "player"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 73
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "files":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "jv":Lorg/json/JSONObject;
    .end local v4    # "total":I
    .end local v5    # "v":Lcom/vkontakte/android/api/VideoFile;
    .end local v6    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :catch_0
    move-exception v7

    .line 74
    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoGet$Callback;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    .line 92
    return-object p0
.end method
