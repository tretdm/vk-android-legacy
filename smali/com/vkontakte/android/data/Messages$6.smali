.class Lcom/vkontakte/android/data/Messages$6;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getById(I)Lcom/vkontakte/android/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$res:[Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>([Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/data/Messages$6;->val$res:[Lcom/vkontakte/android/Message;

    .line 335
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$6;->val$res:[Lcom/vkontakte/android/Message;

    const/4 v2, 0x0

    new-instance v3, Lcom/vkontakte/android/Message;

    const-string v4, "response"

    invoke-static {p1, v4}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
