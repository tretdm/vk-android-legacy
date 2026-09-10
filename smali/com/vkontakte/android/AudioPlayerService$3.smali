.class Lcom/vkontakte/android/AudioPlayerService$3;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1402(Z)Z

    .line 390
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1500(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 408
    :goto_0
    return-void

    .line 394
    :cond_1
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "execute"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return API.audio.getById({\"audios\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"})[0].url;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$3$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$3$1;-><init>(Lcom/vkontakte/android/AudioPlayerService$3;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_0
.end method
