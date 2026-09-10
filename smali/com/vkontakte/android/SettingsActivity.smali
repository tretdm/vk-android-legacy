.class public Lcom/vkontakte/android/SettingsActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/SettingsActivity$AdapterWrapper;
    }
.end annotation


# static fields
.field public static final REQUEST_SYNC_SETTINGS:I = 0xcb

.field public static final RESULT_LOGGED_OUT:I = 0x2


# instance fields
.field private cancelDndPref:Landroid/preference/Preference;

.field private dnd1Pref:Landroid/preference/Preference;

.field private dnd8Pref:Landroid/preference/Preference;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/vkontakte/android/SettingsActivity;->confirmLogout()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd8Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method private confirmLogout()V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    const v1, 0x7f0600ba

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 236
    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/SettingsActivity$12;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsActivity$12;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 257
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 258
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 260
    return-void
.end method

.method private updateSyncLabel(I)V
    .locals 2
    .param p1, "syncSetting"    # I

    .prologue
    .line 204
    const-string v1, "sync"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 205
    .local v0, "pref":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 207
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    const v1, 0x7f0600b7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 211
    :pswitch_1
    const v1, 0x7f0600b1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 214
    :pswitch_2
    const v1, 0x7f0600b3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 217
    :pswitch_3
    const v1, 0x7f0600b5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 224
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 225
    const-string v0, "option"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 227
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 43
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->addPreferencesFromResource(I)V

    .line 48
    const-string v3, "logOut"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 49
    .local v0, "pref":Landroid/preference/Preference;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "username"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$1;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    const-string v3, "sync"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 58
    invoke-static {p0}, Lcom/vkontakte/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 59
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$2;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    const-string v3, "newsBanned"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 69
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$3;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    const-string v3, "blacklist"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 77
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$4;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    const-string v3, "enableC2DM"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 86
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v6, 0x8

    if-ge v3, v6, :cond_0

    .line 87
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 88
    const v3, 0x7f0600f9

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 89
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 90
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    const-string v3, "updateInterval"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 92
    .restart local v0    # "pref":Landroid/preference/Preference;
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 97
    :cond_0
    const-string v3, "stopc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$5;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    :cond_1
    const-string v3, "startc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$6;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    
    .line 110
    :cond_2
    const-string v3, "network"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 112
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$13;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$13;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 116
    const-string v3, "advanced"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 120
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$7;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 125
    const-string v3, "about"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 126
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$8;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    :goto_0
    const-string v3, "dnd_cancel"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    .line 141
    const-string v3, "dnd_hour"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    .line 142
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$9;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$9;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 155
    const-string v3, "dnd_8hours"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd8Pref:Landroid/preference/Preference;

    .line 156
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$10;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$10;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 169
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    new-instance v6, Lcom/vkontakte/android/SettingsActivity$11;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$11;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "dnd_end"

    const-wide/16 v7, 0x0

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 181
    .local v1, "t":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-lez v3, :cond_5

    .line 182
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getResources()Landroid/content/res/Resources;

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

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/vkontakte/android/SettingsActivity;->dnd8Pref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 193
    return-void

    .end local v1    # "t":J
    :cond_4
    move v3, v5

    .line 134
    goto/16 :goto_0

    .line 186
    .restart local v1    # "t":J
    :cond_5
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 196
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->onBackPressed()V

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
