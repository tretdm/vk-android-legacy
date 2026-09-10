.class public Lcom/vkontakte/android/fragments/UserListFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "UserListFragment.java"


# instance fields
.field private view:Lcom/vkontakte/android/UserListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 21
    new-instance v2, Lcom/vkontakte/android/UserListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/UserListFragment;->view:Lcom/vkontakte/android/UserListView;

    .line 22
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/UserListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    .line 23
    .local v0, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 24
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 25
    const-string v1, ""

    .line 26
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/UserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v2, p0, Lcom/vkontakte/android/fragments/UserListFragment;->view:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 28
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/fragments/UserListFragment;->view:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/fragments/UserListFragment;->view:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->onPause()V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/UserListFragment;->view:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->onResume()V

    .line 43
    return-void
.end method
