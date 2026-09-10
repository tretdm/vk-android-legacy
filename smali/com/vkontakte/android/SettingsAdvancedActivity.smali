.class public Lcom/vkontakte/android/SettingsAdvancedActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsAdvancedActivity.java"


# instance fields
.field impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

.field private initialCacheLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsAdvancedActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 137
    const-string v2, "imgCacheLocation"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "loc":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity;->initialCacheLocation:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 143
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/SettingsAdvancedActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/SettingsAdvancedActivity$5;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 154
    .end local v0    # "dlg":Landroid/app/ProgressDialog;
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x7

    const/4 v8, -0x2

    const v11, 0x7f060182

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 33
    new-instance v5, Lcom/vkontakte/android/CustomTitleActivityImpl;

    const v6, 0x7f030054

    invoke-direct {v5, p0, v6, v10}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v5, p0, Lcom/vkontakte/android/SettingsAdvancedActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 34
    iget-object v5, p0, Lcom/vkontakte/android/SettingsAdvancedActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v5}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onCreate()V

    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 36
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "imgCacheLocation"

    const-string v6, "internal"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/SettingsAdvancedActivity;->initialCacheLocation:Ljava/lang/String;

    .line 38
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/SettingsAdvancedActivity;->requestWindowFeature(I)Z

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v5, 0x7f050004

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsAdvancedActivity;->addPreferencesFromResource(I)V

    .line 44
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    if-ge v5, v6, :cond_4

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f030054

    invoke-virtual {v5, v9, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 46
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, "backBtn":Landroid/widget/ImageView;
    const v5, 0x7f0200bd

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v2, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 52
    const v5, 0x7f060183

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 53
    const v5, 0x7f060180

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/SettingsAdvancedActivity$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsAdvancedActivity$1;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .end local v1    # "backBtn":Landroid/widget/ImageView;
    .end local v2    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 74
    const-string v5, "sendByEnter"

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 75
    .local v3, "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_1
    sget-boolean v5, Lcom/vkontakte/android/Global;->maybeTablet:Z

    if-nez v5, :cond_2

    .line 79
    const-string v5, "forceTabletUI"

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 80
    .restart local v3    # "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_2
    const-string v5, "clearImageCache"

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 85
    .restart local v3    # "pref":Landroid/preference/Preference;
    new-instance v5, Lcom/vkontakte/android/SettingsAdvancedActivity$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/SettingsAdvancedActivity$3;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    const-string v5, "clearAudioCache"

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 101
    new-instance v5, Lcom/vkontakte/android/SettingsAdvancedActivity$4;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/SettingsAdvancedActivity$4;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 129
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 130
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901a2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 133
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 134
    return-void

    .line 62
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getActionBar"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "b":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setDisplayHomeAsUpEnabled"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const v5, 0x102002c

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    new-instance v6, Lcom/vkontakte/android/SettingsAdvancedActivity$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsAdvancedActivity$2;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 70
    .end local v0    # "b":Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method
