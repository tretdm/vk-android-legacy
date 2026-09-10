.class Lcom/vkontakte/android/UploaderService$13;
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

.field private final synthetic val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UploaderService$13;->this$0:Lcom/vkontakte/android/UploaderService;

    iput-object p2, p0, Lcom/vkontakte/android/UploaderService$13;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 773
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 776
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 777
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 778
    .local v2, "p":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/Photo;

    invoke-direct {v3, v2}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 779
    .local v3, "ph":Lcom/vkontakte/android/Photo;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.PHOTO_ADDED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "photo"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 781
    const-string v5, "aid"

    iget v6, v3, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    iget-object v5, p0, Lcom/vkontakte/android/UploaderService$13;->this$0:Lcom/vkontakte/android/UploaderService;

    const-string v6, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v5, v1, v6}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 786
    iget-object v5, p0, Lcom/vkontakte/android/UploaderService$13;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget v6, v3, Lcom/vkontakte/android/Photo;->id:I

    iput v6, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "p":Lorg/json/JSONObject;
    .end local v3    # "ph":Lcom/vkontakte/android/Photo;
    :goto_0
    return-void

    .line 787
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
