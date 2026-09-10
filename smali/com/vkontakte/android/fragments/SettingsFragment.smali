.class public Lcom/vkontakte/android/fragments/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"


# static fields
.field public static final REQUEST_SYNC_SETTINGS:I = 0xcb


# instance fields
.field private cancelDndPref:Landroid/preference/Preference;

.field private dnd1Pref:Landroid/preference/Preference;

.field private dnd8Pref:Landroid/preference/Preference;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/SettingsFragment;)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->confirmLogout()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/SettingsFragment;Z)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SettingsFragment;->updatePushStateDelayed(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd1Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd8Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method private confirmLogout()V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    const v1, 0x7f0600ba

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 225
    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 226
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/fragments/SettingsFragment$15;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$15;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 247
    return-void
.end method

.method private updatePushStateDelayed(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    goto :goto_0
.end method

.method private updateSyncLabel(I)V
    .locals 4
    .param p1, "syncSetting"    # I

    .prologue
    .line 250
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update sync label "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "sync"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 252
    .local v0, "pref":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 254
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 255
    const v1, 0x7f0600b7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 258
    :pswitch_1
    const v1, 0x7f0600b1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 261
    :pswitch_2
    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 264
    :pswitch_3
    const v1, 0x7f0600b5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 271
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 272
    const-string v0, "option"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/SettingsFragment;->updateSyncLabel(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 211
    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    move-object v0, p1

    .line 212
    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 213
    const v0, 0x7f06001a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 214
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 49
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->addPreferencesFromResource(I)V

    .line 50
    const-string v3, "logOut"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 51
    .local v0, "pref":Landroid/preference/Preference;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "username"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$1;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    const-string v3, "sync"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->updateSyncLabel(I)V

    .line 61
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$2;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    const-string v3, "newsBanned"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 71
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$3;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    const-string v3, "enableC2DM"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 80
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$4;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    const-string v3, "stopc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$5;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    :cond_0
    const-string v3, "startc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$6;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    :cond_1
    const-string v3, "advanced"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 110
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$7;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    
   .line 115
    const-string v3, "network"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 116
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$16;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$16;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 118
    const-string v3, "blacklist"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 119
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$8;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 127
    const-string v3, "about"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 128
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$9;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$9;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    const-string v3, "restart"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_2

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$10;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$10;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    :cond_2
    const-string v3, "friendsOrderNew"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_3

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$11;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$11;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    :cond_3

    .line 152

    :goto_0
    const-string v3, "dnd_cancel"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    .line 159
    const-string v3, "dnd_hour"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd1Pref:Landroid/preference/Preference;

    .line 160
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$12;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$12;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    const-string v3, "dnd_8hours"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd8Pref:Landroid/preference/Preference;

    .line 174
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$13;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$13;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 187
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    new-instance v6, Lcom/vkontakte/android/fragments/SettingsFragment$14;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$14;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 198
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "dnd_end"

    const-wide/16 v7, 0x0

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 199
    .local v1, "t":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-lez v3, :cond_6

    .line 200
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060142

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long v8, v1, v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd8Pref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    :goto_1
    return-void

    .end local v1    # "t":J
    :cond_5
    move v3, v5

    .line 152
    goto/16 :goto_0

    .line 204
    .restart local v1    # "t":J
    :cond_6
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "view":Landroid/view/View;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 219
    return-object v0
.end method
