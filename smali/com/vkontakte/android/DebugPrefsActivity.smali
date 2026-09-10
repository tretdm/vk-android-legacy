.class public Lcom/vkontakte/android/DebugPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "DebugPrefsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->addPreferencesFromResource(I)V

    .line 17
    const-string v1, "logToFile"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 18
    .local v0, "pref":Landroid/preference/Preference;
    sget-object v1, Lcom/vkontakte/android/Log;->logFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 20
    const-string v1, "\u0423\u0436\u0435 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 33
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance v1, Lcom/vkontakte/android/DebugPrefsActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DebugPrefsActivity$1;-><init>(Lcom/vkontakte/android/DebugPrefsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method
