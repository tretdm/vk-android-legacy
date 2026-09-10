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

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-eq v0, v1, :cond_1

    .line 353
    :cond_0
    :goto_1
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$2;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->updateBroadcast()V

    goto :goto_1

    .line 350
    :catch_0
    move-exception v0

    goto :goto_0
.end method
