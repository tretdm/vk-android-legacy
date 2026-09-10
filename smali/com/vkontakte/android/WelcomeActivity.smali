.class public Lcom/vkontakte/android/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# instance fields
.field private alertView:Landroid/view/View;

.field currentSyncOption:I

.field syncAll:Z

.field syncEnabled:Z

.field syncSettingsMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/WelcomeActivity;->syncSettingsMode:Z

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/WelcomeActivity;I)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WelcomeActivity;->setSyncOption(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/vkontakte/android/WelcomeActivity;->saveSyncSettings()V

    return-void
.end method

.method private saveSyncSettings()V
    .locals 8

    .prologue
    .line 120
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 121
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v5, "com.vkontakte.account"

    invoke-virtual {v2, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 122
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v5, v1

    if-nez v5, :cond_0

    .line 123
    new-instance v0, Landroid/accounts/Account;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "username"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.vkontakte.account"

    invoke-direct {v0, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v0, "account":Landroid/accounts/Account;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v6}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 125
    const/4 v5, 0x1

    new-array v1, v5, [Landroid/accounts/Account;

    .end local v1    # "accounts":[Landroid/accounts/Account;
    const/4 v5, 0x0

    aput-object v0, v1, v5

    .line 127
    .end local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "com.android.contacts"

    iget-boolean v7, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    invoke-static {v5, v6, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 128
    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 129
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 130
    const-string v6, "sync_all"

    iget-boolean v7, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 131
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v4

    .line 133
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setSyncOption(I)V
    .locals 4
    .param p1, "o"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 138
    iput p1, p0, Lcom/vkontakte/android/WelcomeActivity;->currentSyncOption:I

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v1, 0x7f0901e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v1, 0x7f0901eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-ne p1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 155
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 139
    goto :goto_0

    :cond_1
    move v1, v3

    .line 140
    goto :goto_1

    :cond_2
    move v1, v3

    .line 141
    goto :goto_2

    .line 144
    :pswitch_0
    iput-boolean v2, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    .line 145
    iput-boolean v2, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    goto :goto_3

    .line 148
    :pswitch_1
    iput-boolean v3, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    .line 149
    iput-boolean v2, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    goto :goto_3

    .line 152
    :pswitch_2
    iput-boolean v3, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    goto :goto_3

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTextColor(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 107
    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 112
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 113
    check-cast v2, Landroid/widget/TextView;

    .line 114
    .local v2, "t":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    const v4, 0xffffff

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .end local v2    # "t":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 109
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/WelcomeActivity;->setTextColor(Landroid/view/View;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0, v7, v7}, Lcom/vkontakte/android/WelcomeActivity;->overridePendingTransition(II)V

    .line 28
    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f02027a

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 29
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/WelcomeActivity;->setContentView(Landroid/view/View;)V

    .line 31
    const v4, 0x7f030097

    invoke-static {p0, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 34
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "sync_all"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    .line 35
    iput-boolean v7, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    .line 36
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 37
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v4, "com.vkontakte.account"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 38
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v4, v1

    if-nez v4, :cond_0

    .line 39
    new-instance v0, Landroid/accounts/Account;

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "username"

    const-string v8, ""

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.vkontakte.account"

    invoke-direct {v0, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v2, v0, v9, v9}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 41
    new-array v1, v6, [Landroid/accounts/Account;

    .end local v1    # "accounts":[Landroid/accounts/Account;
    aput-object v0, v1, v7

    .line 43
    .end local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_0
    aget-object v4, v1, v7

    const-string v5, "com.android.contacts"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    .line 48
    iget-object v4, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f0901e6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 49
    iget-object v4, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f0901eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 50
    iget-object v4, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f0901ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    if-nez v5, :cond_4

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 52
    invoke-static {p0}, Lcom/vkontakte/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/WelcomeActivity;->currentSyncOption:I

    .line 54
    iget-object v4, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f0901e5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/WelcomeActivity$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/WelcomeActivity$1;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v4, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f0901ea

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/WelcomeActivity$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/WelcomeActivity$2;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v4, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    const v5, 0x7f0901ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/WelcomeActivity$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/WelcomeActivity$3;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 74
    iget-object v4, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/WelcomeActivity;->setTextColor(Landroid/view/View;)V

    .line 77
    :cond_1
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    const v5, 0x7f0800d3

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 79
    iget-object v5, p0, Lcom/vkontakte/android/WelcomeActivity;->alertView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 80
    const v5, 0x7f0800a0

    new-instance v6, Lcom/vkontakte/android/WelcomeActivity$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/WelcomeActivity$4;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 90
    const v5, 0x7f080100

    new-instance v6, Lcom/vkontakte/android/WelcomeActivity$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/WelcomeActivity$5;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 96
    new-instance v5, Lcom/vkontakte/android/WelcomeActivity$6;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/WelcomeActivity$6;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    return-void

    :cond_2
    move v5, v7

    .line 48
    goto/16 :goto_0

    :cond_3
    move v5, v7

    .line 49
    goto/16 :goto_1

    :cond_4
    move v6, v7

    .line 50
    goto/16 :goto_2
.end method
