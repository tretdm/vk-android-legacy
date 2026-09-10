.class public Lcom/vkontakte/android/api/AudioSearch;
.super Lcom/vkontakte/android/APIRequest;
.source "AudioSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AudioSearch$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AudioSearch$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "audio.search"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AudioSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "count"

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AudioSearch;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioSearch;->callback:Lcom/vkontakte/android/api/AudioSearch$Callback;

    if-nez v1, :cond_0

    .line 52
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 46
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 48
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioSearch;->callback:Lcom/vkontakte/android/api/AudioSearch$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/AudioSearch$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioSearch;->callback:Lcom/vkontakte/android/api/AudioSearch$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/AudioSearch$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v3, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 26
    .local v3, "list":Lorg/json/JSONArray;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 35
    .end local v1    # "i":I
    .end local v3    # "list":Lorg/json/JSONArray;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :goto_1
    return-object v4

    .line 27
    .restart local v1    # "i":I
    .restart local v3    # "list":Lorg/json/JSONArray;
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 28
    .local v2, "jf":Lorg/json/JSONObject;
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v0, v2}, Lcom/vkontakte/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    .line 29
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v1    # "i":I
    .end local v2    # "jf":Lorg/json/JSONObject;
    .end local v3    # "list":Lorg/json/JSONArray;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :catch_0
    move-exception v5

    .line 33
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/AudioSearch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AudioSearch$Callback;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/api/AudioSearch;->callback:Lcom/vkontakte/android/api/AudioSearch$Callback;

    .line 40
    return-object p0
.end method
