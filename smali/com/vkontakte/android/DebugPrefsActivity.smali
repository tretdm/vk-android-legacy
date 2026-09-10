.class public Lcom/vkontakte/android/DebugPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "DebugPrefsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->addPreferencesFromResource(I)V

    .line 23
    const-string v1, "terminate"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 24
    .local v0, "pref":Landroid/preference/Preference;
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$1;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 31
    const-string v1, "logToFile"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/vkontakte/android/Log;->logFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 34
    const-string v1, "\u0423\u0436\u0435 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    const-string v1, "bdayTest"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$3;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 72
    const-string v1, "validationTest"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$4;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    return-void

    .line 36
    :cond_0
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$2;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method
