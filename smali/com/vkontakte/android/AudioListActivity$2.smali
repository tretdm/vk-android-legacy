.class Lcom/vkontakte/android/AudioListActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$2;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 96
    const-string v0, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$2;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 98
    const-string v0, "reload_cached_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$2;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget v0, v0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistID:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$2;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity$2;->this$0:Lcom/vkontakte/android/AudioListActivity;

    iget v1, v1, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistID:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity$2;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v2}, Lcom/vkontakte/android/AudioListActivity;->access$2(Lcom/vkontakte/android/AudioListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/vkontakte/android/AudioListActivity;->loadList(ILjava/lang/String;IZ)V

    .line 101
    :cond_0
    return-void
.end method
