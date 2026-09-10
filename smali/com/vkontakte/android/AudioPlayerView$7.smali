.class Lcom/vkontakte/android/AudioPlayerView$7;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$7;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 203
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$7;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    .line 198
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 192
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->seek(I)V

    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$7;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    .line 194
    return-void
.end method
