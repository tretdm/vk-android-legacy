.class public Lcom/vkontakte/android/data/GameRequest;
.super Ljava/lang/Object;
.source "GameRequest.java"


# static fields
.field public static final TYPE_INVITE:I = 0x1

.field public static final TYPE_REQUEST:I = 0x2


# instance fields
.field public app:Lcom/vkontakte/android/data/ApiApplication;

.field public date:I

.field public id:I

.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:I

.field public unread:Z

.field public user:Lcom/vkontakte/android/UserProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/UserProfile;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .local p3, "apps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/data/ApiApplication;>;"
    const/4 v3, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/data/GameRequest;->id:I

    .line 32
    const-string v2, "app_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/ApiApplication;

    iput-object v2, p0, Lcom/vkontakte/android/data/GameRequest;->app:Lcom/vkontakte/android/data/ApiApplication;

    .line 33
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/data/GameRequest;->text:Ljava/lang/String;

    .line 34
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "tp":Ljava/lang/String;
    const-string v2, "request"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const/4 v2, 0x2

    iput v2, p0, Lcom/vkontakte/android/data/GameRequest;->type:I

    .line 40
    :cond_0
    :goto_0
    const-string v2, "from_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iput-object v2, p0, Lcom/vkontakte/android/data/GameRequest;->user:Lcom/vkontakte/android/UserProfile;

    .line 41
    const-string v2, "date"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/data/GameRequest;->date:I

    .line 42
    const-string v2, "key"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/data/GameRequest;->key:Ljava/lang/String;

    .line 43
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/data/GameRequest;->name:Ljava/lang/String;

    .line 44
    const-string v2, "unread"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/vkontakte/android/data/GameRequest;->unread:Z

    .line 48
    .end local v0    # "tp":Ljava/lang/String;
    :goto_2
    return-void

    .line 37
    .restart local v0    # "tp":Ljava/lang/String;
    :cond_1
    const-string v2, "invite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const/4 v2, 0x1

    iput v2, p0, Lcom/vkontakte/android/data/GameRequest;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v0    # "tp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 44
    .end local v1    # "x":Ljava/lang/Exception;
    .restart local v0    # "tp":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
