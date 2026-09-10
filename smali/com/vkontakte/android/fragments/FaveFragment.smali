.class public Lcom/vkontakte/android/fragments/FaveFragment;
.super Lcom/vkontakte/android/fragments/ContainerFragment;
.source "FaveFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;
    }
.end annotation


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

.field private links:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

.field private linksLoaded:Z

.field private pager:Landroid/support/v4/view/ViewPager;

.field private photos:Lcom/vkontakte/android/fragments/PhotoListFragment;

.field private postedLoad:Ljava/lang/Runnable;

.field private posts:Lcom/vkontakte/android/fragments/FavePostListFragment;

.field private postsLoaded:Z

.field private prev:I

.field private tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private users:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

.field private usersLoaded:Z

.field private videos:Lcom/vkontakte/android/fragments/FaveVideoListFragment;

.field private videosLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    .line 38
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postsLoaded:Z

    .line 39
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->linksLoaded:Z

    .line 40
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->videosLoaded:Z

    .line 42
    iput v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->prev:I

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/FaveFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postedLoad:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/FaveFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postedLoad:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/FaveFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vkontakte/android/fragments/FaveFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->prev:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/PhotoListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->photos:Lcom/vkontakte/android/fragments/PhotoListFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/FaveFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->videosLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/fragments/FaveFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->videosLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/FaveVideoListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->videos:Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/FaveFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/vkontakte/android/fragments/FaveFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->users:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/FaveFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postsLoaded:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/fragments/FaveFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->postsLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/FavePostListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->posts:Lcom/vkontakte/android/fragments/FavePostListFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/FaveFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->linksLoaded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/fragments/FaveFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FaveFragment;->linksLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/FaveFragment;)Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FaveFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FaveFragment;->links:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/ContainerFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FaveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 50
    .local v0, "sa":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    const v1, 0x7f0d00d7

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x1

    .line 57
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v2, "b1":Landroid/os/Bundle;
    const-string v5, "emptyText"

    const v6, 0x7f0d01b1

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/FaveFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v3, "b2":Landroid/os/Bundle;
    const-string v5, "emptyText"

    const v6, 0x7f0d019f

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/FaveFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v5, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    invoke-direct {v5}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->users:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    .line 62
    new-instance v5, Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    invoke-direct {v5}, Lcom/vkontakte/android/fragments/FaveVideoListFragment;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->videos:Lcom/vkontakte/android/fragments/FaveVideoListFragment;

    .line 63
    new-instance v5, Lcom/vkontakte/android/fragments/FavePostListFragment;

    invoke-direct {v5}, Lcom/vkontakte/android/fragments/FavePostListFragment;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->posts:Lcom/vkontakte/android/fragments/FavePostListFragment;

    .line 64
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v4, "pargs":Landroid/os/Bundle;
    const-string v5, "no_autoload"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->posts:Lcom/vkontakte/android/fragments/FavePostListFragment;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/fragments/FavePostListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    new-instance v5, Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {v5}, Lcom/vkontakte/android/fragments/PhotoListFragment;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->photos:Lcom/vkontakte/android/fragments/PhotoListFragment;

    .line 68
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v1, "args":Landroid/os/Bundle;
    new-instance v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-direct {v0}, Lcom/vkontakte/android/api/PhotoAlbum;-><init>()V

    .line 70
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    const/16 v5, -0x2329

    iput v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    .line 71
    const v5, 0x7f0d00d7

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/FaveFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 72
    const/16 v5, 0x2328

    iput v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->numPhotos:I

    .line 73
    const-string v5, "album"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    const-string v5, "nohead"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->photos:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    new-instance v5, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    invoke-direct {v5}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->links:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    .line 77
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "args":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v5, "no_autoload"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->links:Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    new-instance v5, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FaveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 82
    new-instance v5, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FaveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 83
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    const v6, 0x7f080017

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 84
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/FaveFragment$FavePagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FaveFragment;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 86
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 87
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v6, Lcom/vkontakte/android/fragments/FaveFragment$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/FaveFragment$1;-><init>(Lcom/vkontakte/android/fragments/FaveFragment;)V

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 147
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x7f0a000f

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 148
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x7f0a0010

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 150
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->users:Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->loadData()V

    .line 151
    iput-boolean v7, p0, Lcom/vkontakte/android/fragments/FaveFragment;->usersLoaded:Z

    .line 153
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FaveFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    .line 154
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FaveFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FaveFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FaveFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v5
.end method
