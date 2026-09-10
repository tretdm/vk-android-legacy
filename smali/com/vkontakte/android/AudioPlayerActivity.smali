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
    .line 35
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addCurrentFile()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.add"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v1, "aid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 55
    const-string v1, "oid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerActivity$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 75
    return-void
.end method

.method public deleteCurrentFile()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.delete"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 79
    const-string v1, "aid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 80
    const-string v1, "oid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerActivity$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->hideTitle()V

    .line 46
    new-instance v0, Lcom/vkontakte/android/AudioPlayerView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->contentView:Lcom/vkontakte/android/AudioPlayerView;

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->contentView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->contentView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->register()Z

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 102
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 103
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->contentView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->unregister()V

    .line 192
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 193
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    return v4

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->addCurrentFile()V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->deleteCurrentFile()V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->finish()V

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "search_query"

    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "oid"

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 146
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    iget v2, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v3, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    invoke-static {v4}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    goto :goto_0

    .line 153
    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :pswitch_4
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent()V

    goto :goto_0

    .line 156
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->showAudioLyrics()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x7f0601a9
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
    .line 196
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 197
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->finish()V

    .line 198
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 109
    :cond_1
    const v1, 0x7f0601af

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    const v1, 0x7f0601b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 111
    const v1, 0x7f0601b1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    const v1, 0x7f0601ae

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v1, v5, :cond_3

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 114
    const v1, 0x7f0601ad

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v1, v5, :cond_4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 115
    const v1, 0x7f0601aa

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-lez v1, :cond_5

    move v1, v3

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 116
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 117
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_0

    .line 118
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v4, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v1, v4}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    const v1, 0x7f0601a9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    move v2, v3

    .line 124
    goto/16 :goto_0

    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_3
    move v1, v3

    .line 113
    goto :goto_1

    :cond_4
    move v1, v2

    .line 114
    goto :goto_2

    :cond_5
    move v1, v2

    .line 115
    goto :goto_3
.end method

.method public showAudioLyrics()V
    .locals 3

    .prologue
    .line 163
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 165
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_0

    .line 166
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-gtz v1, :cond_2

    .line 167
    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    :cond_2
    new-instance v1, Lcom/vkontakte/android/api/AudioGetLyrics;

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/AudioGetLyrics;-><init>(I)V

    .line 171
    new-instance v2, Lcom/vkontakte/android/AudioPlayerActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioPlayerActivity$3;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/AudioGetLyrics;->setCallback(Lcom/vkontakte/android/api/AudioGetLyrics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 186
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 187
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
