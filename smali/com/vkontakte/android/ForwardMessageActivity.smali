.class public Lcom/vkontakte/android/ForwardMessageActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ForwardMessageActivity.java"


# instance fields
.field private dialogs:Lcom/vkontakte/android/fragments/DialogsFragment;

.field private dialogsWrap:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f080012

    const/4 v1, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/ForwardMessageActivity;->dialogsWrap:Landroid/widget/FrameLayout;

    .line 32
    iget-object v2, p0, Lcom/vkontakte/android/ForwardMessageActivity;->dialogsWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 33
    iget-object v2, p0, Lcom/vkontakte/android/ForwardMessageActivity;->dialogsWrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ForwardMessageActivity;->setContentView(Landroid/view/View;)V

    .line 35
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/vkontakte/android/ForwardMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const v2, 0x7f060210

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ForwardMessageActivity;->setTitle(I)V

    .line 39
    :cond_0
    new-instance v2, Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/ForwardMessageActivity;->dialogs:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    iget-object v2, p0, Lcom/vkontakte/android/ForwardMessageActivity;->dialogs:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    iget-object v2, p0, Lcom/vkontakte/android/ForwardMessageActivity;->dialogs:Lcom/vkontakte/android/fragments/DialogsFragment;

    new-instance v3, Lcom/vkontakte/android/ForwardMessageActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ForwardMessageActivity$1;-><init>(Lcom/vkontakte/android/ForwardMessageActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/DialogsFragment;->setListener(Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/vkontakte/android/ForwardMessageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ForwardMessageActivity;->dialogs:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/ForwardMessageActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ForwardMessageActivity;->isTaskRoot()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 64
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/vkontakte/android/ForwardMessageActivity;->onBackPressed()V

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
