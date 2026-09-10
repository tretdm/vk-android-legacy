.class public Lcom/vkontakte/android/fragments/LikesListFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "LikesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;
    }
.end annotation


# instance fields
.field private friendsLoaded:Z

.field private friendsView:Lcom/vkontakte/android/UserListView;

.field private likesView:Lcom/vkontakte/android/UserListView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private repostsLoaded:Z

.field private repostsView:Lcom/vkontakte/android/UserListView;

.field private tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsLoaded:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsLoaded:Z

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/UserListView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->likesView:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/UserListView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsView:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/UserListView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsView:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/LikesListFragment;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsLoaded:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/LikesListFragment;Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsLoaded:Z

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/LikesListFragment;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsLoaded:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/LikesListFragment;Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsLoaded:Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 10
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 32
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    .line 33
    .local v3, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 34
    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 35
    const-string v4, ""

    .line 36
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 38
    .local v1, "likesArgs":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 39
    .local v0, "friendsArgs":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 40
    .local v2, "repostsArgs":Landroid/os/Bundle;
    const-string v5, "friends_only"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v5, "filter"

    const-string v6, "copies"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v5, Lcom/vkontakte/android/UserListView;

    invoke-direct {v5, p1, v7, v1}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->likesView:Lcom/vkontakte/android/UserListView;

    .line 43
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->likesView:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v5}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 44
    new-instance v5, Lcom/vkontakte/android/UserListView;

    invoke-direct {v5, p1, v7, v0}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsView:Lcom/vkontakte/android/UserListView;

    .line 45
    new-instance v5, Lcom/vkontakte/android/UserListView;

    invoke-direct {v5, p1, v7, v2}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsView:Lcom/vkontakte/android/UserListView;

    .line 46
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    .line 47
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    new-instance v5, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 49
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/LikesListFragment;Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 51
    new-instance v5, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {v5, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 52
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x7f060015

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 53
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x7f060014

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 54
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 56
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v6, Lcom/vkontakte/android/fragments/LikesListFragment$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/LikesListFragment$1;-><init>(Lcom/vkontakte/android/fragments/LikesListFragment;)V

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 82
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 99
    return-void
.end method
