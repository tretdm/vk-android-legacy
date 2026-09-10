.class Lcom/vkontakte/android/AudioPlayerService$7;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->registerPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;

.field private final synthetic val$a:Lcom/vkontakte/android/AudioPlayerView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerService$7;->val$a:Lcom/vkontakte/android/AudioPlayerView;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->val$a:Lcom/vkontakte/android/AudioPlayerView;

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->val$a:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->displayInfo(Lcom/vkontakte/android/AudioFile;)V

    .line 505
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->val$a:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$21(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->setBuffered(I)V

    .line 506
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->val$a:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->setPlaying(Z)V

    .line 507
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$12(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->val$a:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$13(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$12(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->setNumber(II)V

    goto :goto_0
.end method
