.class Lcom/vkontakte/android/AudioPlayerService$4$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerService$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$4$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$4;

    .line 293
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$4;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$4;->access$0(Lcom/vkontakte/android/AudioPlayerService$4;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$4;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$4;->access$0(Lcom/vkontakte/android/AudioPlayerService$4;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0
.end method
