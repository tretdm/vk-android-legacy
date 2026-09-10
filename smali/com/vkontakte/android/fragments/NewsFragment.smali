.class public Lcom/vkontakte/android/fragments/NewsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "NewsFragment.java"


# instance fields
.field private firstNav:Z

.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsfeedList;",
            ">;"
        }
    .end annotation
.end field

.field private navAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prevNavItem:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private view:Lcom/vkontakte/android/NewsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/vkontakte/android/fragments/NewsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/NewsFragment$1;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->firstNav:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->lists:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->prevNavItem:I

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/NewsFragment;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->firstNav:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/NewsFragment;Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->firstNav:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/NewsFragment;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->prevNavItem:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/NewsFragment;I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->prevNavItem:I

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->lists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateLists()V

    return-void
.end method

.method private updateLists()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGetLists;

    invoke-direct {v0}, Lcom/vkontakte/android/api/NewsfeedGetLists;-><init>()V

    .line 246
    new-instance v1, Lcom/vkontakte/android/fragments/NewsFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/NewsFragment$6;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGetLists;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 267
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 11
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 112
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v5

    .line 113
    .local v5, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "owner_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 114
    :cond_0
    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 115
    new-instance v6, Lcom/vkontakte/android/fragments/NewsFragment$2;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03005b

    invoke-direct {v6, p0, v7, v8}, Lcom/vkontakte/android/fragments/NewsFragment$2;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 120
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v7, 0x7f080044

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 121
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v7, 0x7f08019f

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 122
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v7, 0x7f080057

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 123
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v7, 0x7f0800fa

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 124
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v7, 0x7f080060

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 125
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v7, 0x7f030084

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 126
    new-instance v3, Lcom/vkontakte/android/fragments/NewsFragment$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/NewsFragment$3;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    .line 170
    .local v3, "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7, v3}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    .line 171
    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 172
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/vkontakte/android/fragments/NewsFragment$4;

    invoke-direct {v7, p0, p1, v5}, Lcom/vkontakte/android/fragments/NewsFragment$4;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;Landroid/app/Activity;Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 195
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "feed_list"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 196
    .local v2, "lid":I
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    if-nez v6, :cond_1

    .line 197
    new-instance v6, Lcom/vkontakte/android/NewsView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    .line 198
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v6, v2}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    .line 200
    :cond_1
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/fragments/NewsFragment;->setHasOptionsMenu(Z)V

    .line 214
    .end local v2    # "lid":I
    .end local v3    # "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 219
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "action_bar_container"

    const-string v8, "id"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "abId":I
    if-nez v0, :cond_3

    const v0, 0x7f09003b

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 223
    new-instance v6, Lcom/vkontakte/android/fragments/NewsFragment$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/NewsFragment$5;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_4
    return-void

    .line 201
    .end local v0    # "abId":I
    .end local v1    # "actionBarView":Landroid/view/View;
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    if-nez v6, :cond_2

    .line 202
    new-instance v6, Lcom/vkontakte/android/NewsView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v10}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;Z)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    .line 203
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "owner_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 204
    .local v4, "oid":I
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "mode"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "postponed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 205
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v6, v4}, Lcom/vkontakte/android/NewsView;->initPostponed(I)V

    .line 206
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0802fa

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 208
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "mode"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "suggested"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 209
    iget-object v6, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v6, v4}, Lcom/vkontakte/android/NewsView;->initSuggests(I)V

    .line 210
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0802fb

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "com.vkontakte.android.RELOAD_FEED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 270
    const v0, 0x7f0e0005

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 271
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 106
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 233
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "abId":I
    if-nez v0, :cond_0

    const v0, 0x7f09003b

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 236
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    .line 240
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 241
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 242
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 274
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090211

    if-ne v0, v1, :cond_0

    .line 275
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/NewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 294
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->beforeDestroy()V

    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onPause()V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 283
    new-instance v0, Lcom/vkontakte/android/fragments/NewsFragment$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/NewsFragment$7;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 290
    return-void
.end method
