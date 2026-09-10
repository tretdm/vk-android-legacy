.class Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AudioDelete$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioPlayerFragment;->deleteFile(Lcom/vkontakte/android/AudioFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

.field private final synthetic val$f:Lcom/vkontakte/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;->val$f:Lcom/vkontakte/android/AudioFile;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f06004e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    return-void
.end method

.method public success()V
    .locals 4

    .prologue
    .line 281
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0600c4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aid"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;->val$f:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->resetCurrentFileIDs()V

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 291
    return-void

    .line 288
    :cond_0
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->removeCurrentFile()Z

    goto :goto_0
.end method
