.class Lcom/vkontakte/android/api/MessagesGetFull$2;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "MessagesGetFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/MessagesGetFull;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/MessagesGetFull;

.field private final synthetic val$fwdNames:Ljava/util/HashMap;

.field private final synthetic val$fwdPhotos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/MessagesGetFull;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetFull$2;->this$0:Lcom/vkontakte/android/api/MessagesGetFull;

    iput-object p2, p0, Lcom/vkontakte/android/api/MessagesGetFull$2;->val$fwdNames:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/vkontakte/android/api/MessagesGetFull$2;->val$fwdPhotos:Ljava/util/HashMap;

    .line 53
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesGetFull$2;->this$0:Lcom/vkontakte/android/api/MessagesGetFull;

    iget-object v0, v0, Lcom/vkontakte/android/api/MessagesGetFull;->callback:Lcom/vkontakte/android/api/MessagesGetFull$Callback;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesGetFull$2;->this$0:Lcom/vkontakte/android/api/MessagesGetFull;

    iget-object v0, v0, Lcom/vkontakte/android/api/MessagesGetFull;->callback:Lcom/vkontakte/android/api/MessagesGetFull$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/MessagesGetFull$Callback;->fail(ILjava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 57
    .local v4, "users":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 65
    .end local v0    # "i":I
    .end local v4    # "users":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 58
    .restart local v0    # "i":I
    .restart local v4    # "users":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "uid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 59
    .local v3, "uid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "first_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "last_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    const-string v5, "photo_medium_rec"

    :goto_2
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "photo":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/api/MessagesGetFull$2;->val$fwdNames:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v5, p0, Lcom/vkontakte/android/api/MessagesGetFull$2;->val$fwdPhotos:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "photo":Ljava/lang/String;
    :cond_1
    const-string v5, "photo_rec"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 64
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v4    # "users":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
