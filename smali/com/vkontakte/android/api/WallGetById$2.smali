.class Lcom/vkontakte/android/api/WallGetById$2;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "WallGetById.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/WallGetById;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/WallGetById;

.field private final synthetic val$names:Ljava/util/HashMap;

.field private final synthetic val$photos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/WallGetById;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/WallGetById$2;->this$0:Lcom/vkontakte/android/api/WallGetById;

    iput-object p2, p0, Lcom/vkontakte/android/api/WallGetById$2;->val$names:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/vkontakte/android/api/WallGetById$2;->val$photos:Ljava/util/HashMap;

    .line 93
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "oo"    # Lorg/json/JSONObject;

    .prologue
    .line 96
    :try_start_0
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 97
    .local v2, "groups":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 107
    .end local v2    # "groups":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :goto_1
    return-void

    .line 98
    .restart local v2    # "groups":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    :cond_0
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "gid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    neg-int v0, v6

    .line 99
    .local v0, "gid":I
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "gt":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    const-string v6, "photo_medium"

    :goto_2
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "gp":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/api/WallGetById$2;->val$names:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v6, p0, Lcom/vkontakte/android/api/WallGetById$2;->val$photos:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "gp":Ljava/lang/String;
    :cond_1
    const-string v6, "photo"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 104
    .end local v0    # "gid":I
    .end local v2    # "groups":Lorg/json/JSONArray;
    .end local v3    # "gt":Ljava/lang/String;
    .end local v4    # "i":I
    :catch_0
    move-exception v5

    .line 105
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
