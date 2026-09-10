.class public Lcom/vkontakte/android/NewsfeedSearchActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "NewsfeedSearchActivity.java"


# instance fields
.field private searchView:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 21
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "q"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "q":Ljava/lang/String;
    new-instance v4, Lcom/vkontakte/android/NewsView;

    invoke-direct {v4, p0, v8}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    .line 28
    .local v4, "view":Lcom/vkontakte/android/NewsView;
    invoke-virtual {v4}, Lcom/vkontakte/android/NewsView;->initWithSearch()V

    .line 29
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 30
    invoke-virtual {v4, v0}, Lcom/vkontakte/android/NewsView;->setSearchQuery(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4, v8}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 32
    new-instance v5, Lcom/vkontakte/android/NewsfeedSearchActivity$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewsfeedSearchActivity$1;-><init>(Lcom/vkontakte/android/NewsfeedSearchActivity;)V

    .line 40
    const-wide/16 v6, 0xc8

    .line 32
    invoke-virtual {v4, v5, v6, v7}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    :cond_0
    invoke-virtual {v4, v8}, Lcom/vkontakte/android/NewsView;->setFocusable(Z)V

    .line 43
    invoke-virtual {v4, v8}, Lcom/vkontakte/android/NewsView;->setFocusableInTouchMode(Z)V

    .line 44
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsfeedSearchActivity;->setContentView(Landroid/view/View;)V

    .line 46
    new-instance v5, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/NewsfeedSearchActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 47
    iget-object v5, p0, Lcom/vkontakte/android/NewsfeedSearchActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 49
    :try_start_0
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v6, "mSearchButton"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 50
    .local v2, "searchField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    iget-object v5, p0, Lcom/vkontakte/android/NewsfeedSearchActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 52
    .local v1, "searchBtn":Landroid/widget/ImageView;
    const v5, 0x7f0200fb

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v6, "mSearchPlate"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 54
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    iget-object v5, p0, Lcom/vkontakte/android/NewsfeedSearchActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 56
    .local v3, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, -0x7f000001

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "searchBtn":Landroid/widget/ImageView;
    .end local v2    # "searchField":Ljava/lang/reflect/Field;
    .end local v3    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/NewsfeedSearchActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/NewsfeedSearchActivity$2;

    invoke-direct {v6, p0, v4}, Lcom/vkontakte/android/NewsfeedSearchActivity$2;-><init>(Lcom/vkontakte/android/NewsfeedSearchActivity;Lcom/vkontakte/android/NewsView;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 74
    iget-object v5, p0, Lcom/vkontakte/android/NewsfeedSearchActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v5, v9}, Lcom/actionbarsherlock/widget/SearchView;->setIconified(Z)V

    .line 75
    iget-object v5, p0, Lcom/vkontakte/android/NewsfeedSearchActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v5, v0, v9}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 80
    return-void

    .line 57
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 83
    const v1, 0x7f080060

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 84
    .local v0, "search":Lcom/actionbarsherlock/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 85
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 86
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 90
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedSearchActivity;->onBackPressed()V

    .line 93
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    .line 98
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    .line 103
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 104
    return-void
.end method
