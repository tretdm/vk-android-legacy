.class public Lcom/vkontakte/android/api/FaveGetLinks;
.super Lcom/vkontakte/android/APIRequest;
.source "FaveGetLinks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FaveGetLinks$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/FaveGetLinks$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "fave.getLinks"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "count"

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/FaveGetLinks;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    new-instance v0, Lcom/vkontakte/android/api/FaveGetLinks$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/FaveGetLinks$1;-><init>(Lcom/vkontakte/android/api/FaveGetLinks;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/FaveGetLinks;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 32
    return-void
.end method

.method private parseProfile(Lorg/json/JSONObject;)Lcom/vkontakte/android/UserProfile;
    .locals 3
    .param p1, "p"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 36
    .local v0, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 37
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 38
    iget-object v1, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://vk.com"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 39
    :cond_0
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 40
    const-string v1, "image_src"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 41
    return-object v0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/vkontakte/android/api/FaveGetLinks;->callback:Lcom/vkontakte/android/api/FaveGetLinks$Callback;

    if-nez v1, :cond_0

    .line 66
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 60
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 62
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/FaveGetLinks;->callback:Lcom/vkontakte/android/api/FaveGetLinks$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FaveGetLinks$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FaveGetLinks;->callback:Lcom/vkontakte/android/api/FaveGetLinks$Callback;

    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/FaveGetLinks$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "items"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 48
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 55
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_1
    return-object v2

    .line 49
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/api/FaveGetLinks;->parseProfile(Lorg/json/JSONObject;)Lcom/vkontakte/android/UserProfile;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v3

    .line 53
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/FaveGetLinks$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FaveGetLinks$Callback;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkontakte/android/api/FaveGetLinks;->callback:Lcom/vkontakte/android/api/FaveGetLinks$Callback;

    .line 70
    return-object p0
.end method
