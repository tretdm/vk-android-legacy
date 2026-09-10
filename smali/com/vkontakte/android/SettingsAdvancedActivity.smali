.class public Lcom/vkontakte/android/SettingsAdvancedActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "SettingsAdvancedActivity.java"


# instance fields
.field private initialCacheLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "imgCacheLocation"

    const-string v3, "internal"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity;->initialCacheLocation:Ljava/lang/String;

    .line 35
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 42
    const-string v2, "sendByEnter"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 43
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 46
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    sget-boolean v2, Lcom/vkontakte/android/Global;->maybeTablet:Z

    if-nez v2, :cond_1

    .line 47
    const-string v2, "forceTabletUI"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 48
    .restart local v0    # "pref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 52
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_1
    const-string v2, "clearImageCache"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 53
    .restart local v0    # "pref":Landroid/preference/Preference;
    new-instance v2, Lcom/vkontakte/android/SettingsAdvancedActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsAdvancedActivity$1;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    const-string v2, "clearAudioCache"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 69
    new-instance v2, Lcom/vkontakte/android/SettingsAdvancedActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SettingsAdvancedActivity$2;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 98
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 121
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsAdvancedActivity;->onBackPressed()V

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
