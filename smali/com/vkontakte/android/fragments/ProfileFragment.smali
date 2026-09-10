.class public Lcom/vkontakte/android/fragments/ProfileFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ProfileFragment.java"


# static fields
.field private static final AVA_RESULT:I = 0xf3d

.field private static final EDIT_RESULT:I = 0xf3e


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;

.field private uid:I

.field private view:Lcom/vkontakte/android/ProfileView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/vkontakte/android/fragments/ProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$1;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ProfileFragment;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/ProfileView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->deletePhoto()V

    return-void
.end method

.method private deletePhoto()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/vkontakte/android/api/PhotosDeleteAvatar;

    invoke-direct {v0}, Lcom/vkontakte/android/api/PhotosDeleteAvatar;-><init>()V

    .line 222
    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$4;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosDeleteAvatar;->setCallback(Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 238
    return-void
.end method


# virtual methods
.method public editProfile()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/ProfileEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xf3e

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 185
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0xf3d

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 188
    if-ne p1, v7, :cond_0

    if-ne p2, v6, :cond_0

    .line 189
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v2, "file"

    const-string v3, "file"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    if-ne p1, v7, :cond_2

    if-ne p2, v4, :cond_2

    .line 195
    const-string v2, "option"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, "idx":I
    if-nez v0, :cond_1

    .line 197
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ProfileView;->openProfilePhotos()V

    .line 199
    :cond_1
    if-ne v0, v4, :cond_2

    .line 200
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    const v3, 0x7f08007e

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 202
    const v3, 0x7f08022d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 203
    const v3, 0x7f08004e

    new-instance v4, Lcom/vkontakte/android/fragments/ProfileFragment$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$3;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 210
    const v3, 0x7f08004f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 214
    .end local v0    # "idx":I
    :cond_2
    const/16 v2, 0xf3e

    if-ne p1, v2, :cond_3

    if-ne p2, v6, :cond_3

    .line 215
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f080322

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 216
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/ProfileView;->loadInitial(Z)V

    .line 218
    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 9
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 111
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    .line 112
    .local v0, "a":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 113
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 116
    new-instance v3, Lcom/vkontakte/android/ProfileView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "id"

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    invoke-direct {v3, p1, v4, p0}, Lcom/vkontakte/android/ProfileView;-><init>(Landroid/content/Context;ILcom/vkontakte/android/fragments/ProfileFragment;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    .line 117
    iget v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-nez v3, :cond_0

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    .line 118
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {p1, v3}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/ProfileView;->loadInitial(Z)V

    .line 120
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/fragments/ProfileFragment;->setHasOptionsMenu(Z)V

    .line 121
    iget v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-gez v3, :cond_4

    const v3, 0x7f0801fb

    :goto_1
    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(I)V

    .line 122
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_container"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "abId":I
    if-nez v1, :cond_1

    const v1, 0x7f09003b

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "actionBarView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 126
    new-instance v3, Lcom/vkontakte/android/fragments/ProfileFragment$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$2;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_2
    return-void

    .line 118
    .end local v1    # "abId":I
    .end local v2    # "actionBarView":Landroid/view/View;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "club"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 121
    :cond_4
    const v3, 0x7f08008a

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ProfileView;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 157
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 105
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 6

    .prologue
    .line 136
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "abId":I
    if-nez v0, :cond_0

    const v0, 0x7f09003b

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 140
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ProfileView;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->onPause()V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->view:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->onResume()V

    .line 153
    return-void
.end method

.method public showUpdatePhotoDlg(Z)V
    .locals 5
    .param p1, "havePhotos"    # Z

    .prologue
    const/4 v4, 0x1

    .line 170
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/ImagePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "allow_album"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v2, "limit"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 175
    const v2, 0x7f08022c

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const v2, 0x7f08007d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v2, "custom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 179
    :cond_0
    const-string v2, "no_thumbs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const/16 v2, 0xf3d

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    return-void
.end method
