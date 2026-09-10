.class public Lcom/vkontakte/android/AudioPlayerActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "AudioPlayerActivity.java"


# static fields
.field public static final RESULT_SEARCH_ARTIST:I = 0x2


# instance fields
.field contentView:Lcom/vkontakte/android/AudioPlayerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addCurrentFile()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.add"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v1, "aid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 42
    const-string v1, "oid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerActivity$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 62
    return-void
.end method

.method public deleteCurrentFile()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.delete"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v1, "aid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 67
    const-string v1, "oid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerActivity$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->hideTitle()V

    .line 32
    new-instance v0, Lcom/vkontakte/android/AudioPlayerView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->contentView:Lcom/vkontakte/android/AudioPlayerView;

    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->contentView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->contentView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->register()Z

    .line 36
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->setVolumeControlStream(I)V

    .line 37
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 89
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 90
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->contentView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->unregister()V

    .line 182
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 183
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return v4

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->addCurrentFile()V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->deleteCurrentFile()V

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->finish()V

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "search_query"

    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v2, "oid"

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 136
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    iget v2, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v3, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-static {v4}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    goto :goto_0

    .line 143
    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :pswitch_4
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent()V

    goto :goto_0

    .line 146
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->showAudioLyrics()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x7f060195
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 187
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->finish()V

    .line 188
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v7, 0x7f060195

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v3

    .line 96
    :cond_1
    const v2, 0x7f06019b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 97
    const v2, 0x7f06019c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    const v2, 0x7f06019d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "enableAudioCache"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    .local v0, "enableCache":Z
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 103
    const v2, 0x7f06019a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v6, :cond_3

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 104
    const v2, 0x7f060199

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v6, :cond_4

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 105
    const v2, 0x7f060196

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-lez v2, :cond_5

    move v2, v4

    :goto_3
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 106
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 107
    .local v1, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v1, :cond_0

    .line 108
    iget v2, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v5, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v2, v5}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    move v3, v4

    .line 114
    goto/16 :goto_0

    .end local v1    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_3
    move v2, v4

    .line 103
    goto :goto_1

    :cond_4
    move v2, v3

    .line 104
    goto :goto_2

    :cond_5
    move v2, v3

    .line 105
    goto :goto_3
.end method

.method public showAudioLyrics()V
    .locals 3

    .prologue
    .line 153
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 155
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_0

    .line 156
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-gtz v1, :cond_2

    .line 157
    const v1, 0x7f090053

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 160
    :cond_2
    new-instance v1, Lcom/vkontakte/android/api/AudioGetLyrics;

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/AudioGetLyrics;-><init>(I)V

    .line 161
    new-instance v2, Lcom/vkontakte/android/AudioPlayerActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioPlayerActivity$3;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/AudioGetLyrics;->setCallback(Lcom/vkontakte/android/api/AudioGetLyrics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 176
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 177
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
