.class public Lcom/vkontakte/android/api/AudioGetById;
.super Lcom/vkontakte/android/APIRequest;
.source "AudioGetById.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AudioGetById$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AudioGetById$Callback;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "audios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "audio.getById"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "audios"

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AudioGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetById;->callback:Lcom/vkontakte/android/api/AudioGetById$Callback;

    if-nez v1, :cond_0

    .line 50
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 44
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 46
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetById;->callback:Lcom/vkontakte/android/api/AudioGetById$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/AudioGetById$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetById;->callback:Lcom/vkontakte/android/api/AudioGetById$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/AudioGetById$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 28
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 29
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 39
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return-object v3

    .line 30
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 31
    .local v2, "f":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    .line 32
    .local v1, "af":Lcom/vkontakte/android/AudioFile;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    .end local v2    # "f":Lorg/json/JSONObject;
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v5

    .line 39
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/AudioGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AudioGetById$Callback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/api/AudioGetById;->callback:Lcom/vkontakte/android/api/AudioGetById$Callback;

    .line 54
    return-object p0
.end method
