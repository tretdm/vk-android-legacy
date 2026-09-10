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

.field private tabTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsLoaded:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsLoaded:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->repliesLoaded:Z

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->prevPosition:I

    .line 42
    new-instance v0, Lcom/vkontakte/android/NewsfeedActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewsfeedActivity$1;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NotificationsView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewsfeedActivity;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/vkontakte/android/NewsfeedActivity;->showPhotoDialog()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewsfeedActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->tabTitles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/ui/ViewPagerIndicator;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    return-object v0
.end method

.method private showPhotoDialog()V
    .locals 5

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 176
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

    .line 177
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 179
    new-instance v4, Lcom/vkontakte/android/NewsfeedActivity$4;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewsfeedActivity$4;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    .line 178
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 187
    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "qp"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsfeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public loadData()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 202
    return-void
.end method

.method public markNotificationsAsRead()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;

    invoke-direct {v0}, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;-><init>()V

    .line 233
    new-instance v1, Lcom/vkontakte/android/NewsfeedActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedActivity$6;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NotificationsMarkAsViewed;->setCallback(Lcom/vkontakte/android/api/NotificationsMarkAsViewed$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 250
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 80
    sput-object p0, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    .line 81
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v7, Lcom/vkontakte/android/NewsView;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    .line 84
    new-instance v7, Lcom/vkontakte/android/NewsView;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    iput-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    .line 85
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsView;->setCommentsMode(Z)V

    .line 86
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v7}, Lcom/vkontakte/android/NewsView;->init()V

    .line 87
    new-instance v7, Lcom/vkontakte/android/NotificationsView;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/NotificationsView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    .line 88
    new-instance v7, Lcom/vkontakte/android/NewsView;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    iput-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    .line 89
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v7}, Lcom/vkontakte/android/NewsView;->initWithSearch()V

    .line 90
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsView;->setSearchQuery(Ljava/lang/String;)V

    .line 92
    new-instance v7, Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    .line 93
    new-instance v7, Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/ui/ViewPagerIndicator;-><init>(Landroid/content/Context;Lcom/vkontakte/android/ui/ViewPager;)V

    iput-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    .line 94
    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v7, :cond_3

    const v7, 0x7f09013e

    :goto_0
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v7, :cond_4

    const v7, 0x7f090025

    :goto_1
    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v9

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090073

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090044

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    iput-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->tabTitles:[Ljava/lang/String;

    .line 95
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->tabTitles:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 96
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ViewPager;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 97
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v7, p0}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 98
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    new-instance v8, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;-><init>(Lcom/vkontakte/android/NewsfeedActivity;Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ViewPager;->setAdapter(Lcom/vkontakte/android/ui/PagerAdapter;)V

    .line 99
    sget-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v7, :cond_0

    .line 100
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 101
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 103
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 104
    .local v4, "layout":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewsfeedActivity;->setContentView(Landroid/view/View;)V

    .line 109
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v7, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v7, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v7, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v7, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v7, "com.vkontakte.android.RELOAD_FROM_CACHE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v7, p0, Lcom/vkontakte/android/NewsfeedActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/vkontakte/android/NewsfeedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, "btnPhoto":Landroid/widget/ImageView;
    const v7, 0x7f0200c9

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x10

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 122
    sget-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v7, :cond_5

    .line 123
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 127
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v7, Lcom/vkontakte/android/NewsfeedActivity$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/NewsfeedActivity$2;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v7, :cond_6

    .line 135
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsfeedActivity;->addViewAtRight(Landroid/view/View;)V

    .line 141
    :goto_3
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v2, "btnPost":Landroid/widget/ImageView;
    const v7, 0x7f0200d2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .restart local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x10

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 145
    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 146
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v7, Lcom/vkontakte/android/NewsfeedActivity$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/NewsfeedActivity$3;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewsfeedActivity;->addViewAtRight(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "refreshOnOpen"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 157
    invoke-static {p0}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 158
    iget-object v8, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {p0}, Lcom/vkontakte/android/cache/NewsfeedCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v7

    int-to-long v11, v7

    sub-long/2addr v9, v11

    const-wide/32 v11, 0x15180

    cmp-long v7, v9, v11

    if-gez v7, :cond_7

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v8, v7}, Lcom/vkontakte/android/NewsView;->refresh(Z)V

    .line 162
    :cond_1
    sget-boolean v7, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v7, :cond_2

    const-string v7, "tutorial"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewsfeedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "slide_replies"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 163
    const-string v7, "qwerty"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 164
    .local v5, "tst":Landroid/widget/Toast;
    const/16 v7, 0x37

    const/4 v8, 0x0

    const/high16 v9, 0x42a00000    # 80.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 165
    const/high16 v7, 0x40a00000    # 5.0f

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/widget/Toast;->setMargin(FF)V

    .line 166
    const v7, 0x7f030022

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 167
    .local v6, "v":Landroid/view/View;
    invoke-static {v6}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 168
    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 170
    const-string v7, "tutorial"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewsfeedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "slide_replies"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    .end local v5    # "tst":Landroid/widget/Toast;
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    return-void

    .line 94
    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "btnPhoto":Landroid/widget/ImageView;
    .end local v2    # "btnPost":Landroid/widget/ImageView;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "layout":Landroid/widget/LinearLayout;
    :cond_3
    const v7, 0x7f090025

    goto/16 :goto_0

    :cond_4
    const v7, 0x7f09013e

    goto/16 :goto_1

    .line 125
    .restart local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "btnPhoto":Landroid/widget/ImageView;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v4    # "layout":Landroid/widget/LinearLayout;
    :cond_5
    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 137
    :cond_6
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewsfeedActivity;->addViewAtLeft(Landroid/view/View;)V

    goto/16 :goto_3

    .line 158
    .restart local v2    # "btnPost":Landroid/widget/ImageView;
    :cond_7
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewsfeedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    .line 345
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsLoaded:Z

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 347
    iput-boolean v2, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsLoaded:Z

    .line 352
    :cond_0
    if-ne p1, v2, :cond_1

    .line 353
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->deselectAll()V

    .line 354
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->deselectAll()V

    .line 356
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 315
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-wide/16 v3, 0xc8

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 319
    if-ne p1, v2, :cond_4

    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    iget-object v0, v0, Lcom/vkontakte/android/NewsView;->news:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    new-instance v2, Lcom/vkontakte/android/NewsfeedActivity$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsfeedActivity$7;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    :cond_0
    :goto_0
    iput p1, p0, Lcom/vkontakte/android/NewsfeedActivity;->prevPosition:I

    .line 331
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    if-ne p1, v0, :cond_3

    .line 332
    iget-boolean v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->repliesLoaded:Z

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    .line 334
    :cond_1
    iput-boolean v1, p0, Lcom/vkontakte/android/NewsfeedActivity;->repliesLoaded:Z

    .line 336
    :cond_2
    sget v0, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    if-lez v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->refresh()V

    .line 338
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->markNotificationsAsRead()V

    .line 341
    :cond_3
    return-void

    .line 325
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->prevPosition:I

    if-ne v0, v2, :cond_0

    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    new-instance v2, Lcom/vkontakte/android/NewsfeedActivity$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewsfeedActivity$8;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 331
    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onPause()V

    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->onPause()V

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const v6, 0x7f09013e

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 206
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity;->newsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 207
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity;->commentsView:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 208
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v2}, Lcom/vkontakte/android/NotificationsView;->onResume()V

    .line 209
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v3

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-ne v3, v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity;->notificationsView:Lcom/vkontakte/android/NotificationsView;

    new-instance v3, Lcom/vkontakte/android/NewsfeedActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewsfeedActivity$5;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    .line 215
    const-wide/16 v4, 0x3e8

    .line 210
    invoke-virtual {v2, v3, v4, v5}, Lcom/vkontakte/android/NotificationsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_0
    sget v2, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    if-lez v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity;->tabTitles:[Ljava/lang/String;

    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v3, :cond_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v1, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    const/16 v4, 0x64

    if-ge v1, v4, :cond_3

    sget v1, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 221
    :goto_3
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity;->tabTitles:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 222
    return-void

    :cond_1
    move v2, v1

    .line 209
    goto :goto_0

    :cond_2
    move v0, v1

    .line 217
    goto :goto_1

    :cond_3
    const-string v1, "99+"

    goto :goto_2

    .line 219
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/NewsfeedActivity;->tabTitles:[Ljava/lang/String;

    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {p0}, Lcom/vkontakte/android/NewsfeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 360
    iget-object v0, p0, Lcom/vkontakte/android/NewsfeedActivity;->searchView:Lcom/vkontakte/android/NewsView;

    new-instance v1, Lcom/vkontakte/android/NewsfeedActivity$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewsfeedActivity$9;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    .line 362
    const-wide/16 v2, 0x3e8

    .line 360
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/NewsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    return v4
.end method
