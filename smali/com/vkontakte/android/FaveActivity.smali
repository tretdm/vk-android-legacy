.class public Lcom/vkontakte/android/FaveActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "FaveActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;
    }
.end annotation


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

.field private links:Lcom/vkontakte/android/UserListView;

.field private pager:Lcom/vkontakte/android/ui/ViewPager;

.field private pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

.field private photos:Lcom/vkontakte/android/PhotoListView;

.field private posts:Lcom/vkontakte/android/NewsView;

.field private postsLoaded:Z

.field private prevPage:I

.field private users:Lcom/vkontakte/android/UserListView;

.field private usersLoaded:Z

.field private videos:Lcom/vkontakte/android/VideoListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/vkontakte/android/FaveActivity;->usersLoaded:Z

    .line 26
    iput-boolean v0, p0, Lcom/vkontakte/android/FaveActivity;->postsLoaded:Z

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/FaveActivity;->prevPage:I

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/VideoListView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->videos:Lcom/vkontakte/android/VideoListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/PhotoListView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->photos:Lcom/vkontakte/android/PhotoListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/UserListView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->users:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->posts:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/UserListView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->links:Lcom/vkontakte/android/UserListView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/vkontakte/android/FaveActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FaveActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onBackPressed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/FaveActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/FaveActivity;->contentView:Landroid/widget/LinearLayout;

    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    new-instance v0, Lcom/vkontakte/android/UserListView;

    sget v1, Lcom/vkontakte/android/UserListView;->TYPE_FAVE:I

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vkontakte/android/FaveActivity;->users:Lcom/vkontakte/android/UserListView;

    .line 36
    new-instance v0, Lcom/vkontakte/android/VideoListView;

    invoke-direct {v0, p0, v3, v4}, Lcom/vkontakte/android/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/vkontakte/android/FaveActivity;->videos:Lcom/vkontakte/android/VideoListView;

    .line 37
    new-instance v0, Lcom/vkontakte/android/PhotoListView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/FaveActivity;->photos:Lcom/vkontakte/android/PhotoListView;

    .line 38
    new-instance v0, Lcom/vkontakte/android/NewsView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/FaveActivity;->posts:Lcom/vkontakte/android/NewsView;

    .line 39
    new-instance v0, Lcom/vkontakte/android/UserListView;

    sget v1, Lcom/vkontakte/android/UserListView;->TYPE_FAVE_LINKS:I

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/UserListView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vkontakte/android/FaveActivity;->links:Lcom/vkontakte/android/UserListView;

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->posts:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->initFave()V

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->photos:Lcom/vkontakte/android/PhotoListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/vkontakte/android/PhotoListView;->setType(II)V

    .line 43
    new-instance v0, Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    new-instance v1, Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;-><init>(Lcom/vkontakte/android/FaveActivity;Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setAdapter(Lcom/vkontakte/android/ui/PagerAdapter;)V

    .line 45
    new-instance v0, Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;-><init>(Landroid/content/Context;Lcom/vkontakte/android/ui/ViewPager;)V

    iput-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {p0}, Lcom/vkontakte/android/FaveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/FaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {p0}, Lcom/vkontakte/android/FaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {p0}, Lcom/vkontakte/android/FaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1, v5, v3}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FaveActivity;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcom/vkontakte/android/FaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/vkontakte/android/FaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FaveActivity;->onPageSelected(I)V

    .line 67
    :goto_1
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0, v4, v3}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->pagerIndicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v0, v4, v5, v3}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->users:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 65
    iput-boolean v6, p0, Lcom/vkontakte/android/FaveActivity;->usersLoaded:Z

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 179
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 132
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 136
    if-nez p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->videos:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->videos:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 141
    :cond_0
    if-ne p1, v3, :cond_1

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->photos:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onActivate()V

    .line 144
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 145
    iget-boolean v0, p0, Lcom/vkontakte/android/FaveActivity;->postsLoaded:Z

    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->posts:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 147
    iput-boolean v3, p0, Lcom/vkontakte/android/FaveActivity;->postsLoaded:Z

    .line 150
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/vkontakte/android/FaveActivity;->usersLoaded:Z

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->users:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 152
    iput-boolean v3, p0, Lcom/vkontakte/android/FaveActivity;->usersLoaded:Z

    .line 154
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->links:Lcom/vkontakte/android/UserListView;

    iget-object v0, v0, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity;->links:Lcom/vkontakte/android/UserListView;

    iget-object v1, v1, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/FaveActivity;->links:Lcom/vkontakte/android/UserListView;

    iget-object v2, v2, Lcom/vkontakte/android/UserListView;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->links:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->loadData()V

    .line 157
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/FaveActivity;->prevPage:I

    if-ne v0, v3, :cond_5

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->photos:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onDeactivate()V

    .line 160
    :cond_5
    iput p1, p0, Lcom/vkontakte/android/FaveActivity;->prevPage:I

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->videos:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->invalidateList()V

    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->users:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->invalidateList()V

    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->links:Lcom/vkontakte/android/UserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/UserListView;->invalidateList()V

    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/FaveActivity;->posts:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->updateList2()V

    .line 189
    return-void
.end method
