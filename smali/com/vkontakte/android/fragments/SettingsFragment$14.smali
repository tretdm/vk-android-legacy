.class Lcom/vkontakte/android/fragments/SettingsFragment$14;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$2(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dnd_end"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    const-string v2, "cat_notify"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 191
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$3(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$4(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 193
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$5(Lcom/vkontakte/android/fragments/SettingsFragment;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    const/4 v1, 0x1

    return v1
.end method
