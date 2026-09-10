.class public Lcom/vkontakte/android/VideoListActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "VideoListActivity.java"


# instance fields
.field view:Lcom/vkontakte/android/VideoListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 38
    const/16 v0, 0x2bc

    if-ne p1, v0, :cond_0

    .line 39
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListActivity;->view:Lcom/vkontakte/android/VideoListView;

    const-string v1, "oid"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "pid"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/VideoListView;->removeItem(II)V

    .line 41
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 15
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance v2, Lcom/vkontakte/android/VideoListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "uid"

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/vkontakte/android/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/vkontakte/android/VideoListActivity;->view:Lcom/vkontakte/android/VideoListView;

    .line 17
    iget-object v2, p0, Lcom/vkontakte/android/VideoListActivity;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/VideoListActivity;->setContentView(Landroid/view/View;)V

    .line 18
    iget-object v2, p0, Lcom/vkontakte/android/VideoListActivity;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "select"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    .line 20
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 21
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    .local v1, "playlistBtn":Landroid/widget/ImageView;
    const v2, 0x7f0200c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 25
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v6, v6, v2, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v2, Lcom/vkontakte/android/VideoListActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/VideoListActivity$1;-><init>(Lcom/vkontakte/android/VideoListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/VideoListActivity;->addViewAtRight(Landroid/view/View;)V

    .line 35
    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "playlistBtn":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
