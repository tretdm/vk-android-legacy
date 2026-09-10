.class public Lcom/vkontakte/android/api/VideoGetById;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoGetById.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VideoGetById$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/VideoGetById$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "vid"    # I

    .prologue
    .line 15
    const-string v0, "video.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "videos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VideoGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    new-instance v0, Lcom/vkontakte/android/api/VideoGetById$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/VideoGetById$1;-><init>(Lcom/vkontakte/android/api/VideoGetById;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/VideoGetById;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 28
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    .line 32
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    .local v0, "a":Lorg/json/JSONArray;
    new-instance v3, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v3}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 34
    .local v3, "v":Lcom/vkontakte/android/api/VideoFile;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-le v5, v6, :cond_5

    .line 35
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 36
    .local v2, "jv":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/api/VideoFile;

    .end local v3    # "v":Lcom/vkontakte/android/api/VideoFile;
    invoke-direct {v3}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 37
    .restart local v3    # "v":Lcom/vkontakte/android/api/VideoFile;
    const-string v5, "vid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 38
    const-string v5, "owner_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 39
    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 40
    const-string v5, "description"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    .line 41
    const-string v5, "duration"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 42
    const-string v5, "image"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 43
    sget v5, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v6, "date"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Lcom/vkontakte/android/api/VideoFile;->date:I

    .line 44
    const-string v5, "files"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 45
    .local v1, "files":Lorg/json/JSONObject;
    if-eqz v1, :cond_7

    .line 47
    const-string v5, "flv_320"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    const-string v5, "flv_320"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 49
    :cond_0
    const-string v5, "mp4_240"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    const-string v5, "mp4_240"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 51
    :cond_1
    const-string v5, "mp4_360"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    const-string v5, "mp4_360"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 53
    :cond_2
    const-string v5, "mp4_480"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 54
    const-string v5, "mp4_480"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 55
    :cond_3
    const-string v5, "mp4_720"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 56
    const-string v5, "mp4_720"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    .line 57
    :cond_4
    const-string v5, "external"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 58
    const-string v5, "external"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 63
    .end local v1    # "files":Lorg/json/JSONObject;
    .end local v2    # "jv":Lorg/json/JSONObject;
    :cond_5
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/api/VideoGetById;->callback:Lcom/vkontakte/android/api/VideoGetById$Callback;

    if-eqz v5, :cond_6

    .line 64
    iget-object v5, p0, Lcom/vkontakte/android/api/VideoGetById;->callback:Lcom/vkontakte/android/api/VideoGetById$Callback;

    invoke-interface {v5, v3}, Lcom/vkontakte/android/api/VideoGetById$Callback;->success(Lcom/vkontakte/android/api/VideoFile;)V

    .line 68
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "v":Lcom/vkontakte/android/api/VideoFile;
    :cond_6
    :goto_1
    return-void

    .line 60
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "files":Lorg/json/JSONObject;
    .restart local v2    # "jv":Lorg/json/JSONObject;
    .restart local v3    # "v":Lcom/vkontakte/android/api/VideoFile;
    :cond_7
    const-string v5, "player"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "files":Lorg/json/JSONObject;
    .end local v2    # "jv":Lorg/json/JSONObject;
    .end local v3    # "v":Lcom/vkontakte/android/api/VideoFile;
    :catch_0
    move-exception v4

    .line 66
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoGetById$Callback;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoGetById;->callback:Lcom/vkontakte/android/api/VideoGetById$Callback;

    .line 72
    return-object p0
.end method
