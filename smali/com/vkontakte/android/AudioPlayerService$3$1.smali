.class Lcom/vkontakte/android/AudioPlayerService$3$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerService$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService$3;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$3$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$3;

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error getting file url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$3;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, -0x3ec

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/AudioPlayerService;->onError(Landroid/media/MediaPlayer;II)Z

    .line 406
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$3;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$3;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1500(Lcom/vkontakte/android/AudioPlayerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    goto :goto_0
.end method
