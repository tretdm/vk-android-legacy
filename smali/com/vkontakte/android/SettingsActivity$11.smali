.class Lcom/vkontakte/android/SettingsActivity$11;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$11;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$11;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity;->access$200(Lcom/vkontakte/android/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dnd_end"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$11;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const-string v2, "cat_notify"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 151
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$11;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity;->access$300(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$11;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity;->access$400(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 153
    const/4 v1, 0x1

    return v1
.end method
