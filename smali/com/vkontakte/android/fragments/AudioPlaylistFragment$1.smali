.class Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/AudioPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v11, -0x1

    .line 57
    const-string v9, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 58
    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$0(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Landroid/widget/ListView;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 59
    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v9}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v3

    .line 60
    .local v3, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v3, :cond_0

    .line 61
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$1(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/AudioFile;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 62
    iget-object v7, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$2(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 93
    .end local v3    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v3    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_1
    const/4 v1, -0x1

    .local v1, "animOut":I
    const/4 v0, -0x1

    .line 65
    .local v0, "animIn":I
    const/4 v5, 0x0

    .line 66
    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$2(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->getCount()I

    move-result v9

    if-lt v6, v9, :cond_2

    .line 74
    :goto_2
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    :goto_3
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$2(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->getCount()I

    move-result v9

    if-lt v6, v9, :cond_4

    .line 83
    :goto_4
    if-eq v0, v11, :cond_6

    if-eq v1, v11, :cond_6

    if-lt v1, v0, :cond_6

    move v4, v7

    .line 84
    .local v4, "fwd":Z
    :goto_5
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v9, v3}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$3(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Lcom/vkontakte/android/AudioFile;)V

    .line 85
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v9, v0, v8}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$4(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;IZ)V

    .line 86
    iget-object v8, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v8, v1, v7}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$4(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;IZ)V

    goto :goto_0

    .line 67
    .end local v4    # "fwd":Z
    :cond_2
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$2(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/AudioFile;

    .line 68
    .local v2, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$1(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/AudioFile;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 69
    move v1, v5

    .line 70
    goto :goto_2

    .line 72
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 66
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 76
    .end local v2    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_4
    iget-object v9, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$2(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$AudioListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/AudioFile;

    .line 77
    .restart local v2    # "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 78
    move v0, v5

    .line 79
    goto :goto_4

    .line 81
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v2    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_6
    move v4, v8

    .line 83
    goto :goto_5

    .line 90
    .end local v0    # "animIn":I
    .end local v1    # "animOut":I
    .end local v3    # "file":Lcom/vkontakte/android/AudioFile;
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_7
    const-string v7, "com.vkontakte.android.AUDIO_FILE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "com.vkontakte.android.AUDIO_FILE_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 91
    :cond_8
    iget-object v7, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$1;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$5(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)V

    goto/16 :goto_0
.end method
