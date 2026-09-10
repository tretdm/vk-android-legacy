.class Lcom/vkontakte/android/media/PlayerWrapper$7;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"

# interfaces
.implements Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/PlayerWrapper;->initNativePlayer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/PlayerWrapper;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/PlayerWrapper;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nativePlayerBufferingUpdate(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;->onUpdateBuffered(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public nativePlayerCompleted()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;->onPlaybackCompleted()V

    .line 168
    :cond_0
    return-void
.end method

.method public nativePlayerError(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;->onError(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public nativePlayerPositionUpdate(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;->onUpdatePlaybackPosition(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public nativePlayerReady(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$7;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;->onPlayerReady(II)V

    .line 153
    :cond_0
    return-void
.end method
