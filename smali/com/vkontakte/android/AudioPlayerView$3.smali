.class Lcom/vkontakte/android/AudioPlayerView$3;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$3;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerView$3;)Lcom/vkontakte/android/AudioPlayerView;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$3;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 105
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerView$3;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    .local v3, "pm":Landroid/widget/PopupMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 108
    .local v2, "menu":Landroid/view/Menu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v7, 0x7f0b0001

    invoke-virtual {v6, v7, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerView$3;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "enableAudioCache"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 111
    .local v0, "enableCache":Z
    const v6, 0x7f060195

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    const v6, 0x7f06019a

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    const v6, 0x7f060199

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    const v6, 0x7f060198

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    const v6, 0x7f06019b

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 117
    const v6, 0x7f06019c

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    const v6, 0x7f06019d

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    const v6, 0x7f06019a

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    sget-object v6, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v6

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v8, :cond_1

    sget-object v6, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    :goto_0
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 121
    const v6, 0x7f060199

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    sget-object v6, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v6

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v8, :cond_2

    sget-object v6, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    :goto_1
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 122
    const v6, 0x7f060196

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-lez v7, :cond_3

    :goto_2
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 124
    const v4, 0x7f060195

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 126
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 127
    .local v1, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v5, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v4, v5}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const v4, 0x7f060195

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "enableCache":Z
    .end local v1    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_3
    new-instance v4, Lcom/vkontakte/android/AudioPlayerView$3$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/AudioPlayerView$3$1;-><init>(Lcom/vkontakte/android/AudioPlayerView$3;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 146
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 147
    return-void

    .restart local v0    # "enableCache":Z
    :cond_1
    move v6, v4

    .line 120
    goto :goto_0

    :cond_2
    move v6, v5

    .line 121
    goto :goto_1

    :cond_3
    move v4, v5

    .line 122
    goto :goto_2

    .line 133
    .end local v0    # "enableCache":Z
    :catch_0
    move-exception v4

    goto :goto_3
.end method
