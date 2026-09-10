.class public Lcom/vkontakte/android/NewsfeedActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "NewsfeedActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_RELOAD_FROM_CACHE:Ljava/lang/String; = "com.vkontakte.android.RELOAD_FROM_CACHE"

.field public static final FULL_RELOAD_TIME:I = 0x15180

.field public static sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;


# instance fields
.field private commentsLoaded:Z

.field private commentsView:Lcom/vkontakte/android/NewsView;

.field private indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

.field private newsLoaded:Z

.field private newsView:Lcom/vkontakte/android/NewsView;

.field private notificationsView:Lcom/vkontakte/android/NotificationsView;

.field private pager:Lcom/vkontakte/android/ui/ViewPager;

.field private prevPosition:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private repliesLoaded:Z

.field private searchView:Lcom/vkontakte/android/NewsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsLoaded:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsLoaded:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->repliesLoaded:Z

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->prevPosition:I

    .line 44
    new-instance v0, Lcom/vkontakte/android/NewsfeedActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsfeedActivity$1;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NotificationsView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewsfeedActivity;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/vkontakte/android/NewsfeedActivity;->showPhotoDialog()V

    return-void
.end method

.method private showPhotoDialog()V
    .locals 5

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 168
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const-string v2, "android.hardware.camera"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 171
    new-instance v4, Lcom/vkontakte/android/NewsfeedActivity$4;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewsfeedActivity$4;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    .line 170
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 179
    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "qp"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsfeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public loadData()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 194
    return-void
.end method

.method public markNotificationsAsRead()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;

    invoke-direct {v0}, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;-><init>()V

    .line 219
    new-instance v1, Lcom/vkontakte/android/NewsfeedActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedActivity$6;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;->setCallback(Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 234
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 73
    sput-object p0, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    .line 74
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v8, Lcom/vkontakte/android/NewsView;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    .line 77
    new-instance v8, Lcom/vkontakte/android/NewsView;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    iput-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    .line 78
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/NewsView;->setCommentsMode(Z)V

    .line 79
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v8}, Lcom/vkontakte/android/NewsView;->init()V

    .line 80
    new-instance v8, Lcom/vkontakte/android/NotificationsView;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NotificationsView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    .line 81
    new-instance v8, Lcom/vkontakte/android/NewsView;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    iput-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    .line 82
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v8}, Lcom/vkontakte/android/NewsView;->initWithSearch()V

    .line 83
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/NewsView;->setSearchQuery(Ljava/lang/String;)V

    .line 85
    new-instance v8, Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/ui/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    .line 86
    new-instance v8, Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v9, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v8, p0, v9}, Lcom/vkontakte/android/ui/ViewPagerIndicator;-><init>(Landroid/content/Context;Lcom/vkontakte/android/ui/ViewPager;)V

    iput-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    .line 87
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v8, :cond_3

    const v8, 0x7f09013d

    :goto_0
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v8, :cond_4

    const v8, 0x7f090025

    :goto_1
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v9

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090072

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090044

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 88
    .local v5, "titles":[Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v8, v5}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 89
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    iget-object v9, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ViewPager;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 90
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 91
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    new-instance v9, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;-><init>(Lcom/vkontakte/android/NewsfeedActivity;Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ViewPager;->setAdapter(Lcom/vkontakte/android/ui/PagerAdapter;)V

    .line 92
    sget-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v8, :cond_0

    .line 93
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 94
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 96
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    .local v4, "layout":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsfeedActivity;->setContentView(Landroid/view/View;)V

    .line 102
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v8, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v8, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v8, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v8, "com.vkontakte.android.RELOAD_FROM_CACHE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/vkontakte/android/NewsfeedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, "btnPhoto":Landroid/widget/ImageView;
    const v8, 0x7f0200c6

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 113
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 114
    sget-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v8, :cond_5

    .line 115
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 119
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v8, Lcom/vkontakte/android/NewsfeedActivity$2;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewsfeedActivity$2;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v8, :cond_6

    .line 127
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsfeedActivity;->addViewAtRight(Landroid/view/View;)V

    .line 133
    :goto_3
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v2, "btnPost":Landroid/widget/ImageView;
    const v8, 0x7f0200cf

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    .restart local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 137
    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 138
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v8, Lcom/vkontakte/android/NewsfeedActivity$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewsfeedActivity$3;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewsfeedActivity;->addViewAtRight(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "refreshOnOpen"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 149
    invoke-static {p0}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 150
    iget-object v9, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {p0}, Lcom/vkontakte/android/cache/NewsfeedCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v8

    int-to-long v12, v8

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x15180

    cmp-long v8, v10, v12

    if-gez v8, :cond_7

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v9, v8}, Lcom/vkontakte/android/NewsView;->refresh(Z)V

    .line 154
    :cond_1
    sget-boolean v8, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v8, :cond_2

    sget-object v8, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v8, :cond_2

    const-string v8, "tutorial"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/vkontakte/android/NewsfeedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "slide_replies"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 155
    const-string v8, "qwerty"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 156
    .local v6, "tst":Landroid/widget/Toast;
    const/16 v8, 0x37

    const/4 v9, 0x0

    const/high16 v10, 0x42a00000    # 80.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 157
    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/Toast;->setMargin(FF)V

    .line 158
    const v8, 0x7f03001c

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 159
    .local v7, "v":Landroid/view/View;
    invoke-static {v7}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 160
    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 162
    const-string v8, "tutorial"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/vkontakte/android/NewsfeedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "slide_replies"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    .end local v6    # "tst":Landroid/widget/Toast;
    .end local v7    # "v":Landroid/view/View;
    :cond_2
    return-void

    .line 87
    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "btnPhoto":Landroid/widget/ImageView;
    .end local v2    # "btnPost":Landroid/widget/ImageView;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "layout":Landroid/widget/LinearLayout;
    .end local v5    # "titles":[Ljava/lang/String;
    :cond_3
    const v8, 0x7f090025

    goto/16 :goto_0

    :cond_4
    const v8, 0x7f09013d

    goto/16 :goto_1

    .line 117
    .restart local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "btnPhoto":Landroid/widget/ImageView;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v4    # "layout":Landroid/widget/LinearLayout;
    .restart local v5    # "titles":[Ljava/lang/String;
    :cond_5
    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 129
    :cond_6
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsfeedActivity;->addViewAtLeft(Landroid/view/View;)V

    goto/16 :goto_3

    .line 150
    .restart local v2    # "btnPost":Landroid/widget/ImageView;
    :cond_7
    const/4 v8, 0x0

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsfeedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    .line 323
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsLoaded:Z

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 325
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsLoaded:Z

    .line 330
    :cond_0
    if-ne p1, v2, :cond_1

    .line 331
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->deselectAll()V

    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->deselectAll()V

    .line 334
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 299
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 303
    if-ne p1, v2, :cond_4

    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->focusSearchField()V

    .line 308
    :cond_0
    :goto_0
    iput p1, p0, Lcom/vkontakte/android/NewsfeedActivity;->prevPosition:I

    .line 309
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    if-ne p1, v0, :cond_3

    .line 310
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->repliesLoaded:Z

    if-nez v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    .line 312
    :cond_1
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsfeedActivity;->repliesLoaded:Z

    .line 314
    :cond_2
    sget v0, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    if-lez v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->refresh()V

    .line 316
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->markNotificationsAsRead()V

    .line 319
    :cond_3
    return-void

    .line 305
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->prevPosition:I

    if-ne v0, v2, :cond_0

    .line 306
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->unfocusSearchField()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 309
    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onPause()V

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->onPause()V

    .line 215
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v1

    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ne v1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    new-instance v1, Lcom/vkontakte/android/NewsfeedActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedActivity$5;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    .line 207
    const-wide/16 v2, 0x3e8

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/NotificationsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :cond_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 337
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 338
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    new-instance v1, Lcom/vkontakte/android/NewsfeedActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedActivity$7;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    .line 340
    const-wide/16 v2, 0x3e8

    .line 338
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    return v4
.end method
