.class public Lcom/vkontakte/android/PhotoViewerActivity;
.super Landroid/app/Activity;
.source "PhotoViewerActivity.java"


# instance fields
.field private contentView:Landroid/widget/FrameLayout;

.field private fragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PhotoViewerActivity;

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Landroid/app/Fragment;

    check-cast v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->animateOut(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public forceFinish()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 73
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Landroid/app/Fragment;

    check-cast v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onPrepareDismiss()V

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f080014

    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 21
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->requestWindowFeature(I)Z

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v6, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setFormat(I)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->isTaskRoot()Z

    move-result v4

    if-nez v4, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 30
    :cond_1
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->contentView:Landroid/widget/FrameLayout;

    .line 31
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 32
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "class"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "fn":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.vkontakte.android.fragments."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    iput-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Landroid/app/Fragment;

    .line 40
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "args"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f080014

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Landroid/app/Fragment;

    const-string v7, "news"

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v3

    .line 43
    .local v3, "x":Ljava/lang/Exception;
    const v4, 0x7f0d00d0

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->onBackPressed()V

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
