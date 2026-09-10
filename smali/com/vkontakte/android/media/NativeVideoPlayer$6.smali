.class Lcom/vkontakte/android/media/NativeVideoPlayer$6;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/NativeVideoPlayer;->startUpdatingPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$6;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 323
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$6;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$6;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v0, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$6;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$6;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v0, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    iget-object v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer$6;->this$0:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->getPosition()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerPositionUpdate(I)V

    .line 326
    :cond_1
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0
.end method
