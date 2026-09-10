.class Lcom/vkontakte/android/AudioPlayerService$2;
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

.field private final synthetic val$f:Lcom/vkontakte/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerService$2;->val$f:Lcom/vkontakte/android/AudioFile;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 362
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-eq v0, v1, :cond_1

    .line 368
    :cond_0
    :goto_1
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->updateBroadcast()V

    .line 365
    const-wide/16 v0, 0x1f40

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 366
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v0, v1, :cond_0

    .line 367
    const-string v0, "audio_play"

    invoke-static {v0}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "audio_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$2;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$2;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "source"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$22(Lcom/vkontakte/android/AudioPlayerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    goto :goto_1

    .line 362
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 365
    :catch_1
    move-exception v0

    goto :goto_2
.end method
