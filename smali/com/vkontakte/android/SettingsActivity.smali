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
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/vkontakte/android/SettingsActivity;->confirmLogout()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd8Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method private confirmLogout()V
    .locals 3

    .prologue
    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 240
    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/SettingsActivity$12;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsActivity$12;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 258
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 259
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 261
    return-void
.end method

.method private updateSyncLabel(I)V
    .locals 2
    .param p1, "syncSetting"    # I

    .prologue
    .line 208
    const-string v1, "sync"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 209
    .local v0, "pref":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 211
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 212
    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 215
    :pswitch_1
    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 218
    :pswitch_2
    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 221
    :pswitch_3
    const v1, 0x7f0900d6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 209
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
    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 229
    const-string v0, "option"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 231
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    new-instance v6, Lcom/vkontakte/android/CustomTitleActivityImpl;

    const v7, 0x7f030054

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v8}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v6, p0, Lcom/vkontakte/android/SettingsActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 41
    iget-object v6, p0, Lcom/vkontakte/android/SettingsActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v6}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onCreate()V

    .line 42
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 44
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xb

    if-ge v6, v7, :cond_5

    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->requestWindowFeature(I)Z

    .line 58
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v6, 0x7f050003

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->addPreferencesFromResource(I)V

    .line 61
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xb

    if-ge v6, v7, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x7

    const v8, 0x7f030054

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setFeatureInt(II)V

    .line 63
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, "backBtn":Landroid/widget/ImageView;
    const v6, 0x7f0200bd

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v2, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x10

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 69
    const v6, 0x7f060183

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 70
    const v6, 0x7f060180

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/SettingsActivity$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/SettingsActivity$2;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .end local v1    # "backBtn":Landroid/widget/ImageView;
    .end local v2    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v6, "logOut"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 79
    .local v3, "pref":Landroid/preference/Preference;
    sget-object v6, Lcom/vkontakte/android/Global;->myName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v6, Lcom/vkontakte/android/SettingsActivity$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$3;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string v6, "sync"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 88
    invoke-static {p0}, Lcom/vkontakte/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 89
    new-instance v6, Lcom/vkontakte/android/SettingsActivity$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$4;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    const-string v6, "newsBanned"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 99
    new-instance v6, Lcom/vkontakte/android/SettingsActivity$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$5;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    const-string v6, "enableC2DM"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 108
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_1

    .line 109
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 110
    const v6, 0x7f09012f

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 111
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 112
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .end local v3    # "pref":Landroid/preference/Preference;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    const-string v6, "updateInterval"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 114
    .restart local v3    # "pref":Landroid/preference/Preference;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 115
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 119
    :cond_1
    const-string v6, "stopc2dm"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 120
    if-eqz v3, :cond_2

    new-instance v6, Lcom/vkontakte/android/SettingsActivity$6;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$6;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 129
    :cond_2
    const-string v6, "startc2dm"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_3

    new-instance v6, Lcom/vkontakte/android/SettingsActivity$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$7;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    :cond_3
    const-string v6, "network"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 135
    new-instance v6, Lcom/vkontakte/android/SettingsActivity$13;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$13;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    const-string v6, "advanced"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 139
    new-instance v6, Lcom/vkontakte/android/SettingsActivity$8;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$8;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    const v6, 0x7f060182

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 148
    const v6, 0x7f060182

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09000e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 150
    :cond_4
    const-string v6, "dnd_cancel"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    .line 152
    const-string v6, "dnd_hour"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    .line 153
    new-instance v6, Lcom/vkontakte/android/SettingsActivity$9;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$9;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    const-string v6, "dnd_8hours"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->dnd8Pref:Landroid/preference/Preference;

    .line 167
    new-instance v6, Lcom/vkontakte/android/SettingsActivity$10;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$10;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    iget-object v6, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    new-instance v7, Lcom/vkontakte/android/SettingsActivity$11;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/SettingsActivity$11;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    iget-object v6, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "dnd_end"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 192
    .local v4, "t":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_6

    .line 193
    iget-object v6, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901a9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0x3e8

    div-long v11, v4, v11

    long-to-int v11, v11

    invoke-static {v11}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    const-string v6, "cat_notify"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    const-string v6, "cat_notify"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/vkontakte/android/SettingsActivity;->dnd8Pref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 204
    const v6, 0x7f060182

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 205
    return-void

    .line 47
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v4    # "t":J
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getActionBar"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "b":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setDisplayHomeAsUpEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const v6, 0x102002c

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-instance v7, Lcom/vkontakte/android/SettingsActivity$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/SettingsActivity$1;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 55
    .end local v0    # "b":Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 197
    .restart local v3    # "pref":Landroid/preference/Preference;
    .restart local v4    # "t":J
    :cond_6
    const-string v6, "cat_notify"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method
