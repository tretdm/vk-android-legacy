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
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SettingsFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->confirmLogout()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/SettingsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/SettingsFragment;->updateRingtoneName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SettingsFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->showDndDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SettingsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SettingsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SettingsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd1Pref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/SettingsFragment;J)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SettingsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/SettingsFragment;->setDnd(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SettingsFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->showTimePicker()V

    return-void
.end method

.method private confirmLogout()V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d015b

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/SettingsFragment$20;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$20;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 354
    return-void
.end method

.method private setDnd(J)V
    .locals 9
    .param p1, "t"    # J

    .prologue
    .line 296
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dnd_end"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    const-string v1, "cat_notify"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 298
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    const-string v1, "dnd_cancel"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ae

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getResources()Landroid/content/res/Resources;

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

    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    return-void
.end method

.method private showDndDialog()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07005c

    new-instance v2, Lcom/vkontakte/android/fragments/SettingsFragment$16;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$16;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 255
    return-void
.end method

.method private showTimePicker()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 259
    new-array v6, v5, [Z

    aput-boolean v1, v6, v1

    .line 260
    .local v6, "canceled":[Z
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 261
    .local v7, "date":Ljava/util/Date;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/SettingsFragment$17;

    invoke-direct {v2, p0, v6}, Lcom/vkontakte/android/fragments/SettingsFragment$17;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;[Z)V

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 280
    .local v0, "dlg":Landroid/app/TimePickerDialog;
    const/4 v1, -0x1

    const v2, 0x7f0d01cd

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$18;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$18;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 285
    const/4 v1, -0x2

    const v2, 0x7f0d0052

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$19;

    invoke-direct {v3, p0, v6}, Lcom/vkontakte/android/fragments/SettingsFragment$19;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;[Z)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 291
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 292
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0201ea

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 293
    return-void
.end method

.method private updateRingtoneName(Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v4, "notifyRingtone"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 305
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_2

    move-object v3, p1

    .line 306
    .local v3, "rt":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 307
    .local v2, "ringtone":Landroid/media/Ringtone;
    const-string v0, "Unknown"

    .line 308
    .local v0, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 309
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    return-void

    .line 305
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "ringtone":Landroid/media/Ringtone;
    .end local v3    # "rt":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "notifyRingtone"

    const-string v6, "content://settings/system/notification_sound"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 309
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "ringtone":Landroid/media/Ringtone;
    .restart local v3    # "rt":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0d02bb

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateSyncLabel(I)V
    .locals 4
    .param p1, "syncSetting"    # I

    .prologue
    .line 357
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update sync label "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "sync"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 359
    .local v0, "pref":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 361
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 362
    const v1, 0x7f0d031e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 365
    :pswitch_1
    const v1, 0x7f0d031a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 368
    :pswitch_2
    const v1, 0x7f0d031c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 371
    :pswitch_3
    const v1, 0x7f0d031f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 359
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
    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 378
    const/16 v0, 0xcb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 379
    const-string v0, "option"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/SettingsFragment;->updateSyncLabel(I)V

    .line 381
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 316
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 317
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 318
    const v0, 0x7f0d0164

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 319
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    .line 57
    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->addPreferencesFromResource(I)V

    .line 58
    const-string v3, "logOut"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 59
    .local v0, "pref":Landroid/preference/Preference;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3, v11, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "username"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$1;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    const-string v3, "sync"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Auth;->getCurrentSyncOption(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->updateSyncLabel(I)V

    .line 69
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$2;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    const-string v3, "newsBanned"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 79
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$3;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string v3, "changePassword"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 88
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$4;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    const-string v3, "stopc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$5;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    :cond_0
    const-string v3, "startc2dm"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$6;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 116
    :cond_1
    const-string v3, "advanced"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 117
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$7;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 125
    const-string v3, "blacklist"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 126
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$8;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    const-string v3, "about"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 136
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$9;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$9;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    const-string v3, "restart"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_2

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$10;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$10;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    :cond_2
    const-string v3, "friendsOrderNew"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_3

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$11;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$11;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 159
    :cond_3
    const-string v3, "notifyTypes"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_4

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$12;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$12;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 167
    :cond_4
    const-string v3, "notifyRingtone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_5

    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$13;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$13;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    :cond_5
    const-string v3, "useHTTPS"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v11, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "forceHTTPS"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v11, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "forceHTTPS"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 179
    const v3, 0x7f0d013a

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 182
    :cond_6
    const-string v3, "dnd_cancel"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    .line 184
    const-string v3, "dnd_hour"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd1Pref:Landroid/preference/Preference;

    .line 185
    new-instance v3, Lcom/vkontakte/android/fragments/SettingsFragment$14;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$14;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    new-instance v6, Lcom/vkontakte/android/fragments/SettingsFragment$15;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/SettingsFragment$15;-><init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 217
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "dnd_end"

    const-wide/16 v7, 0x0

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 218
    .local v1, "t":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v1, v6

    if-lez v3, :cond_8

    .line 219
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->cancelDndPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02ae

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    div-long v9, v1, v9

    long-to-int v9, v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    const-string v3, "cat_notify"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/SettingsFragment;->dnd1Pref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    :goto_1
    invoke-direct {p0, v11}, Lcom/vkontakte/android/fragments/SettingsFragment;->updateRingtoneName(Ljava/lang/String;)V

    .line 226
    return-void

    .end local v1    # "t":J
    :cond_7
    move v3, v5

    .line 177
    goto :goto_0

    .line 222
    .restart local v1    # "t":J
    :cond_8
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
    .line 322
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, "view":Landroid/view/View;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 324
    return-object v0
.end method
