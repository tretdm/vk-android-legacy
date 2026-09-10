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

.field private receiver:Landroid/content/BroadcastReceiver;

.field private view:Lcom/vkontakte/android/NewsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/vkontakte/android/fragments/NewsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/NewsFragment$1;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->firstNav:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->lists:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/NewsFragment;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->firstNav:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/NewsFragment;Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->firstNav:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->lists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private updateLists()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGetLists;

    invoke-direct {v0}, Lcom/vkontakte/android/api/NewsfeedGetLists;-><init>()V

    .line 185
    new-instance v1, Lcom/vkontakte/android/fragments/NewsFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/NewsFragment$5;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGetLists;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 204
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 12
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    .line 93
    .local v6, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 94
    new-instance v7, Lcom/vkontakte/android/fragments/NewsFragment$2;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f030044

    invoke-direct {v7, p0, v8, v9}, Lcom/vkontakte/android/fragments/NewsFragment$2;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 99
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x7f06002a

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 100
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x7f060186

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 101
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x7f060046

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 102
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v8, 0x7f030066

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 103
    new-instance v5, Lcom/vkontakte/android/fragments/NewsFragment$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/NewsFragment$3;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    .line 135
    .local v5, "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v8, v5}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    .line 136
    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 137
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->lists:Ljava/util/ArrayList;

    invoke-static {}, Lcom/vkontakte/android/cache/NewsfeedCache;->getLists()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->lists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 139
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateLists()V

    .line 140
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    if-nez v7, :cond_1

    .line 141
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "feed_list"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 142
    .local v3, "lid":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 143
    :cond_0
    const/4 v2, 0x3

    .line 144
    .local v2, "i":I
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->lists:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 151
    :goto_2
    new-instance v7, Lcom/vkontakte/android/NewsView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vkontakte/android/NewsView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    .line 152
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v7, v3}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    .line 154
    .end local v2    # "i":I
    .end local v3    # "lid":I
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v7, v10}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 158
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/fragments/NewsFragment;->setHasOptionsMenu(Z)V

    .line 160
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "action_bar_container"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "abId":I
    if-nez v0, :cond_2

    const v0, 0x7f080031

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 164
    new-instance v7, Lcom/vkontakte/android/fragments/NewsFragment$4;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/NewsFragment$4;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :cond_3
    return-void

    .line 138
    .end local v0    # "abId":I
    .end local v1    # "actionBarView":Landroid/view/View;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsfeedList;

    .local v4, "list":Lcom/vkontakte/android/NewsfeedList;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    iget-object v9, v4, Lcom/vkontakte/android/NewsfeedList;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    .end local v4    # "list":Lcom/vkontakte/android/NewsfeedList;
    .restart local v2    # "i":I
    .restart local v3    # "lid":I
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsfeedList;

    .line 145
    .restart local v4    # "list":Lcom/vkontakte/android/NewsfeedList;
    iget v8, v4, Lcom/vkontakte/android/NewsfeedList;->id:I

    if-ne v8, v3, :cond_6

    .line 146
    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_2

    .line 149
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 207
    const v0, 0x7f0e0004

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 208
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 86
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 6

    .prologue
    .line 174
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, "abId":I
    if-nez v0, :cond_0

    const v0, 0x7f080031

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 181
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 211
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080189

    if-ne v0, v1, :cond_0

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/NewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->beforeDestroy()V

    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onPause()V

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 219
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 220
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "refreshOnOpen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->preloadNew()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsView;->onResume()V

    .line 223
    return-void
.end method
