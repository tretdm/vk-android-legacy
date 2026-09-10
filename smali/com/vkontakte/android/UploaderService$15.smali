.class Lcom/vkontakte/android/UploaderService$15;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "UploaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UploaderService;->saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UploaderService;

.field final synthetic val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/vkontakte/android/UploaderService$15;->this$0:Lcom/vkontakte/android/UploaderService;

    iput-object p2, p0, Lcom/vkontakte/android/UploaderService$15;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 821
    :try_start_0
    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 824
    .local v0, "jd":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/vkontakte/android/UploaderService$15;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iput-object v0, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    .end local v0    # "jd":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v1

    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
