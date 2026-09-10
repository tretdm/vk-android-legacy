.class public Lcom/vkontakte/android/fragments/FaveFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "FaveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;
    }
.end annotation


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

.field private links:Lcom/vkontakte/android/UserListView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private photos:Landroid/widget/FrameLayout;

.field private postedLoad:Ljava/lang/Runnable;

.field private posts:Lcom/vkontakte/android/NewsView;

.field private postsLoaded:Z

.field private prev:I

.field private tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private users:Lcom/vkontakte/android/UserListView;

.field private usersLoaded:Z

.field private videos:Lcom/vkontakte/android/VideoListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    .line 37
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postsLoaded:Z

    .line 39
    iput v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->prev:I

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->users:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->posts:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/FaveFragment;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postsLoaded:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/FaveFragment;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postsLoaded:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/FaveFragment;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->prev:I

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->links:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/FaveFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->photos:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/VideoListView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->videos:Lcom/vkontakte/android/VideoListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/FaveFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postedLoad:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/FaveFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/FaveFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postedLoad:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/FaveFragment;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/FaveFragment;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 12
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 49
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FaveFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v9

    .line 51
    .local v9, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v9}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 52
    invoke-virtual {v9}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 53
    const v0, 0x7f0801da

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 54
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v7, "b1":Landroid/os/Bundle;
    const-string v0, "emptyText"

    const v1, 0x7f0802d1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/FaveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v8, "b2":Landroid/os/Bundle;
    const-string v0, "emptyText"

    const v1, 0x7f0802d2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/FaveFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/vkontakte/android/UserListView;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, v7}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->users:Lcom/vkontakte/android/UserListView;

    .line 59
    new-instance v0, Lcom/vkontakte/android/VideoListView;

    const/4 v3, 0x2

    new-instance v6, Lcom/vkontakte/android/fragments/FaveFragment$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/FaveFragment$1;-><init>(Lcom/vkontakte/android/fragments/FaveFragment;)V

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/VideoListView;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/VideoListView$VideoViewCallback;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->videos:Lcom/vkontakte/android/VideoListView;

    .line 90
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->photos:Landroid/widget/FrameLayout;

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->photos:Landroid/widget/FrameLayout;

    const v1, 0x7f09011e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 92
    new-instance v0, Lcom/vkontakte/android/NewsView;

    invoke-direct {v0, p1, v11}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->posts:Lcom/vkontakte/android/NewsView;

    .line 93
    new-instance v0, Lcom/vkontakte/android/UserListView;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1, v8}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->links:Lcom/vkontakte/android/UserListView;

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->posts:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->initFave()V

    .line 95
    new-instance v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {v0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 98
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FaveFragment;Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v1, Lcom/vkontakte/android/fragments/FaveFragment$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FaveFragment$2;-><init>(Lcom/vkontakte/android/fragments/FaveFragment;)V

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->users:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 161
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v2, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method
