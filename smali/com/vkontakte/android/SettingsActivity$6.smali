.class Lcom/vkontakte/android/SettingsActivity$6;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$6;->this$0:Lcom/vkontakte/android/SettingsActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v10, 0x1

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long v1, v3, v5

    .line 118
    .local v1, "t":J
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity$6;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/SettingsActivity;->access$1(Lcom/vkontakte/android/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "dnd_end"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity$6;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const-string v4, "cat_notify"

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 120
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    const-string v3, "dnd_cancel"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity$6;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/SettingsActivity;->access$2(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 121
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity$6;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/SettingsActivity;->access$2(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/SettingsActivity$6;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901a8

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    div-long v8, v1, v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity$6;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/SettingsActivity;->access$3(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    iget-object v3, p0, Lcom/vkontakte/android/SettingsActivity$6;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/SettingsActivity;->access$4(Lcom/vkontakte/android/SettingsActivity;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    return v10
.end method
