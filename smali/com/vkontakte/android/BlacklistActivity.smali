.class public Lcom/vkontakte/android/BlacklistActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "BlacklistActivity.java"


# instance fields
.field private view:Lcom/vkontakte/android/EditableUserListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/BlacklistActivity;Lcom/vkontakte/android/UserProfile;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/vkontakte/android/BlacklistActivity;->unban(Lcom/vkontakte/android/UserProfile;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/BlacklistActivity;)Lcom/vkontakte/android/EditableUserListView;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vkontakte/android/BlacklistActivity;->view:Lcom/vkontakte/android/EditableUserListView;

    return-object v0
.end method

.method private unban(Lcom/vkontakte/android/UserProfile;)V
    .locals 3
    .param p1, "user"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 48
    new-instance v0, Lcom/vkontakte/android/api/AccountBanUser;

    iget v1, p1, Lcom/vkontakte/android/UserProfile;->uid:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/AccountBanUser;-><init>(IZ)V

    .line 49
    new-instance v1, Lcom/vkontakte/android/BlacklistActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/BlacklistActivity$2;-><init>(Lcom/vkontakte/android/BlacklistActivity;Lcom/vkontakte/android/UserProfile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountBanUser;->setCallback(Lcom/vkontakte/android/api/AccountBanUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 63
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance v0, Lcom/vkontakte/android/EditableUserListView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/EditableUserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vkontakte/android/BlacklistActivity;->view:Lcom/vkontakte/android/EditableUserListView;

    .line 17
    iget-object v0, p0, Lcom/vkontakte/android/BlacklistActivity;->view:Lcom/vkontakte/android/EditableUserListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BlacklistActivity;->setContentView(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/vkontakte/android/BlacklistActivity;->view:Lcom/vkontakte/android/EditableUserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/EditableUserListView;->loadData()V

    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/BlacklistActivity;->view:Lcom/vkontakte/android/EditableUserListView;

    new-instance v1, Lcom/vkontakte/android/BlacklistActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/BlacklistActivity$1;-><init>(Lcom/vkontakte/android/BlacklistActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/EditableUserListView;->setOnUserRemovedListener(Lcom/vkontakte/android/EditableUserListView$OnUserRemovedListener;)V

    .line 26
    invoke-virtual {p0}, Lcom/vkontakte/android/BlacklistActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 30
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/vkontakte/android/BlacklistActivity;->onBackPressed()V

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    .line 39
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 40
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    .line 44
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 45
    return-void
.end method
