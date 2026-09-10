.class public Lcom/vkontakte/android/fragments/FeedbackFragment;
.super Lcom/vkontakte/android/fragments/ContainerFragment;
.source "FeedbackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;
    }
.end annotation


# instance fields
.field private commentsLoaded:Z

.field private commentsView:Lcom/vkontakte/android/fragments/CommentsPostListFragment;

.field private contentView:Landroid/widget/LinearLayout;

.field private notifyFragment:Lcom/vkontakte/android/fragments/NotificationsFragment;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private showFilter:Z

.field private tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsLoaded:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->showFilter:Z

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/FeedbackFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FeedbackFragment;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/FeedbackFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FeedbackFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/fragments/CommentsPostListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FeedbackFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsView:Lcom/vkontakte/android/fragments/CommentsPostListFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/fragments/FeedbackFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FeedbackFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->showFilter:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/fragments/NotificationsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FeedbackFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->notifyFragment:Lcom/vkontakte/android/fragments/NotificationsFragment;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 8
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 46
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/ContainerFragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 48
    .local v2, "sa":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 49
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 50
    const v3, 0x7f0d00d9

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 52
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 53
    .local v1, "nm":Landroid/app/NotificationManager;
    const/16 v3, 0x1f6

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 55
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    .line 57
    new-instance v3, Lcom/vkontakte/android/fragments/CommentsPostListFragment;

    invoke-direct {v3}, Lcom/vkontakte/android/fragments/CommentsPostListFragment;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsView:Lcom/vkontakte/android/fragments/CommentsPostListFragment;

    .line 66
    new-instance v3, Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-direct {v3}, Lcom/vkontakte/android/fragments/NotificationsFragment;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->notifyFragment:Lcom/vkontakte/android/fragments/NotificationsFragment;

    .line 67
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->notifyFragment:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/NotificationsFragment;->loadData()V

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "cargs":Landroid/os/Bundle;
    const-string v3, "no_autoload"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsView:Lcom/vkontakte/android/fragments/CommentsPostListFragment;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/fragments/CommentsPostListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    sget v3, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    if-lez v3, :cond_0

    .line 90
    :cond_0
    new-instance v3, Landroid/support/v4/view/ViewPager;

    invoke-direct {v3, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 91
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->pager:Landroid/support/v4/view/ViewPager;

    const v4, 0x7f080017

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 92
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FeedbackFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 94
    new-instance v3, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {v3, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 95
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 96
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v4, Lcom/vkontakte/android/fragments/FeedbackFragment$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/FeedbackFragment$1;-><init>(Lcom/vkontakte/android/fragments/FeedbackFragment;)V

    invoke-virtual {v3, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 121
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v4, 0x7f0a000f

    invoke-virtual {v3, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 122
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 124
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onPause()V

    .line 169
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onResume()V

    .line 173
    return-void
.end method
