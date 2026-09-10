.class public Lcom/vkontakte/android/api/DocsGet;
.super Lcom/vkontakte/android/APIRequest;
.source "DocsGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/DocsGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/DocsGet$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 16
    const-string v0, "docs.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "oid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/DocsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    new-instance v0, Lcom/vkontakte/android/api/DocsGet$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/DocsGet$1;-><init>(Lcom/vkontakte/android/api/DocsGet;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/DocsGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 29
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v2, p0, Lcom/vkontakte/android/api/DocsGet;->callback:Lcom/vkontakte/android/api/DocsGet$Callback;

    if-nez v2, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 62
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/DocsGet;->callback:Lcom/vkontakte/android/api/DocsGet$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/DocsGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 64
    check-cast v1, [Ljava/lang/Object;

    .line 65
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/DocsGet;->callback:Lcom/vkontakte/android/api/DocsGet$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/DocsGet$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    :try_start_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 34
    .local v2, "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    const/4 v5, 0x0

    .line 35
    .local v5, "total":I
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 36
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 37
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    .line 38
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 52
    .end local v3    # "i":I
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 55
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    .end local v5    # "total":I
    :goto_1
    return-object v6

    .line 39
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v2    # "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    .restart local v3    # "i":I
    .restart local v5    # "total":I
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    .local v4, "j":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/api/Document;

    invoke-direct {v1}, Lcom/vkontakte/android/api/Document;-><init>()V

    .line 41
    .local v1, "d":Lcom/vkontakte/android/api/Document;
    const-string v6, "did"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/vkontakte/android/api/Document;->did:I

    .line 42
    const-string v6, "owner_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/vkontakte/android/api/Document;->oid:I

    .line 43
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/vkontakte/android/api/Document;->title:Ljava/lang/String;

    .line 44
    const-string v6, "size"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/vkontakte/android/api/Document;->size:I

    .line 45
    const-string v6, "ext"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/vkontakte/android/api/Document;->ext:Ljava/lang/String;

    .line 46
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/vkontakte/android/api/Document;->url:Ljava/lang/String;

    .line 47
    const-string v6, "thumb"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/vkontakte/android/api/Document;->thumb:Ljava/lang/String;

    .line 48
    iget v6, v1, Lcom/vkontakte/android/api/Document;->size:I

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->langFileSize(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/vkontakte/android/api/Document;->size_str:Ljava/lang/String;

    .line 49
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "d":Lcom/vkontakte/android/api/Document;
    .end local v2    # "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    .end local v3    # "i":I
    .end local v4    # "j":Lorg/json/JSONObject;
    .end local v5    # "total":I
    :catch_0
    move-exception v6

    .line 55
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/DocsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/DocsGet$Callback;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkontakte/android/api/DocsGet;->callback:Lcom/vkontakte/android/api/DocsGet$Callback;

    .line 71
    return-object p0
.end method
