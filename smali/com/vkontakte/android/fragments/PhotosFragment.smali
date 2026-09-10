.class public Lcom/vkontakte/android/fragments/PhotosFragment;
.super Lcom/vkontakte/android/fragments/ContainerFragment;
.source "PhotosFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/PhotosFragment$PhotosPagerAdapter;
    }
.end annotation


# instance fields
.field private newsFragment:Lcom/vkontakte/android/fragments/PhotoNewsFragment;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pagerWrap:Landroid/widget/LinearLayout;

.field private photosFragment:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

.field private showCreate:Z

.field private tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->showCreate:Z

    .line 30
    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/PhotosFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotosFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->showCreate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/PhotosFragment;)Lcom/vkontakte/android/fragments/PhotoNewsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotosFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->newsFragment:Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/PhotosFragment;)Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotosFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->photosFragment:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 33
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/ContainerFragment;->onAttach(Landroid/app/Activity;)V

    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uid"

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->uid:I

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "albums"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 39
    .local v1, "sa":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotosFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    :goto_0
    new-instance v2, Landroid/support/v4/view/ViewPager;

    invoke-direct {v2, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 46
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/vkontakte/android/fragments/PhotosFragment$PhotosPagerAdapter;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotosFragment$PhotosPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotosFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 47
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pager:Landroid/support/v4/view/ViewPager;

    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 48
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/PhotoNewsFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->newsFragment:Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    .line 49
    new-instance v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 50
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 51
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 52
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 53
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v3, Lcom/vkontakte/android/fragments/PhotosFragment$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/PhotosFragment$1;-><init>(Lcom/vkontakte/android/fragments/PhotosFragment;)V

    invoke-virtual {v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 72
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pagerWrap:Landroid/widget/LinearLayout;

    .line 73
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pagerWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pagerWrap:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->tabStrip:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 75
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pagerWrap:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->showCreate:Z

    .line 78
    new-instance v2, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->photosFragment:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "uid"

    iget v3, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v2, "need_system"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->photosFragment:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-void

    .line 43
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    const v2, 0x7f0d0022

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/PhotosFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotosFragment;->pagerWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 88
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onDetach()V

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onResume()V

    .line 110
    return-void
.end method
