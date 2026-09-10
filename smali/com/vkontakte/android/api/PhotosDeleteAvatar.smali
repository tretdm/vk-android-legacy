.class public Lcom/vkontakte/android/api/PhotosDeleteAvatar;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosDeleteAvatar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "execute.deleteAvatarNew"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosDeleteAvatar;->callback:Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;

    if-nez v1, :cond_0

    .line 40
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 34
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 36
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosDeleteAvatar;->callback:Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosDeleteAvatar;->callback:Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 20
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_1
    return-object v0

    .line 20
    :cond_0
    const-string v0, "photo_rec"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 23
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosDeleteAvatar;->callback:Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;

    .line 28
    return-object p0
.end method
