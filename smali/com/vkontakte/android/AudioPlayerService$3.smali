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

.field private final synthetic val$f:Lcom/vkontakte/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerService$3;->val$f:Lcom/vkontakte/android/AudioFile;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "0:00"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->setProgress(ILjava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->setBuffered(I)V

    .line 270
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$3;->val$f:Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->displayInfo(Lcom/vkontakte/android/AudioFile;)V

    .line 272
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$12(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$13(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$3;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$12(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->setNumber(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method
