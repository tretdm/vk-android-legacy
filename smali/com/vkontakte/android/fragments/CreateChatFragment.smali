.class public Lcom/vkontakte/android/fragments/CreateChatFragment;
.super Lcom/vkontakte/android/fragments/FriendListFragment;
.source "CreateChatFragment.java"


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;

.field private searchView:Landroid/widget/SearchView;

.field private sendBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;-><init>()V

    .line 35
    new-instance v0, Lcom/vkontakte/android/fragments/CreateChatFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$1;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/CreateChatFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/CreateChatFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public beforeSetListAdapter(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "list"    # Landroid/widget/ListView;

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "chat"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030024

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "hdr":Landroid/view/View;
    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 169
    new-instance v1, Lcom/vkontakte/android/fragments/CreateChatFragment$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$7;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .end local v0    # "hdr":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const v9, 0x7f0d0372

    const v13, -0x7f000001

    const/4 v12, 0x0

    const v11, 0x7f080022

    const/4 v10, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/FriendListFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "chat"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const v6, 0x7f0d01d3

    :goto_0
    invoke-virtual {p1, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-static {v1}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 57
    invoke-virtual {p0, v1, v10, v12}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setData(Ljava/util/ArrayList;ZZ)V

    .line 59
    new-instance v6, Lcom/vkontakte/android/fragments/CreateChatFragment$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$2;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setSelectionListener(Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "chat"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setMultiSelection()V

    .line 84
    const/high16 v6, 0x7f030000

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    .line 85
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    new-instance v7, Lcom/vkontakte/android/fragments/CreateChatFragment$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$3;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "selected"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 100
    .local v5, "sel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    if-eqz v5, :cond_0

    .line 101
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setSelectedUsers(Ljava/util/ArrayList;)V

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getSelectedUsers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 104
    .local v0, "cnt":I
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

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

    .line 105
    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    .line 106
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 107
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .end local v0    # "cnt":I
    .end local v5    # "sel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    :goto_2
    new-instance v6, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Landroid/widget/SearchView;

    .line 116
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0278

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 118
    :try_start_0
    const-class v6, Landroid/widget/SearchView;

    const-string v7, "mSearchButton"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 119
    .local v3, "searchField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 121
    .local v2, "searchBtn":Landroid/widget/ImageView;
    const v6, 0x7f02008d

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    const-class v6, Landroid/widget/SearchView;

    const-string v7, "mSearchPlate"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 123
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 125
    .local v4, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, -0x7f000001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2    # "searchBtn":Landroid/widget/ImageView;
    .end local v3    # "searchField":Ljava/lang/reflect/Field;
    .end local v4    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Landroid/widget/SearchView;

    new-instance v7, Lcom/vkontakte/android/fragments/CreateChatFragment$4;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$4;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 146
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Landroid/widget/SearchView;

    new-instance v7, Lcom/vkontakte/android/fragments/CreateChatFragment$5;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$5;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Landroid/widget/SearchView;

    new-instance v7, Lcom/vkontakte/android/fragments/CreateChatFragment$6;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/CreateChatFragment$6;-><init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 161
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/fragments/CreateChatFragment;->setHasOptionsMenu(Z)V

    .line 162
    return-void

    .line 53
    .end local v1    # "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    const v6, 0x7f0d0094

    goto/16 :goto_0

    .line 104
    .restart local v0    # "cnt":I
    .restart local v1    # "fl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v5    # "sel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    const-string v7, ""

    goto/16 :goto_1

    .line 109
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    iget-object v6, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 126
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
    .line 180
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/FriendListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 185
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    .line 193
    const v2, 0x7f0d0278

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 194
    .local v1, "search":Landroid/view/MenuItem;
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 195
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->searchView:Landroid/widget/SearchView;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 197
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 198
    const v2, 0x7f0d028c

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 199
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 200
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 202
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/FriendListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 203
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->onDestroy()V

    .line 189
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    return-void
.end method
