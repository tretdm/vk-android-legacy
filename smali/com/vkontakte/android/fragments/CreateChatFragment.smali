.class public Lcom/vkontakte/android/fragments/CreateChatFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "CreateChatFragment.java"


# instance fields
.field private friends:Lcom/vkontakte/android/FriendsView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private sendBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/vkontakte/android/fragments/CreateChatFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$1;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/CreateChatFragment;)Lcom/vkontakte/android/FriendsView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->friends:Lcom/vkontakte/android/FriendsView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/CreateChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 11
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const v10, 0x7f080021

    const/4 v9, 0x0

    const v7, -0x7f000001

    const/4 v8, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "chat"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x7f06002f

    :goto_0
    invoke-virtual {p1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 61
    new-instance v5, Lcom/vkontakte/android/fragments/CreateChatFragment$2;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/fragments/CreateChatFragment$2;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->friends:Lcom/vkontakte/android/FriendsView;

    .line 78
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->friends:Lcom/vkontakte/android/FriendsView;

    new-instance v6, Lcom/vkontakte/android/fragments/CreateChatFragment$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$3;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/FriendsView;->setSelectionListener(Lcom/vkontakte/android/FriendsView$SelectionListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "chat"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->friends:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v5}, Lcom/vkontakte/android/FriendsView;->setMultiSelection()V

    .line 103
    const/high16 v5, 0x7f030000

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    .line 104
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0600ae

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    new-instance v6, Lcom/vkontakte/android/fragments/CreateChatFragment$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$4;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "selected"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 119
    .local v4, "sel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    if-eqz v4, :cond_0

    .line 120
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->friends:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/FriendsView;->setSelectedUsers(Ljava/util/ArrayList;)V

    .line 123
    .end local v4    # "sel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    new-instance v5, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 124
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 127
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->friends:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v5, v0, v8}, Lcom/vkontakte/android/FriendsView;->setData(Ljava/util/ArrayList;Z)V

    .line 129
    :try_start_0
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v6, "mSearchButton"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 130
    .local v2, "searchField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 131
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 132
    .local v1, "searchBtn":Landroid/widget/ImageView;
    const v5, 0x7f0200ed

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v6, "mSearchPlate"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 134
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 136
    .local v3, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, -0x7f000001

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "searchBtn":Landroid/widget/ImageView;
    .end local v2    # "searchField":Ljava/lang/reflect/Field;
    .end local v3    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/CreateChatFragment$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$5;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 152
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/CreateChatFragment$6;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$6;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v5, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/CreateChatFragment$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$7;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    .line 167
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setHasOptionsMenu(Z)V

    .line 168
    return-void

    .line 59
    .end local v0    # "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    const v5, 0x7f0601e4

    goto/16 :goto_0

    .line 137
    .restart local v0    # "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    .line 184
    const v2, 0x7f060046

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 185
    .local v1, "search":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v1, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 186
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 188
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 189
    const v2, 0x7f060012

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 190
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 191
    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 193
    .end local v0    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 194
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->friends:Lcom/vkontakte/android/FriendsView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 180
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    return-void
.end method
