.class public Lcom/vkontakte/android/FriendsActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "FriendsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/FriendListView$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_FRIEND_LIST_CHANGED:Ljava/lang/String; = "com.vkontakte.android.FRIEND_LIST_CHANGED"

.field public static final ACTION_FRIEND_REQUESTS_CHANGED:Ljava/lang/String; = "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

.field private static final DOFIGA:I = 0x64


# instance fields
.field allFriendsView:Lcom/vkontakte/android/FriendListView;

.field private indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

.field mutual:Z

.field numView:Landroid/widget/TextView;

.field onlineFriendsView:Lcom/vkontakte/android/FriendListView;

.field private pageListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

.field private pager:Lcom/vkontakte/android/ui/ViewPager;

.field private receiver:Landroid/content/BroadcastReceiver;

.field reqsView:Lcom/vkontakte/android/FriendRequestsView;

.field requestsLoaded:Z

.field tBtn1:Lcom/vkontakte/android/TitleBarButton;

.field tBtn2:Lcom/vkontakte/android/TitleBarButton;

.field titleButtons:Landroid/widget/LinearLayout;

.field userID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/vkontakte/android/FriendsActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsActivity$1;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 46
    new-instance v0, Lcom/vkontakte/android/FriendsActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsActivity$2;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->pageListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/FriendsActivity;->requestsLoaded:Z

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendsActivity;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FriendsActivity;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->updateTabTitles()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/FriendsActivity;)Lcom/vkontakte/android/ui/ViewPagerIndicator;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/FriendsActivity;)Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->pageListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method private loadFriendList()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Lcom/vkontakte/android/api/FriendsGet;

    iget v1, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/FriendsGet;-><init>(IZ)V

    .line 176
    .local v0, "fget":Lcom/vkontakte/android/api/FriendsGet;
    iget v1, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "order"

    const-string v2, "hints"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/api/FriendsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 177
    :cond_1
    new-instance v1, Lcom/vkontakte/android/FriendsActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendsActivity$4;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsGet;->setCallback(Lcom/vkontakte/android/api/FriendsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 220
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 221
    return-void
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->loadFriendList()V

    .line 225
    return-void
.end method

.method private update()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/vkontakte/android/FriendsActivity$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsActivity$5;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method private updateTabTitles()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    const-string v0, "vk"

    const-string v1, "SET TITLES!!!!11"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-lez v0, :cond_2

    const v0, 0x7f0900f3

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 376
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 374
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 379
    :cond_1
    return-void

    .line 374
    :cond_2
    const v0, 0x7f0901ab

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "uid"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "mutual"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    .line 75
    iget-boolean v6, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-eqz v6, :cond_0

    const v6, 0x7f09009c

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/FriendsActivity;->setTitle(I)V

    .line 78
    :cond_0
    new-instance v6, Lcom/vkontakte/android/FriendListView;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/FriendListView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    .line 79
    iget-boolean v6, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-nez v6, :cond_1

    new-instance v6, Lcom/vkontakte/android/FriendListView;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/FriendListView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    .line 83
    :cond_1
    iget-boolean v6, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-nez v6, :cond_9

    .line 84
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "contentView":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/ui/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    .line 87
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    new-instance v7, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;-><init>(Lcom/vkontakte/android/FriendsActivity;Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ViewPager;->setAdapter(Lcom/vkontakte/android/ui/PagerAdapter;)V

    .line 88
    new-instance v6, Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/ui/ViewPagerIndicator;-><init>(Landroid/content/Context;Lcom/vkontakte/android/ui/ViewPager;)V

    iput-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    .line 89
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    iget-object v7, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ViewPager;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 90
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/FriendsActivity;->setContentView(Landroid/view/View;)V

    .line 103
    .end local v1    # "contentView":Landroid/widget/LinearLayout;
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-boolean v6, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-nez v6, :cond_10

    .line 104
    iget v6, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v7, :cond_e

    .line 105
    :cond_2
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "realFriendCount="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/vkontakte/android/Global;->realFriendCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    sput-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 107
    :cond_3
    sget-object v6, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 108
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    .line 125
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "select"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_d

    .line 126
    new-instance v6, Lcom/vkontakte/android/FriendRequestsView;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/FriendRequestsView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    .line 127
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900f3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 129
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090074

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 127
    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 132
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 137
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    new-instance v7, Lcom/vkontakte/android/FriendsActivity$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/FriendsActivity$3;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    .line 139
    const-wide/16 v8, 0x12c

    .line 137
    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :goto_3
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v6, p0}, Lcom/vkontakte/android/FriendListView;->setOnSelectListener(Lcom/vkontakte/android/FriendListView$OnSelectListener;)V

    .line 152
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v6, p0}, Lcom/vkontakte/android/FriendListView;->setOnSelectListener(Lcom/vkontakte/android/FriendListView$OnSelectListener;)V

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "select"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 155
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/FriendListView;->setSelectMode(Z)V

    .line 156
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/FriendListView;->setSelectMode(Z)V

    .line 159
    :cond_6
    iget v6, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v7, :cond_8

    .line 160
    :cond_7
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v6, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v7, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v2, v7, v8}, Lcom/vkontakte/android/FriendsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 165
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_8
    return-void

    .line 99
    :cond_9
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/FriendsActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 109
    :cond_a
    sget v6, Lcom/vkontakte/android/Global;->realFriendCount:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b

    .line 110
    const-string v6, "vk"

    const-string v7, "!!!!!!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    goto/16 :goto_1

    .line 113
    :cond_b
    invoke-static {p0}, Lcom/vkontakte/android/cache/FriendsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    invoke-static {p0}, Lcom/vkontakte/android/cache/FriendsCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/UserProfile;

    move-result-object v0

    .line 115
    .local v0, "cachedList":[Lcom/vkontakte/android/UserProfile;
    array-length v6, v0

    new-array v6, v6, [I

    sput-object v6, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, "i":I
    array-length v7, v0

    const/4 v6, 0x0

    :goto_4
    if-lt v6, v7, :cond_c

    .line 122
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    goto/16 :goto_1

    .line 117
    :cond_c
    aget-object v4, v0, v6

    .line 118
    .local v4, "p":Lcom/vkontakte/android/UserProfile;
    sget-object v8, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v8, Lcom/vkontakte/android/Global;->friendHints:[I

    iget v9, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v9, v8, v3

    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 134
    .end local v0    # "cachedList":[Lcom/vkontakte/android/UserProfile;
    .end local v3    # "i":I
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_d
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090074

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 134
    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 141
    :cond_e
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/FriendListView;->enableGlobalSearch(Z)V

    .line 142
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/FriendListView;->enableGlobalSearch(Z)V

    .line 143
    :cond_f
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->loadFriendList()V

    .line 144
    iget-object v6, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090074

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 144
    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 148
    :cond_10
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->loadFriendList()V

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 169
    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    :cond_1
    return-void
.end method

.method public onListLoaded()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    .line 229
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->onPause()V

    .line 353
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->onPause()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->onPause()V

    .line 355
    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->refresh()V

    .line 348
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->onResume()V

    .line 360
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->onResume()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->onResume()V

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->updateTabTitles()V

    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-lez v0, :cond_3

    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0, v2, v2}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageSelected(I)V

    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->loadData()V

    .line 369
    :cond_3
    return-void
.end method

.method public onSelect(Lcom/vkontakte/android/UserProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v0, "res":Landroid/content/Intent;
    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 271
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/FriendsActivity;->setResult(ILandroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->finish()V

    .line 273
    return-void
.end method
