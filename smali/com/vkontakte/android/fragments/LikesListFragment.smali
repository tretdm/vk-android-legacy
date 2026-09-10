.class public Lcom/vkontakte/android/fragments/LikesListFragment;
.super Lcom/vkontakte/android/fragments/ContainerFragment;
.source "LikesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;
    }
.end annotation


# instance fields
.field private friendsLoaded:Z

.field private friendsView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

.field private likesView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private repostsLoaded:Z

.field private repostsView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

.field private tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsLoaded:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsLoaded:Z

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/LikesListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/LikesListFragment;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/LikesListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/LikesListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/LikesListFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/LikesListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/LikesListFragment;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/fragments/LikesListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/LikesListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/LikesListFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/LikesListFragment;)Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/LikesListFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->likesView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 10
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/ContainerFragment;->onAttach(Landroid/app/Activity;)V

    .line 31
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 32
    .local v3, "sa":Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 33
    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 34
    const-string v4, ""

    .line 35
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

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 37
    .local v1, "likesArgs":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 38
    .local v0, "friendsArgs":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 39
    .local v2, "repostsArgs":Landroid/os/Bundle;
    const-string v5, "friends_only"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    const-string v5, "no_autoload"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v5, "filter"

    const-string v6, "copies"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v5, "no_autoload"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    new-instance v5, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    invoke-direct {v5}, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->likesView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    .line 44
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->likesView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    new-instance v5, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    invoke-direct {v5}, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    .line 46
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->friendsView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    new-instance v5, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    invoke-direct {v5}, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    .line 48
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->repostsView:Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;

    invoke-virtual {v5, v2}, Lcom/vkontakte/android/fragments/userlist/LikesUserListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    .line 51
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    new-instance v5, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/LikesListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 53
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->pager:Landroid/support/v4/view/ViewPager;

    const v6, 0x7f080017

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 54
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/LikesListFragment$LikesPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/LikesListFragment;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 56
    new-instance v5, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {v5, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 57
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x7f0a000f

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 58
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x7f0a0010

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 59
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 61
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v6, Lcom/vkontakte/android/fragments/LikesListFragment$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/LikesListFragment$1;-><init>(Lcom/vkontakte/android/fragments/LikesListFragment;)V

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 87
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v5, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/LikesListFragment;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onPause()V

    .line 99
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onResume()V

    .line 104
    return-void
.end method
