.class public Lcom/vkontakte/android/api/PhotosEditAlbum;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosEditAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "aid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "privacy"    # I

    .prologue
    .line 11
    const-string v0, "photos.editAlbum"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "aid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PhotosEditAlbum;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "descr"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "privacy"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    new-instance v0, Lcom/vkontakte/android/api/PhotosEditAlbum$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PhotosEditAlbum$1;-><init>(Lcom/vkontakte/android/api/PhotosEditAlbum;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PhotosEditAlbum;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosEditAlbum;->callback:Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;

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
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosEditAlbum;->callback:Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PhotosEditAlbum;->callback:Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;->success()V

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

.method public setCallback(Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosEditAlbum;->callback:Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;

    .line 42
    return-object p0
.end method
