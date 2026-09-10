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

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 332
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/SettingsActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/SettingsActivity;->confirmLogout()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/SettingsActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/SettingsActivity;->showDndDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/SettingsActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/SettingsActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/SettingsActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/SettingsActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SettingsActivity;->updateRingtoneName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/SettingsActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/SettingsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/SettingsActivity;->setDnd(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/SettingsActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/SettingsActivity;->showTimePicker()V

    return-void
.end method

.method private confirmLogout()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d015b

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/SettingsActivity$15;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsActivity$15;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 330
    return-void
.end method

.method private setDnd(J)V
    .locals 9
    .param p1, "t"    # J

    .prologue
    .line 248
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dnd_end"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    const-string v1, "cat_notify"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 250
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    const-string v1, "dnd_cancel"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ae

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

    .line 252
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    return-void
.end method

.method private showDndDialog()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07005c

    new-instance v2, Lcom/vkontakte/android/SettingsActivity$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsActivity$13;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 208
    return-void
.end method

.method private showTimePicker()V
    .locals 7

    .prologue
    .line 213
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 214
    .local v6, "date":Ljava/util/Date;
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/vkontakte/android/SettingsActivity$14;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsActivity$14;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 244
    .local v0, "dlg":Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 245
    return-void
.end method

.method private updateRingtoneName(Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v4, "notifyRingtone"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 257
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_2

    move-object v3, p1

    .line 258
    .local v3, "rt":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 259
    .local v2, "ringtone":Landroid/media/Ringtone;
    const-string v0, "Unknown"

    .line 260
    .local v0, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 261
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    return-void

    .line 257
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

    .line 261
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "ringtone":Landroid/media/Ringtone;
    .restart local v3    # "rt":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0d02bb

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateSyncLabel(I)V
    .locals 2
    .param p1, "syncSetting"    # I

    .prologue
    .line 274
    const-string v1, "sync"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 275
    .local v0, "pref":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 277
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 278
    const v1, 0x7f0d031e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 281
    :pswitch_1
    const v1, 0x7f0d031a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 284
    :pswitch_2
    const v1, 0x7f0d031c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 287
    :pswitch_3
    const v1, 0x7f0d031f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 275
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
    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 295
    const-string v0, "option"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 297
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->addPreferencesFromResource(I)V

    .line 47
    const-string v3, "logOut"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 48
    .local v0, "pref":Landroid/preference/Preference;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3, v10, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "username"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$1;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 56
    const-string v3, "sync"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 57
    invoke-static {p0}, Lcom/vkontakte/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->updateSyncLabel(I)V

    .line 58
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$2;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    const-string v3, "newsBanned"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 68
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$3;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    const-string v3, "changePassword"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 77
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$4;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    const-string v3, "blacklist"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 86
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$5;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    const-string v3, "stopc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$6;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 105
    :cond_0
    const-string v3, "startc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$7;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    :cond_1
    const-string v3, "advanced"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 115
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$8;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    const-string v3, "about"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 124
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$9;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$9;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 131
    const-string v3, "useHTTPS"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v10, v5}, Lcom/vkontakte/android/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "forceHTTPS"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 133
    invoke-virtual {p0, v10, v5}, Lcom/vkontakte/android/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "forceHTTPS"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    const v3, 0x7f0d013a

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 137
    :cond_2
    const-string v3, "dnd_cancel"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    .line 139
    const-string v3, "dnd_hour"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    .line 140
    new-instance v3, Lcom/vkontakte/android/SettingsActivity$10;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$10;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    new-instance v6, Lcom/vkontakte/android/SettingsActivity$11;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SettingsActivity$11;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "dnd_end"

    const-wide/16 v7, 0x0

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 158
    .local v1, "t":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-lez v3, :cond_5

    .line 159
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02ae

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long v8, v1, v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/vkontakte/android/SettingsActivity;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :goto_1
    const-string v3, "notifyRingtone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_3

    new-instance v3, Lcom/vkontakte/android/SettingsActivity$12;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SettingsActivity$12;-><init>(Lcom/vkontakte/android/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 178
    invoke-direct {p0, v10}, Lcom/vkontakte/android/SettingsActivity;->updateRingtoneName(Ljava/lang/String;)V

    .line 179
    return-void

    .end local v1    # "t":J
    :cond_4
    move v3, v5

    .line 132
    goto/16 :goto_0

    .line 162
    .restart local v1    # "t":J
    :cond_5
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/vkontakte/android/SettingsActivity;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 266
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsActivity;->onBackPressed()V

    .line 268
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
