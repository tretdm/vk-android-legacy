.class Lcom/vkontakte/android/AudioPlayerActivity$7;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$7;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    .line 190
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
    .line 204
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$7;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioPlayerActivity;->canUpdateProgress:Z

    .line 199
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 193
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->seek(I)V

    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$7;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioPlayerActivity;->canUpdateProgress:Z

    .line 195
    return-void
.end method
