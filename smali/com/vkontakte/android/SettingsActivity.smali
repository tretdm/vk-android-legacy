.class public Lcom/vkontakte/android/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
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

.field private impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/vkontakte/android/SettingsActivity;->confirmLogout()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd8Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method private confirmLogout()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 202
    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 203
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/SettingsActivity$9;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsActivity$9;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 211
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 212
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 214
    return-void
.end method

.method private updateSyncLabel(I)V
    .locals 2
    .param p1, "syncSetting"    # I

    .prologue
    .line 170
    const-string v1, "sync"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 171
    .local v0, "pref":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 173
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 174
    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 177
    :pswitch_1
    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 180
    :pswitch_2
    const v1, 0x7f0900d3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 183
    :pswitch_3
    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 171
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
    .line 189
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 190
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 191
    const-string v0, "option"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 193
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f060197

    const v5, 0x7f03004d

    const/4 v4, 0x7

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 37
    new-instance v3, Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-direct {v3, p0, v5, v9}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 38
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v3}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onCreate()V

    .line 39
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 42
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/SettingsActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 50
    const-string v3, "logOut"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 51
    .local v0, "pref":Landroid/preference/Preference;
    sget-object v3, Lcom/vkontakte/android/Global;->myName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$1;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    const-string v3, "sync"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 60
    invoke-static {p0}, Lcom/vkontakte/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 61
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$2;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    const-string v3, "enableC2DM"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 71
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 72
    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 73
    const v3, 0x7f09012e

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 74
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 75
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "pref":Landroid/preference/Preference;
    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 76
    const-string v3, "updateInterval"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 77
    .restart local v0    # "pref":Landroid/preference/Preference;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 82
    :cond_0
    const-string v3, "stopc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$3;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    :cond_1
    const-string v3, "startc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_2

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$4;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    
    .line 96
    :cond_2
    const-string v3, "network"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0
    
    .line 97
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$10;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$10;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 101
    const-string v3, "advanced"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 102
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$5;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09000e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 112
    const-string v3, "dnd_cancel"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    .line 114
    const-string v3, "dnd_hour"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    .line 115
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$6;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    const-string v3, "dnd_8hours"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd8Pref:Landroid/preference/Preference;

    .line 129
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$7;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    new-instance v4, Lcom/vkontakte/android/SettingsActivity$8;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/SettingsActivity$8;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 153
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "dnd_end"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 154
    .local v1, "t":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 155
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901a8

    new-array v6, v7, [Ljava/lang/Object;

    const-wide/16 v7, 0x3e8

    div-long v7, v1, v7

    long-to-int v7, v7

    invoke-static {v7}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/vkontakte/android/SettingsActivity;->dnd8Pref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 166
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 167
    return-void

    .line 159
    :cond_3
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
