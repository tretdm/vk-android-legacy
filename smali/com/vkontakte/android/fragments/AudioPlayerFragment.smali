.class public Lcom/vkontakte/android/fragments/AudioPlayerFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "AudioPlayerFragment.java"


# instance fields
.field private playerView:Lcom/vkontakte/android/AudioPlayerView;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/vkontakte/android/fragments/AudioPlayerFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment$1;-><init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)Lcom/vkontakte/android/AudioPlayerView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/AudioPlayerFragment;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->deleteFile(Lcom/vkontakte/android/AudioFile;)V

    return-void
.end method

.method private addCurrent()V
    .locals 5

    .prologue
    .line 223
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 224
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 225
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 226
    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->deleteFile(Lcom/vkontakte/android/AudioFile;)V

    .line 253
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    return-void

    .line 229
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_1
    if-eqz v0, :cond_0

    .line 230
    new-instance v1, Lcom/vkontakte/android/api/AudioAdd;

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v3, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/vkontakte/android/api/AudioAdd;-><init>(III)V

    .line 231
    new-instance v2, Lcom/vkontakte/android/fragments/AudioPlayerFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment$4;-><init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/AudioAdd;->setCallback(Lcom/vkontakte/android/api/AudioAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private confirmAndDelete()V
    .locals 4

    .prologue
    .line 256
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 258
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_0

    .line 259
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 261
    const v2, 0x7f0601bd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 262
    const v2, 0x7f060034

    new-instance v3, Lcom/vkontakte/android/fragments/AudioPlayerFragment$5;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment$5;-><init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 269
    const v2, 0x7f060035

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 273
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    return-void
.end method

.method private deleteFile(Lcom/vkontakte/android/AudioFile;)V
    .locals 3
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 276
    new-instance v0, Lcom/vkontakte/android/api/AudioDelete;

    iget v1, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/AudioDelete;-><init>(II)V

    .line 277
    new-instance v1, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment$6;-><init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioDelete;->setCallback(Lcom/vkontakte/android/api/AudioDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 299
    return-void
.end method

.method private searchArtist()V
    .locals 4

    .prologue
    .line 302
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 303
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 304
    .local v1, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v1, :cond_0

    .line 305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "search"

    iget-object v3, v1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 307
    const-string v2, "AudioListFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 310
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    return-void
.end method

.method private toggleCachedState()V
    .locals 3

    .prologue
    .line 209
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 210
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 211
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_0

    .line 212
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent()V

    .line 217
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 220
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    return-void

    .line 215
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const v0, 0x7f0601c4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 74
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->init()V

    .line 153
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->displayInfo(Lcom/vkontakte/android/AudioFile;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    new-instance v1, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment$2;-><init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 168
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->setHasOptionsMenu(Z)V

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 91
    const-string v0, "vk"

    const-string v1, "on create options menu"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/high16 v0, 0x7f0e0000

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    new-instance v0, Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    new-instance v1, Lcom/vkontakte/android/fragments/AudioPlayerFragment$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment$3;-><init>(Lcom/vkontakte/android/fragments/AudioPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->register()Z

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 182
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->unregister()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    .line 206
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    .line 119
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 146
    :goto_0
    return v5

    .line 121
    :pswitch_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->toggleCachedState()V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerView;->showLyrics()V

    goto :goto_0

    .line 127
    :pswitch_2
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->addCurrent()V

    goto :goto_0

    .line 130
    :pswitch_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->confirmAndDelete()V

    goto :goto_0

    .line 133
    :pswitch_4
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->searchArtist()V

    goto :goto_0

    .line 136
    :pswitch_5
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 137
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 138
    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkontakte/android/AudioAttachment;

    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v2, -0x1

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 140
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/RepostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    const-string v2, "msg"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x7f08017d
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 86
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 88
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const v9, 0x7f080180

    const v8, 0x7f08017f

    const/4 v3, 0x0

    const v7, 0x7f08017d

    const/4 v2, 0x1

    .line 96
    const-string v1, "vk"

    const-string v4, "on prepare options menu"

    invoke-static {v1, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_1

    .line 98
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 99
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_1

    .line 100
    const-string v1, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IS CACHED = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v6, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const v1, 0x7f08017e

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v5, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v1, v5}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0200f3

    :goto_0
    invoke-interface {v4, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 102
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v4, :cond_4

    .line 103
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 104
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-eqz v1, :cond_0

    .line 105
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    const v4, 0x7f0200f0

    invoke-interface {v1, v4}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 106
    :cond_0
    invoke-interface {p1, v9}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 112
    :goto_2
    invoke-interface {p1, v8}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->playerView:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerView;->haveLyrics()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 113
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lyrics enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v8}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/actionbarsherlock/view/MenuItem;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_1
    return-void

    .line 101
    .restart local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_2
    const v1, 0x7f0200f4

    goto :goto_0

    :cond_3
    move v1, v3

    .line 103
    goto :goto_1

    .line 108
    :cond_4
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 109
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    const v4, 0x7f0200e2

    invoke-interface {v1, v4}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 110
    invoke-interface {p1, v9}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_2

    :cond_5
    move v2, v3

    .line 112
    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 78
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 82
    return-void
.end method
