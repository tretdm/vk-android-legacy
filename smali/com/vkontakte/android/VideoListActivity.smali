.class public Lcom/vkontakte/android/VideoListActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "VideoListActivity.java"


# instance fields
.field view:Lcom/vkontakte/android/VideoListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 28
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Lcom/vkontakte/android/VideoListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uid"

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "type"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/VideoListView;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListActivity;->view:Lcom/vkontakte/android/VideoListView;

    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/VideoListActivity;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoListActivity;->setContentView(Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/VideoListActivity;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "select"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    .line 22
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    .line 32
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListActivity;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->invalidateList()V

    .line 33
    :cond_0
    return-void
.end method
