.class Lcom/vkontakte/android/AudioPlayerService$2$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerService$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$2$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$2;

    .line 247
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 253
    const/16 v0, 0xdd

    if-ne p1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$2;->access$0(Lcom/vkontakte/android/AudioPlayerService$2;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$2;->access$0(Lcom/vkontakte/android/AudioPlayerService$2;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$2;->access$0(Lcom/vkontakte/android/AudioPlayerService$2;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->enableBroadcast(Z)V

    .line 257
    :cond_0
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$2;->access$0(Lcom/vkontakte/android/AudioPlayerService$2;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$2;->access$0(Lcom/vkontakte/android/AudioPlayerService$2;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$2;->access$0(Lcom/vkontakte/android/AudioPlayerService$2;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->enableBroadcast(Z)V

    .line 251
    :cond_0
    return-void
.end method
