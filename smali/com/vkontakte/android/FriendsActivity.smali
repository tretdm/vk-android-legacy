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

.field private buttonBar:Landroid/widget/FrameLayout;

.field private contentView:Landroid/widget/FrameLayout;

.field private indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

.field mutual:Z

.field numView:Landroid/widget/TextView;

.field onlineFriendsView:Lcom/vkontakte/android/FriendListView;

.field private pageListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

.field private pager:Lcom/vkontakte/android/ui/ViewPager;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reqsShownCounter:I

.field reqsView:Lcom/vkontakte/android/FriendRequestsView;

.field requestsLoaded:Z

.field select:Z

.field tBtn1:Lcom/vkontakte/android/TitleBarButton;

.field tBtn2:Lcom/vkontakte/android/TitleBarButton;

.field titleButtons:Landroid/widget/LinearLayout;

.field userID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/vkontakte/android/FriendsActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsActivity$1;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 54
    new-instance v0, Lcom/vkontakte/android/FriendsActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsActivity$2;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->pageListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/FriendsActivity;->requestsLoaded:Z

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendsActivity;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FriendsActivity;)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->updateTabTitles()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/FriendsActivity;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->openOrCreateChat()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/FriendsActivity;)Lcom/vkontakte/android/ui/ViewPagerIndicator;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/FriendsActivity;)Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->pageListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/FriendsActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private loadFriendList()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Lcom/vkontakte/android/api/FriendsGet;

    iget v1, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/FriendsGet;-><init>(IZ)V

    .line 213
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

    .line 214
    :cond_1
    new-instance v1, Lcom/vkontakte/android/FriendsActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendsActivity$5;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsGet;->setCallback(Lcom/vkontakte/android/api/FriendsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 257
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 258
    return-void
.end method

.method private openOrCreateChat()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 460
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/FriendListView;->getSelectedUsers()Ljava/util/ArrayList;

    move-result-object v0

    .line 461
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 462
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/FriendsActivity;->onSelect(Lcom/vkontakte/android/UserProfile;)V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 464
    new-instance v1, Lcom/vkontakte/android/api/MessagesCreateChat;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/vkontakte/android/api/MessagesCreateChat;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 465
    new-instance v2, Lcom/vkontakte/android/FriendsActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/FriendsActivity$9;-><init>(Lcom/vkontakte/android/FriendsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/MessagesCreateChat;->setCallback(Lcom/vkontakte/android/api/MessagesCreateChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 502
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 503
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->loadFriendList()V

    .line 262
    return-void
.end method

.method private update()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/vkontakte/android/FriendsActivity$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsActivity$6;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method private updateTabTitles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 410
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

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    const-string v0, "vk"

    const-string v1, "SET TITLES!!!!11"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-lez v0, :cond_2

    const v0, 0x7f0900f4

    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-lez v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    const/16 v5, 0x64

    if-ge v0, v5, :cond_3

    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    .line 414
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 415
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 412
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 418
    :cond_1
    return-void

    .line 412
    :cond_2
    const v0, 0x7f0901ac

    goto :goto_0

    .line 413
    :cond_3
    const-string v0, "99+"

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "uid"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "mutual"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "select"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->select:Z

    .line 85
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-eqz v8, :cond_0

    const v8, 0x7f09009d

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/FriendsActivity;->setTitle(I)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/FriendsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    new-instance v8, Lcom/vkontakte/android/FriendListView;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/FriendListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    .line 90
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->select:Z

    if-nez v8, :cond_2

    new-instance v8, Lcom/vkontakte/android/FriendListView;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/FriendListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    .line 94
    :cond_2
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-nez v8, :cond_d

    iget-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->select:Z

    if-nez v8, :cond_d

    .line 95
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    .local v2, "contentView":Landroid/widget/LinearLayout;
    new-instance v8, Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/ui/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    .line 98
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    new-instance v9, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;-><init>(Lcom/vkontakte/android/FriendsActivity;Lcom/vkontakte/android/FriendsActivity$FriendsPagesAdapter;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ViewPager;->setAdapter(Lcom/vkontakte/android/ui/PagerAdapter;)V

    .line 99
    new-instance v8, Lcom/vkontakte/android/ui/ViewPagerIndicator;

    iget-object v9, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-direct {v8, p0, v9}, Lcom/vkontakte/android/ui/ViewPagerIndicator;-><init>(Landroid/content/Context;Lcom/vkontakte/android/ui/ViewPager;)V

    iput-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    .line 100
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    iget-object v9, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ViewPager;->setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V

    .line 101
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v8, v7}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/FriendsActivity;->setContentView(Landroid/view/View;)V

    .line 134
    .end local v2    # "contentView":Landroid/widget/LinearLayout;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_0
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->mutual:Z

    if-nez v8, :cond_14

    .line 135
    iget v8, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    if-ne v8, v9, :cond_12

    .line 136
    :cond_4
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "realFriendCount="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/vkontakte/android/Global;->realFriendCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v8, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    sput-object v8, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 138
    :cond_5
    sget-object v8, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_e

    .line 139
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    .line 156
    :cond_6
    :goto_1
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->select:Z

    if-nez v8, :cond_7

    .line 157
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "select"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_11

    .line 158
    new-instance v8, Lcom/vkontakte/android/FriendRequestsView;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/FriendRequestsView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    .line 159
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900f4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900ff

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 161
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090075

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 159
    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    .line 163
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 164
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 169
    :goto_2
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    new-instance v9, Lcom/vkontakte/android/FriendsActivity$4;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/FriendsActivity$4;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    .line 171
    const-wide/16 v10, 0x12c

    .line 169
    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/FriendListView;->setOnSelectListener(Lcom/vkontakte/android/FriendListView$OnSelectListener;)V

    .line 185
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/FriendListView;->setOnSelectListener(Lcom/vkontakte/android/FriendListView$OnSelectListener;)V

    .line 187
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "select"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 188
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "multiselect"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/vkontakte/android/FriendListView;->setSelectMode(ZZ)V

    .line 189
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/vkontakte/android/FriendListView;->setSelectMode(ZZ)V

    .line 190
    :cond_9
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "search_chats"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 191
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/vkontakte/android/FriendListView;->searchChats:Z

    .line 192
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/vkontakte/android/FriendListView;->searchChats:Z

    .line 196
    :cond_a
    iget v8, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v8, :cond_b

    iget v8, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    if-ne v8, v9, :cond_c

    .line 197
    :cond_b
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v8, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v8, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v9, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v3, v9, v10}, Lcom/vkontakte/android/FriendsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 202
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_c
    return-void

    .line 110
    :cond_d
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->contentView:Landroid/widget/FrameLayout;

    .line 111
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/FriendsActivity;->setContentView(Landroid/view/View;)V

    .line 113
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendsActivity;->select:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "multiselect"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 114
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    .line 115
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    const v9, 0x7f020036

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 116
    const v8, 0x7f03000c

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 117
    .local v0, "btn":Landroid/widget/Button;
    const-string v8, "Okay"

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 119
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/16 v10, 0x50

    invoke-direct {v5, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 120
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    neg-int v8, v8

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 121
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 123
    new-instance v8, Lcom/vkontakte/android/FriendsActivity$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/FriendsActivity$3;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/FriendListView;->enableGlobalSearch(Z)V

    goto/16 :goto_0

    .line 140
    .end local v0    # "btn":Landroid/widget/Button;
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    sget v8, Lcom/vkontakte/android/Global;->realFriendCount:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_f

    .line 141
    const-string v8, "vk"

    const-string v9, "!!!!!!!!!!"

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    goto/16 :goto_1

    .line 144
    :cond_f
    invoke-static {p0}, Lcom/vkontakte/android/cache/FriendsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 145
    invoke-static {p0}, Lcom/vkontakte/android/cache/FriendsCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/UserProfile;

    move-result-object v1

    .line 146
    .local v1, "cachedList":[Lcom/vkontakte/android/UserProfile;
    array-length v8, v1

    new-array v8, v8, [I

    sput-object v8, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 147
    const/4 v4, 0x0

    .line 148
    .local v4, "i":I
    array-length v9, v1

    const/4 v8, 0x0

    :goto_4
    if-lt v8, v9, :cond_10

    .line 153
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    goto/16 :goto_1

    .line 148
    :cond_10
    aget-object v6, v1, v8

    .line 149
    .local v6, "p":Lcom/vkontakte/android/UserProfile;
    sget-object v10, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v10, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v10, Lcom/vkontakte/android/Global;->friendHints:[I

    iget v11, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v11, v10, v4

    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 148
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 166
    .end local v1    # "cachedList":[Lcom/vkontakte/android/UserProfile;
    .end local v4    # "i":I
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_11
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900ff

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090075

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 166
    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 174
    :cond_12
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/FriendListView;->enableGlobalSearch(Z)V

    .line 175
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/FriendListView;->enableGlobalSearch(Z)V

    .line 176
    :cond_13
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->loadFriendList()V

    .line 177
    iget-object v8, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900ff

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090075

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 177
    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->setTitles([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 181
    :cond_14
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->loadFriendList()V

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 206
    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    :cond_1
    return-void
.end method

.method public onListLoaded()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->update()V

    .line 266
    return-void
.end method

.method public onMultiSelectChanged(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    const-wide/16 v4, 0xfa

    const/4 v3, 0x0

    .line 422
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 424
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 425
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v1, Lcom/vkontakte/android/FriendsActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendsActivity$7;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 436
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 437
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 440
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/vkontakte/android/FriendListView;->setPadding(IIII)V

    .line 441
    const v1, 0x7f040005

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 442
    .restart local v0    # "a":Landroid/view/animation/Animation;
    new-instance v1, Lcom/vkontakte/android/FriendsActivity$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendsActivity$8;-><init>(Lcom/vkontakte/android/FriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 453
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 454
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 456
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/FriendsActivity;->buttonBar:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-le p1, v2, :cond_2

    const v2, 0x7f09020d

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 457
    return-void

    .line 456
    :cond_2
    const v2, 0x7f09020c

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 389
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->onPause()V

    .line 390
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->onPause()V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->onPause()V

    .line 392
    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->refresh()V

    .line 385
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->allFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->onResume()V

    .line 397
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->onlineFriendsView:Lcom/vkontakte/android/FriendListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendListView;->onResume()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->onResume()V

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/FriendsActivity;->updateTabTitles()V

    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->userID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-lez v0, :cond_4

    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsShownCounter:I

    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-ge v0, v1, :cond_4

    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->pager:Lcom/vkontakte/android/ui/ViewPager;

    invoke-virtual {v0, v2, v2}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 402
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 403
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->indicator:Lcom/vkontakte/android/ui/ViewPagerIndicator;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/ViewPagerIndicator;->onPageSelected(I)V

    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    iget-object v0, v0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsView:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->loadData()V

    .line 405
    :cond_3
    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    iput v0, p0, Lcom/vkontakte/android/FriendsActivity;->reqsShownCounter:I

    .line 407
    :cond_4
    return-void
.end method

.method public onSelect(Lcom/vkontakte/android/UserProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v0, "res":Landroid/content/Intent;
    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/FriendsActivity;->setResult(ILandroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendsActivity;->finish()V

    .line 310
    return-void
.end method
