.class public Lcom/vkontakte/android/api/UsersGet;
.super Lcom/vkontakte/android/APIRequest;
.source "UsersGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/UsersGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/UsersGet$Callback;


# direct methods
.method public constructor <init>(Ljava/util/Vector;[Ljava/lang/String;)V
    .locals 9
    .param p2, "fields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "uids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    .line 38
    const-string v4, "users.get"

    invoke-direct {p0, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v1, ""

    .local v1, "_uids":Ljava/lang/String;
    const-string v0, ""

    .line 40
    .local v0, "_fields":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    array-length v5, p2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_1

    .line 42
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v4, "fields"

    invoke-virtual {p0, v4, v0}, Lcom/vkontakte/android/api/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    const-string v5, "uids"

    invoke-virtual {v4, v5, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 46
    new-instance v4, Lcom/vkontakte/android/api/UsersGet$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/api/UsersGet$2;-><init>(Lcom/vkontakte/android/api/UsersGet;)V

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/api/UsersGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 56
    return-void

    .line 40
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 41
    .end local v3    # "uid":I
    :cond_1
    aget-object v2, p2, v4

    .local v2, "fld":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public constructor <init>([I[Ljava/lang/String;)V
    .locals 10
    .param p1, "uids"    # [I
    .param p2, "fields"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 17
    const-string v5, "users.get"

    invoke-direct {p0, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v1, ""

    .local v1, "_uids":Ljava/lang/String;
    const-string v0, ""

    .line 19
    .local v0, "_fields":Ljava/lang/String;
    array-length v6, p1

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    .line 20
    array-length v5, p2

    :goto_1
    if-lt v4, v5, :cond_1

    .line 21
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v4, "fields"

    invoke-virtual {p0, v4, v0}, Lcom/vkontakte/android/api/UsersGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    const-string v5, "uids"

    invoke-virtual {v4, v5, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 25
    new-instance v4, Lcom/vkontakte/android/api/UsersGet$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/api/UsersGet$1;-><init>(Lcom/vkontakte/android/api/UsersGet;)V

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/api/UsersGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 35
    return-void

    .line 19
    :cond_0
    aget v3, p1, v5

    .local v3, "uid":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    .end local v3    # "uid":I
    :cond_1
    aget-object v2, p2, v4

    .local v2, "fld":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    :try_start_0
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 61
    .local v3, "r":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 62
    .local v4, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 73
    iget-object v6, p0, Lcom/vkontakte/android/api/UsersGet;->callback:Lcom/vkontakte/android/api/UsersGet$Callback;

    if-eqz v6, :cond_0

    .line 74
    iget-object v6, p0, Lcom/vkontakte/android/api/UsersGet;->callback:Lcom/vkontakte/android/api/UsersGet$Callback;

    invoke-interface {v6, v4}, Lcom/vkontakte/android/api/UsersGet$Callback;->success(Ljava/util/Vector;)V

    .line 78
    .end local v0    # "i":I
    .end local v3    # "r":Lorg/json/JSONArray;
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    :goto_1
    return-void

    .line 63
    .restart local v0    # "i":I
    .restart local v3    # "r":Lorg/json/JSONArray;
    .restart local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 64
    .local v1, "jp":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 65
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    const-string v6, "first_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 66
    const-string v6, "last_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 68
    const-string v6, "photo_rec"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "photo_rec"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 69
    :cond_2
    const-string v6, "photo_medium_rec"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "photo_medium_rec"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 70
    :cond_3
    const-string v6, "uid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 71
    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    .end local v1    # "jp":Lorg/json/JSONObject;
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "r":Lorg/json/JSONArray;
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v5

    .line 76
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/UsersGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/UsersGet$Callback;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vkontakte/android/api/UsersGet;->callback:Lcom/vkontakte/android/api/UsersGet$Callback;

    .line 82
    return-object p0
.end method
