.class Lcom/vkontakte/android/AudioPlayerActivity$14;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AudioDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->deleteFile(Lcom/vkontakte/android/AudioFile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field final synthetic val$f:Lcom/vkontakte/android/AudioFile;

.field final synthetic val$updateCover:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;Z)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->val$f:Lcom/vkontakte/android/AudioFile;

    iput-boolean p3, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->val$updateCover:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 555
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 537
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v2, 0x7f0d003b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aid"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/AudioPlayerActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-eqz v1, :cond_1

    .line 542
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->resetCurrentFileIDs()V

    .line 546
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    .line 547
    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->val$updateCover:Z

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$14;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->invalidatePager()V

    .line 550
    :cond_0
    return-void

    .line 544
    :cond_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->removeCurrentFile()Z

    goto :goto_0
.end method
