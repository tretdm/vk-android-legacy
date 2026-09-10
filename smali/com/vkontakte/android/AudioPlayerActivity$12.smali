.class Lcom/vkontakte/android/AudioPlayerActivity$12;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AudioAdd$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->addCurrent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field final synthetic val$file:Lcom/vkontakte/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->val$file:Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v1, 0x7f0d0037

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 503
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$402(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 504
    return-void
.end method

.method public success(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 489
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v2, 0x7f0d0038

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.AUDIO_FILE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v2, p1}, Lcom/vkontakte/android/AudioPlayerService;->setCurrentFileIDs(II)V

    .line 492
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->val$file:Lcom/vkontakte/android/AudioFile;

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    iput v2, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 493
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->val$file:Lcom/vkontakte/android/AudioFile;

    iput p1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 494
    const-string v1, "file"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->val$file:Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/AudioPlayerActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    .line 497
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$12;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/AudioPlayerActivity;->access$402(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 498
    return-void
.end method
