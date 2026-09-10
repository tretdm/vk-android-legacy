.class Lcom/vkontakte/android/api/PhotosCreateAlbum$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "PhotosCreateAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/api/PhotosCreateAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/api/PhotosCreateAlbum;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/api/PhotosCreateAlbum;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum$1;->this$0:Lcom/vkontakte/android/api/PhotosCreateAlbum;

    .line 16
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum$1;->this$0:Lcom/vkontakte/android/api/PhotosCreateAlbum;

    iget-object v0, v0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum$1;->this$0:Lcom/vkontakte/android/api/PhotosCreateAlbum;

    iget-object v0, v0, Lcom/vkontakte/android/api/PhotosCreateAlbum;->callback:Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;->fail(ILjava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkontakte/android/api/PhotosCreateAlbum$1;->this$0:Lcom/vkontakte/android/api/PhotosCreateAlbum;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 19
    return-void
.end method
