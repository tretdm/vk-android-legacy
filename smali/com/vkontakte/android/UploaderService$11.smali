.class Lcom/vkontakte/android/UploaderService$11;
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
    iput-object p1, p0, Lcom/vkontakte/android/UploaderService$11;->this$0:Lcom/vkontakte/android/UploaderService;

    iput-object p2, p0, Lcom/vkontakte/android/UploaderService$11;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 564
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 567
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 568
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 569
    .local v2, "p":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/Photo;

    invoke-direct {v3}, Lcom/vkontakte/android/Photo;-><init>()V

    .line 570
    .local v3, "ph":Lcom/vkontakte/android/Photo;
    const-string v5, "pid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/Photo;->id:I

    .line 571
    const-string v5, "aid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/Photo;->albumID:I

    .line 572
    const-string v5, "owner_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/Photo;->ownerID:I

    .line 573
    const-string v5, "src"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    .line 574
    const-string v5, "text"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "text"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, v3, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 575
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    sget-boolean v5, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v5, :cond_2

    .line 576
    :cond_0
    const-string v5, "src_xbig"

    const-string v6, "src_big"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 579
    :goto_1
    const-string v5, "created"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sget v6, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/vkontakte/android/Photo;->date:I

    .line 580
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.PHOTO_ADDED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "photo"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 582
    const-string v5, "aid"

    iget v6, v3, Lcom/vkontakte/android/Photo;->albumID:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    iget-object v5, p0, Lcom/vkontakte/android/UploaderService$11;->this$0:Lcom/vkontakte/android/UploaderService;

    const-string v6, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v5, v1, v6}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 587
    iget-object v5, p0, Lcom/vkontakte/android/UploaderService$11;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget v6, v3, Lcom/vkontakte/android/Photo;->id:I

    iput v6, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    .line 589
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "p":Lorg/json/JSONObject;
    .end local v3    # "ph":Lcom/vkontakte/android/Photo;
    :goto_2
    return-void

    .line 574
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v2    # "p":Lorg/json/JSONObject;
    .restart local v3    # "ph":Lcom/vkontakte/android/Photo;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 578
    :cond_2
    const-string v5, "src_big"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 588
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "p":Lorg/json/JSONObject;
    .end local v3    # "ph":Lcom/vkontakte/android/Photo;
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
