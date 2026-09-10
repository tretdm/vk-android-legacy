.class public Lcom/vkontakte/android/data/GameFeedEntry;
.super Ljava/lang/Object;
.source "GameFeedEntry.java"


# static fields
.field public static final TYPE_INSTALL:I = 0x1

.field public static final TYPE_LEVEL:I = 0x2


# instance fields
.field public app:Lcom/vkontakte/android/data/ApiApplication;

.field public level:I

.field public type:I

.field public user:Lcom/vkontakte/android/UserProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 3
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
    .line 24
    .local p2, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .local p3, "apps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/data/ApiApplication;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "tp":Ljava/lang/String;
    const-string v2, "level"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    const/4 v2, 0x2

    iput v2, p0, Lcom/vkontakte/android/data/GameFeedEntry;->type:I

    .line 29
    const-string v2, "level"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/data/GameFeedEntry;->level:I

    .line 33
    :cond_0
    :goto_0
    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iput-object v2, p0, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    .line 34
    const-string v2, "app_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/ApiApplication;

    iput-object v2, p0, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    .line 38
    .end local v0    # "tp":Ljava/lang/String;
    :goto_1
    return-void

    .line 30
    .restart local v0    # "tp":Ljava/lang/String;
    :cond_1
    const-string v2, "install"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const/4 v2, 0x1

    iput v2, p0, Lcom/vkontakte/android/data/GameFeedEntry;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v0    # "tp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
