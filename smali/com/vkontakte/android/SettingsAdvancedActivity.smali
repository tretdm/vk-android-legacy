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
    .line 16
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
    .line 65
    const-string v2, "imgCacheLocation"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "loc":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity;->initialCacheLocation:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 71
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/SettingsAdvancedActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/SettingsAdvancedActivity$2;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 82
    .end local v0    # "dlg":Landroid/app/ProgressDialog;
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f060197

    const v6, 0x7f03004d

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 23
    new-instance v2, Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-direct {v2, p0, v6, v4}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 24
    iget-object v2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onCreate()V

    .line 25
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 26
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "imgCacheLocation"

    const-string v3, "internal"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity;->initialCacheLocation:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsAdvancedActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 37
    const-string v2, "sendByEnter"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 38
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 42
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    const-string v2, "clearImageCache"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 43
    .restart local v0    # "pref":Landroid/preference/Preference;
    new-instance v2, Lcom/vkontakte/android/SettingsAdvancedActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsAdvancedActivity$1;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 59
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901a1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 61
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 62
    return-void
.end method
