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

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerView$3;)Lcom/vkontakte/android/AudioPlayerView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$3;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerView$3;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    .local v2, "pm":Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 101
    .local v1, "menu":Landroid/view/Menu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f0b0001

    invoke-virtual {v5, v6, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 103
    const v5, 0x7f0601a9

    :try_start_0
    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 104
    const v5, 0x7f0601ae

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    const v5, 0x7f0601ad

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 106
    const v5, 0x7f0601ac

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    const v5, 0x7f0601af

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 109
    const v5, 0x7f0601b0

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    const v5, 0x7f0601b1

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    const v5, 0x7f0601ae

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v5

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v5, v7, :cond_1

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    :goto_0
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 113
    const v5, 0x7f0601ad

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v5

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v5, v7, :cond_2

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    :goto_1
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 114
    const v5, 0x7f0601aa

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    sget-object v6, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-lez v6, :cond_3

    :goto_2
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 116
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 117
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v4, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const v3, 0x7f0601a9

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_3
    new-instance v3, Lcom/vkontakte/android/AudioPlayerView$3$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerView$3$1;-><init>(Lcom/vkontakte/android/AudioPlayerView$3;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 136
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 137
    return-void

    :cond_1
    move v5, v3

    .line 112
    goto :goto_0

    :cond_2
    move v5, v4

    .line 113
    goto :goto_1

    :cond_3
    move v3, v4

    .line 114
    goto :goto_2

    .line 123
    :catch_0
    move-exception v3

    goto :goto_3
.end method
