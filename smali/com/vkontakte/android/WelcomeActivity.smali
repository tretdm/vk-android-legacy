.class public Lcom/vkontakte/android/WelcomeActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "WelcomeActivity.java"


# instance fields
.field currentSyncOption:I

.field flipper:Landroid/widget/ViewFlipper;

.field hasSyncAPI:Z

.field page:I

.field syncAll:Z

.field syncEnabled:Z

.field syncSettingsMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 18
    iput v1, p0, Lcom/vkontakte/android/WelcomeActivity;->page:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/WelcomeActivity;->hasSyncAPI:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/WelcomeActivity;->syncSettingsMode:Z

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/WelcomeActivity;I)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WelcomeActivity;->setSyncOption(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/vkontakte/android/WelcomeActivity;->saveSyncSettings()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/vkontakte/android/WelcomeActivity;->enablePrev()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/vkontakte/android/WelcomeActivity;->disablePrev()V

    return-void
.end method

.method private disablePrev()V
    .locals 5

    .prologue
    const v4, 0x7f060165

    const/high16 v3, 0x3f000000    # 0.5f

    .line 149
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 150
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 151
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 152
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    return-void
.end method

.method private enablePrev()V
    .locals 3

    .prologue
    const v2, 0x7f060165

    .line 156
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 158
    return-void
.end method

.method private saveSyncSettings()V
    .locals 9

    .prologue
    .line 162
    :try_start_0
    const-string v4, "android.accounts.AccountManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 163
    .local v2, "am":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getAccountsByType"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.vkontakte.account"

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 164
    .local v1, "accounts":[Ljava/lang/Object;
    array-length v4, v1

    if-nez v4, :cond_0

    .line 165
    const-string v4, "android.accounts.Account"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/vkontakte/android/Global;->myName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "com.vkontakte.account"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, "account":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "addAccountExplicitly"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 167
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    .end local v1    # "accounts":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object v0, v1, v4

    .line 170
    .end local v0    # "account":Ljava/lang/Object;
    .restart local v1    # "accounts":[Ljava/lang/Object;
    :cond_0
    const-class v4, Landroid/content/ContentResolver;

    const-string v5, "setSyncAutomatically"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 171
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v1, v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "com.android.contacts"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-boolean v8, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 173
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 174
    const-string v5, "sync_all"

    iget-boolean v6, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 175
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "accounts":[Ljava/lang/Object;
    .end local v2    # "am":Ljava/lang/Object;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setSyncOption(I)V
    .locals 4
    .param p1, "o"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 181
    iput p1, p0, Lcom/vkontakte/android/WelcomeActivity;->currentSyncOption:I

    .line 182
    const v0, 0x7f06015d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 183
    const v0, 0x7f060161

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-ne p1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 184
    const v0, 0x7f060163

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 185
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_3
    return-void

    :cond_0
    move v1, v3

    .line 182
    goto :goto_0

    :cond_1
    move v1, v3

    .line 183
    goto :goto_1

    :cond_2
    move v1, v3

    .line 184
    goto :goto_2

    .line 187
    :pswitch_0
    iput-boolean v2, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    .line 188
    iput-boolean v2, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    goto :goto_3

    .line 191
    :pswitch_1
    iput-boolean v3, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    .line 192
    iput-boolean v2, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    goto :goto_3

    .line 195
    :pswitch_2
    iput-boolean v3, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    goto :goto_3

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private writePrefs()V
    .locals 6

    .prologue
    .line 141
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "welcome_screen_shown"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->hideTitle()V

    .line 26
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/WelcomeActivity;->requestWindowFeature(I)Z

    .line 28
    const v5, 0x7f03004c

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->setContentView(I)V

    .line 29
    iget-object v5, p0, Lcom/vkontakte/android/WelcomeActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v5}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 31
    const v5, 0x7f060159

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewFlipper;

    iput-object v5, p0, Lcom/vkontakte/android/WelcomeActivity;->flipper:Landroid/widget/ViewFlipper;

    .line 33
    const v5, 0x7f06015a

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ExTextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0900ce

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ExTextView;->setHTML(Ljava/lang/String;)V

    .line 37
    const-string v5, "syncsettings"

    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.vkontakte.android.SYNC_SETTINGS"

    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    :cond_0
    iput v7, p0, Lcom/vkontakte/android/WelcomeActivity;->page:I

    .line 39
    iput-boolean v7, p0, Lcom/vkontakte/android/WelcomeActivity;->syncSettingsMode:Z

    .line 42
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/WelcomeActivity;->flipper:Landroid/widget/ViewFlipper;

    iget v6, p0, Lcom/vkontakte/android/WelcomeActivity;->page:I

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 45
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "sync_all"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    .line 46
    iput-boolean v8, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    .line 48
    :try_start_0
    const-string v5, "android.accounts.AccountManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "get"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 49
    .local v2, "am":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getAccountsByType"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.vkontakte.account"

    aput-object v10, v6, v9

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 50
    .local v1, "accounts":[Ljava/lang/Object;
    array-length v5, v1

    if-nez v5, :cond_2

    .line 51
    const-string v5, "android.accounts.Account"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/vkontakte/android/Global;->myName:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "com.vkontakte.account"

    aput-object v10, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "account":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "addAccountExplicitly"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Landroid/os/Bundle;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 53
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v6, v9

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/Object;

    .end local v1    # "accounts":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object v0, v1, v5

    .line 56
    .end local v0    # "account":Ljava/lang/Object;
    .restart local v1    # "accounts":[Ljava/lang/Object;
    :cond_2
    const-class v5, Landroid/content/ContentResolver;

    const-string v6, "getSyncAutomatically"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 57
    const/4 v6, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v1, v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "com.android.contacts"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 56
    iput-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "accounts":[Ljava/lang/Object;
    .end local v2    # "am":Ljava/lang/Object;
    :goto_0
    const-string v5, "sync_all"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncSettingsMode:Z

    if-nez v5, :cond_3

    .line 63
    iput-boolean v8, p0, Lcom/vkontakte/android/WelcomeActivity;->hasSyncAPI:Z

    .line 66
    :cond_3
    const-string v5, "sync_all"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 67
    const v5, 0x7f060161

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 73
    :goto_1
    invoke-static {p0}, Lcom/vkontakte/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/WelcomeActivity;->currentSyncOption:I

    .line 75
    const v5, 0x7f06015c

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/WelcomeActivity$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/WelcomeActivity$1;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v5, 0x7f060160

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/WelcomeActivity$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/WelcomeActivity$2;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v5, 0x7f060162

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/WelcomeActivity$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/WelcomeActivity$3;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v5, 0x7f060166

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/WelcomeActivity$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/WelcomeActivity$4;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v5, 0x7f060165

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/WelcomeActivity$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/WelcomeActivity$5;-><init>(Lcom/vkontakte/android/WelcomeActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-boolean v5, p0, Lcom/vkontakte/android/WelcomeActivity;->syncSettingsMode:Z

    if-nez v5, :cond_4

    .line 134
    invoke-direct {p0}, Lcom/vkontakte/android/WelcomeActivity;->disablePrev()V

    .line 136
    :cond_4
    invoke-direct {p0}, Lcom/vkontakte/android/WelcomeActivity;->writePrefs()V

    .line 137
    return-void

    .line 58
    :catch_0
    move-exception v4

    .line 59
    .local v4, "x":Ljava/lang/Exception;
    iput-boolean v8, p0, Lcom/vkontakte/android/WelcomeActivity;->hasSyncAPI:Z

    goto/16 :goto_0

    .line 69
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_5
    const v5, 0x7f06015d

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iget-boolean v6, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    if-eqz v6, :cond_6

    move v6, v7

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 70
    const v5, 0x7f060161

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iget-boolean v6, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    if-eqz v6, :cond_7

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 71
    const v5, 0x7f060163

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iget-boolean v6, p0, Lcom/vkontakte/android/WelcomeActivity;->syncAll:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/vkontakte/android/WelcomeActivity;->syncEnabled:Z

    if-nez v6, :cond_8

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    :cond_6
    move v6, v8

    .line 69
    goto :goto_2

    :cond_7
    move v6, v8

    .line 70
    goto :goto_3

    :cond_8
    move v7, v8

    .line 71
    goto :goto_4
.end method
