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
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "audios":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v2, "audio.getById"

    invoke-direct {p0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, ""

    .line 17
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 18
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string v2, "audios"

    invoke-virtual {p0, v2, v0}, Lcom/vkontakte/android/api/AudioGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    new-instance v2, Lcom/vkontakte/android/api/AudioGetById$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/api/AudioGetById$1;-><init>(Lcom/vkontakte/android/api/AudioGetById;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/api/AudioGetById;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 31
    return-void

    .line 17
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "aa":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    :try_start_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 37
    .local v3, "files":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/AudioFile;>;"
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 38
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 39
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 52
    .end local v4    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/api/AudioGetById;->callback:Lcom/vkontakte/android/api/AudioGetById$Callback;

    if-eqz v5, :cond_1

    .line 53
    iget-object v5, p0, Lcom/vkontakte/android/api/AudioGetById;->callback:Lcom/vkontakte/android/api/AudioGetById$Callback;

    invoke-interface {v5, v3}, Lcom/vkontakte/android/api/AudioGetById$Callback;->success(Ljava/util/Vector;)V

    .line 56
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "files":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/AudioFile;>;"
    :cond_1
    :goto_1
    return-void

    .line 40
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v3    # "files":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/AudioFile;>;"
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    .local v2, "f":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v1}, Lcom/vkontakte/android/AudioFile;-><init>()V

    .line 42
    .local v1, "af":Lcom/vkontakte/android/AudioFile;
    const-string v5, "aid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 43
    const-string v5, "owner_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 44
    const-string v5, "artist"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 45
    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 46
    const-string v5, "duration"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 47
    const-string v5, "lyrics_id"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    .line 48
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    .end local v2    # "f":Lorg/json/JSONObject;
    .end local v3    # "files":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/AudioFile;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/AudioGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AudioGetById$Callback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/api/AudioGetById;->callback:Lcom/vkontakte/android/api/AudioGetById$Callback;

    .line 60
    return-object p0
.end method
