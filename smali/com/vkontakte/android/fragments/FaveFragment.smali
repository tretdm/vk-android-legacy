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

    .line 38
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    .line 32
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postsLoaded:Z

    .line 34
    iput v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->prev:I

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->users:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->posts:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/UserListView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->links:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/FaveFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->photos:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/VideoListView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->videos:Lcom/vkontakte/android/VideoListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/FaveFragment;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/FaveFragment;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/FaveFragment;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postsLoaded:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/FaveFragment;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postsLoaded:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/FaveFragment;I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->prev:I

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 9
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FaveFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    .line 45
    .local v6, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 46
    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 47
    const v0, 0x7f0601c1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 49
    new-instance v0, Lcom/vkontakte/android/UserListView;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, v4}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->users:Lcom/vkontakte/android/UserListView;

    .line 50
    new-instance v0, Lcom/vkontakte/android/VideoListView;

    const/4 v3, 0x2

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/VideoListView;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->videos:Lcom/vkontakte/android/VideoListView;

    .line 51
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->photos:Landroid/widget/FrameLayout;

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->photos:Landroid/widget/FrameLayout;

    const v1, 0x7f0800f6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 53
    new-instance v0, Lcom/vkontakte/android/NewsView;

    invoke-direct {v0, p1, v8}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->posts:Lcom/vkontakte/android/NewsView;

    .line 54
    new-instance v0, Lcom/vkontakte/android/UserListView;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1, v4}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->links:Lcom/vkontakte/android/UserListView;

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->posts:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->initFave()V

    .line 56
    new-instance v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {v0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 59
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FaveFragment;Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v1, Lcom/vkontakte/android/fragments/FaveFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FaveFragment$1;-><init>(Lcom/vkontakte/android/fragments/FaveFragment;)V

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->users:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 113
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method
