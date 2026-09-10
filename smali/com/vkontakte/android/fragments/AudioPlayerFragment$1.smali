.class Lcom/vkontakte/android/fragments/AudioPlayerFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 48
    const-string v3, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    const-string v3, "oid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 50
    .local v2, "oid":I
    const-string v3, "aid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "aid":I
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cover available "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->access$0(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 54
    .local v1, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v3, v0, :cond_0

    iget v3, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v3, v2, :cond_0

    .line 55
    const-string v3, "vk"

    const-string v4, "Update cover"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->access$0(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerView;->forceUpdateCover()V

    .line 63
    .end local v0    # "aid":I
    .end local v1    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v2    # "oid":I
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v3, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const-string v3, "vk"

    const-string v4, "invalidate options menu"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlayerFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
