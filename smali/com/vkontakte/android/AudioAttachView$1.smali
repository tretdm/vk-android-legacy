.class Lcom/vkontakte/android/AudioAttachView$1;
.super Ljava/lang/Object;
.source "AudioAttachView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioAttachView;->setData(Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioAttachView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView$1;->this$0:Lcom/vkontakte/android/AudioAttachView;

    .line 159
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
    .line 173
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$1;->this$0:Lcom/vkontakte/android/AudioAttachView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioAttachView;->access$0(Lcom/vkontakte/android/AudioAttachView;Z)V

    .line 168
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 162
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->seek(I)V

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView$1;->this$0:Lcom/vkontakte/android/AudioAttachView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioAttachView;->access$0(Lcom/vkontakte/android/AudioAttachView;Z)V

    .line 164
    return-void
.end method
