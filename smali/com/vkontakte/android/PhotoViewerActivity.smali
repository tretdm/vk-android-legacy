.class public Lcom/vkontakte/android/PhotoViewerActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "PhotoViewerActivity.java"


# instance fields
.field private contentView:Landroid/widget/FrameLayout;

.field private fragment:Lcom/actionbarsherlock/app/SherlockFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    check-cast v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->animateOut(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public forceFinish()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->finish()V

    .line 75
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    check-cast v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->onPrepareDismiss()V

    .line 54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f09001b

    const/4 v6, 0x1

    .line 23
    const-wide/16 v4, 0x9

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->requestWindowFeature(J)V

    .line 24
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setFormat(I)V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->isTaskRoot()Z

    move-result v4

    if-nez v4, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    :cond_1
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->contentView:Landroid/widget/FrameLayout;

    .line 33
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 34
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoViewerActivity;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "class"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "fn":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "com.vkontakte.android.fragments."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 41
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/app/SherlockFragment;

    iput-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 42
    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "args"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/SherlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f09001b

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    const-string v7, "news"

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v3

    .line 45
    .local v3, "x":Ljava/lang/Exception;
    const v4, 0x7f080068

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 46
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 66
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoViewerActivity;->onBackPressed()V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
