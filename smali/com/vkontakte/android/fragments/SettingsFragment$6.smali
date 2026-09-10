.class Lcom/vkontakte/android/fragments/SettingsFragment$6;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$6;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 112
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 113
    const/4 v0, 0x1

    return v0
.end method
