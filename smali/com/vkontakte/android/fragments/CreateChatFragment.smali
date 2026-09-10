.class public Lcom/vkontakte/android/fragments/CreateChatFragment;
.super Lcom/vkontakte/android/fragments/FriendListFragment;
.source "CreateChatFragment.java"


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private sendBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/vkontakte/android/fragments/CreateChatFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$1;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/CreateChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public beforeSetListAdapter(Lcom/vkontakte/android/ui/RefreshableListView;)V
    .locals 4
    .param p1, "list"    # Lcom/vkontakte/android/ui/RefreshableListView;

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "chat"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030034

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "hdr":Landroid/view/View;
    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 174
    new-instance v1, Lcom/vkontakte/android/fragments/CreateChatFragment$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$7;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .end local v0    # "hdr":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const v9, 0x7f0800c8

    const v13, -0x7f000001

    const/4 v12, 0x0

    const v11, 0x7f09002b

    const/4 v10, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/FriendListFragment;->onAttach(Landroid/app/Activity;)V

    .line 58
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "chat"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const v6, 0x7f080049

    :goto_0
    invoke-virtual {p1, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-static {v1}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 62
    invoke-virtual {p0, v1, v10, v12}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 64
    new-instance v6, Lcom/vkontakte/android/fragments/CreateChatFragment$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$2;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setSelectionListener(Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "chat"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setMultiSelection()V

    .line 89
    const/high16 v6, 0x7f030000

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    .line 90
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    new-instance v7, Lcom/vkontakte/android/fragments/CreateChatFragment$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$3;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 102
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "selected"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 105
    .local v5, "sel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setSelectedUsers(Ljava/util/ArrayList;)V

    .line 108
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getSelectedUsers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 109
    .local v0, "cnt":I
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    .line 111
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .end local v0    # "cnt":I
    .end local v5    # "sel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    :goto_2
    new-instance v6, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 121
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080060

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 123
    :try_start_0
    const-class v6, Lcom/actionbarsherlock/widget/SearchView;

    const-string v7, "mSearchButton"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 124
    .local v3, "searchField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 125
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 126
    .local v2, "searchBtn":Landroid/widget/ImageView;
    const v6, 0x7f0200fb

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    const-class v6, Lcom/actionbarsherlock/widget/SearchView;

    const-string v7, "mSearchPlate"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 128
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 130
    .local v4, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, -0x7f000001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v2    # "searchBtn":Landroid/widget/ImageView;
    .end local v3    # "searchField":Ljava/lang/reflect/Field;
    .end local v4    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v7, Lcom/vkontakte/android/fragments/CreateChatFragment$4;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$4;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 151
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v7, Lcom/vkontakte/android/fragments/CreateChatFragment$5;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$5;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v7, Lcom/vkontakte/android/fragments/CreateChatFragment$6;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$6;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    .line 166
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setHasOptionsMenu(Z)V

    .line 167
    return-void

    .line 58
    .end local v1    # "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    const v6, 0x7f0801fe

    goto/16 :goto_0

    .line 109
    .restart local v0    # "cnt":I
    .restart local v1    # "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v5    # "sel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    const-string v7, ""

    goto/16 :goto_1

    .line 114
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 131
    .end local v0    # "cnt":I
    .end local v5    # "sel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/FriendListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    .line 198
    const v2, 0x7f080060

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 199
    .local v1, "search":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v1, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 200
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 202
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 203
    const v2, 0x7f08002c

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 204
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 205
    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 207
    .end local v0    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/FriendListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 208
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->onDestroy()V

    .line 194
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    return-void
.end method
