.class Lcom/vkontakte/android/AudioPlayerView$14;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView;->enableBroadcast(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerView;

.field private final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$14;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    iput-boolean p2, p0, Lcom/vkontakte/android/AudioPlayerView$14;->val$enable:Z

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 386
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HERE enable broadcast "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vkontakte/android/AudioPlayerView$14;->val$enable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$14;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerView$14;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 388
    return-void
.end method
