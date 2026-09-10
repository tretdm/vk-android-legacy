.class Lcom/vkontakte/android/AudioPlayerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerActivity;
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$1;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    .line 75
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

    .line 78
    const-string v3, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const-string v3, "oid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, "oid":I
    const-string v3, "aid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "aid":I
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v3, :cond_0

    .line 83
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 84
    .local v1, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v3, v0, :cond_0

    iget v3, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v3, v2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$1;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->forceUpdateCover()V

    .line 89
    .end local v1    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$1;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->updatePager()V

    .line 95
    .end local v0    # "aid":I
    .end local v2    # "oid":I
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    const-string v3, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$1;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    .line 93
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$1;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->updatePager()V

    goto :goto_0
.end method
