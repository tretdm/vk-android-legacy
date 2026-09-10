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
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->callback:Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->callback:Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->callback:Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;

    .line 36
    return-object p0
.end method
