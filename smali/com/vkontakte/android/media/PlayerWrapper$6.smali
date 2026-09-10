.class Lcom/vkontakte/android/media/PlayerWrapper$6;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V
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
    .line 129
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper$6;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 132
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$6;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$6;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;->onEndOfBuffer()V

    .line 135
    :cond_0
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$6;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper$6;->this$0:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;->onPlaybackResumed()V

    .line 138
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
