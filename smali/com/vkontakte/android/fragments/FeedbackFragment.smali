.class public Lcom/vkontakte/android/fragments/FeedbackFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "FeedbackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;
    }
.end annotation


# instance fields
.field private commentsLoaded:Z

.field private commentsView:Lcom/vkontakte/android/NewsView;

.field private contentView:Landroid/widget/LinearLayout;

.field private notifyView:Lcom/vkontakte/android/NotificationsView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private showFilter:Z

.field private tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsLoaded:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->showFilter:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/NotificationsView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->notifyView:Lcom/vkontakte/android/NotificationsView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/FeedbackFragment;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsView:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/FeedbackFragment;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsLoaded:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/FeedbackFragment;Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsLoaded:Z

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/FeedbackFragment;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->showFilter:Z

    return-void
.end method

.method private showFilter()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 143
    const/4 v7, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const v7, 0x7f080056

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v8

    const v7, 0x7f08025d

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v11

    const v7, 0x7f080082

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v12

    const v7, 0x7f08025e

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v13

    const v7, 0x7f08025f

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v14

    const/4 v7, 0x5

    const v9, 0x7f080260

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v7

    .line 144
    .local v2, "opts":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "notifications_filter"

    const-string v10, "wall,mentions,comments,likes,reposts,followers|friends"

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "_setting":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v5, "setting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v9, v0

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_0

    .line 149
    const/4 v7, 0x6

    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "wall"

    aput-object v7, v3, v8

    const-string v7, "mentions"

    aput-object v7, v3, v11

    const-string v7, "comments"

    aput-object v7, v3, v12

    const-string v7, "likes"

    aput-object v7, v3, v13

    const-string v7, "reposts"

    aput-object v7, v3, v14

    const/4 v7, 0x5

    const-string v8, "followers|friends"

    aput-object v8, v3, v7

    .line 150
    .local v3, "optsVals":[Ljava/lang/String;
    array-length v7, v3

    new-array v6, v7, [Z

    .line 151
    .local v6, "vals":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6

    if-lt v1, v7, :cond_1

    .line 154
    new-instance v7, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    const v8, 0x7f08025c

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 156
    new-instance v8, Lcom/vkontakte/android/fragments/FeedbackFragment$2;

    invoke-direct {v8, p0, v6}, Lcom/vkontakte/android/fragments/FeedbackFragment$2;-><init>(Lcom/vkontakte/android/fragments/FeedbackFragment;[Z)V

    invoke-virtual {v7, v2, v6, v8}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 162
    const v8, 0x7f080042

    new-instance v9, Lcom/vkontakte/android/fragments/FeedbackFragment$3;

    invoke-direct {v9, p0, v6, v3}, Lcom/vkontakte/android/fragments/FeedbackFragment$3;-><init>(Lcom/vkontakte/android/fragments/FeedbackFragment;[Z[Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 173
    const v8, 0x7f080041

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 174
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 175
    return-void

    .line 146
    .end local v1    # "i":I
    .end local v3    # "optsVals":[Ljava/lang/String;
    .end local v6    # "vals":[Z
    :cond_0
    aget-object v4, v0, v7

    .line 147
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "optsVals":[Ljava/lang/String;
    .restart local v6    # "vals":[Z
    :cond_1
    aget-object v7, v3, v1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    aput-boolean v7, v6, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 9
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    .line 50
    .local v2, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 51
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    const v3, 0x7f0801fd

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 54
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 55
    .local v1, "nm":Landroid/app/NotificationManager;
    const/16 v3, 0x1f6

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    .line 59
    new-instance v3, Lcom/vkontakte/android/NewsView;

    invoke-direct {v3, p1}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsView:Lcom/vkontakte/android/NewsView;

    .line 60
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/NewsView;->setCommentsMode(Z)V

    .line 62
    new-instance v3, Lcom/vkontakte/android/NotificationsView;

    invoke-direct {v3, p1}, Lcom/vkontakte/android/NotificationsView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->notifyView:Lcom/vkontakte/android/NotificationsView;

    .line 63
    const/4 v0, 0x1

    .line 64
    .local v0, "fromCache":Z
    sget-object v3, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->notifyView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)Z

    move-result v0

    .line 66
    :cond_1
    if-eqz v0, :cond_2

    .line 67
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->notifyView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NotificationsView;->refresh()V

    .line 70
    :cond_2
    sget v3, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 87
    new-instance v3, Landroid/support/v4/view/ViewPager;

    invoke-direct {v3, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 88
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FeedbackFragment;Lcom/vkontakte/android/fragments/FeedbackFragment$FeedbackPagerAdapter;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 90
    new-instance v3, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {v3, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 91
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 92
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v4, Lcom/vkontakte/android/fragments/FeedbackFragment$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/FeedbackFragment$1;-><init>(Lcom/vkontakte/android/fragments/FeedbackFragment;)V

    invoke-virtual {v3, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 117
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v4, 0x7f060015

    invoke-virtual {v3, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 118
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 120
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->tabs:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/FeedbackFragment;->setHasOptionsMenu(Z)V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 127
    const v0, 0x7f0e000a

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 135
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090221

    if-ne v0, v1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FeedbackFragment;->showFilter()V

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->notifyView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->onPause()V

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onPause()V

    .line 236
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 131
    const v0, 0x7f090221

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->showFilter:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->notifyView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FeedbackFragment;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 242
    return-void
.end method
