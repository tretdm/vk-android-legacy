.class public Lcom/vkontakte/android/api/PhotosDeleteAlbum;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosDeleteAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "aid"    # I

    .prologue
    .line 11
    const-string v0, "photos.deleteAlbum"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "aid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    new-instance v0, Lcom/vkontakte/android/api/PhotosDeleteAlbum$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PhotosDeleteAlbum$1;-><init>(Lcom/vkontakte/android/api/PhotosDeleteAlbum;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->callback:Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;

    if-nez v1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 33
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 34
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->callback:Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->callback:Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->callback:Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;

    .line 42
    return-object p0
.end method
