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
    .line 38
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/vkontakte/android/SettingsActivity;->confirmLogout()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/vkontakte/android/SettingsActivity;->showDndDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SettingsActivity;->updateRingtoneName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/SettingsActivity;J)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/SettingsActivity;->setDnd(J)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/vkontakte/android/SettingsActivity;->showTimePicker()V

    return-void
.end method

.method private confirmLogout()V
    .locals 3

    .prologue
    .line 313
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 315
    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/SettingsActivity$15;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsActivity$15;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 336
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 337
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 339
    return-void
.end method

.method private setDnd(J)V
    .locals 9
    .param p1, "t"    # J

    .prologue
    .line 257
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dnd_end"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    const-string v1, "cat_notify"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 259
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    const-string v1, "dnd_cancel"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08015b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    div-long v7, p1, v7

    long-to-int v7, v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    return-void
.end method

.method private showDndDialog()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    const v1, 0x7f0d005a

    new-instance v2, Lcom/vkontakte/android/SettingsActivity$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsActivity$13;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 215
    const v1, 0x7f0801f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 217
    return-void
.end method

.method private showTimePicker()V
    .locals 7

    .prologue
    .line 222
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 223
    .local v6, "date":Ljava/util/Date;
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/vkontakte/android/SettingsActivity$14;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsActivity$14;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    .line 241
    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    .line 223
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 253
    .local v0, "dlg":Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 254
    return-void
.end method

.method private updateRingtoneName(Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v4, "notifyRingtone"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 266
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_2

    move-object v3, p1

    .line 267
    .local v3, "rt":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 268
    .local v2, "ringtone":Landroid/media/Ringtone;
    const-string v0, "Unknown"

    .line 269
    .local v0, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 270
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    return-void

    .line 266
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "ringtone":Landroid/media/Ringtone;
    .end local v3    # "rt":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "notifyRingtone"

    const-string v6, "content://settings/system/notification_sound"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 270
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "ringtone":Landroid/media/Ringtone;
    .restart local v3    # "rt":Ljava/lang/String;
    :cond_3
    const v4, 0x7f08028d

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateSyncLabel(I)V
    .locals 2
    .param p1, "syncSetting"    # I

    .prologue
    .line 283
    const-string v1, "sync"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 284
    .local v0, "pref":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 286
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 290
    :pswitch_1
    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 293
    :pswitch_2
    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 296
    :pswitch_3
    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 284
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
    .line 302
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 303
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 304
    const-string v0, "option"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 306
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 51
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->addPreferencesFromResource(I)V

    .line 56
    const-string v3, "logOut"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 57
    .local v0, "pref":Landroid/preference/Preference;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3, v10, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "username"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$1;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 65
    const-string v3, "sync"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 66
    invoke-static {p0}, Lcom/vkontakte/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 67
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$2;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    const-string v3, "newsBanned"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 77
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$3;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    const-string v3, "changePassword"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 86
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$4;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    const-string v3, "blacklist"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 95
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$5;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    const-string v3, "stopc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$6;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    :cond_0
    const-string v3, "startc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$7;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    :cond_1
    const-string v3, "advanced"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 124
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$8;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    const-string v3, "about"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 133
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$9;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$9;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    #const-string v3, "useHTTPS"

    #invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    #move-result-object v0

    .line 141
    #invoke-virtual {p0, v10, v4}, Lcom/vkontakte/android/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #move-result-object v3

    #const-string v6, "forceHTTPS"

    #invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #move-result v3

    #if-eqz v3, :cond_4

    #move v3, v4

    :goto_0
    #invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    #invoke-virtual {p0, v10, v4}, Lcom/vkontakte/android/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #move-result-object v3

    #const-string v6, "forceHTTPS"

    #invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    #move-result v3
    
    const-string v3, "network"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0
    
    .line 143
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$16;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$16;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    #if-eqz v3, :cond_2

    #.line 143
    #const v3, 0x7f080243

    #invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 146
    #:cond_2
    const-string v3, "dnd_cancel"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    .line 148
    const-string v3, "dnd_hour"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    .line 149
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$10;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$10;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    new-instance v6, Lcom/vkontakte/android/SettingsActivity$11;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$11;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 166
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "dnd_end"

    const-wide/16 v7, 0x0

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 167
    .local v1, "t":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-lez v3, :cond_5

    .line 168
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08015b

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

    .line 169
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    :goto_1
    const-string v3, "notifyRingtone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$12;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$12;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 187
    invoke-direct {p0, v10}, Lcom/vkontakte/android/SettingsActivity;->updateRingtoneName(Ljava/lang/String;)V

    .line 188
    return-void

    .end local v1    # "t":J
    :cond_4
    move v3, v5

    .line 141
    goto/16 :goto_0

    .line 171
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
    .line 275
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->onBackPressed()V

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
