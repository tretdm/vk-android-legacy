.class Lcom/vkontakte/android/SettingsActivity$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$7;->this$0:Lcom/vkontakte/android/SettingsActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$7;->this$0:Lcom/vkontakte/android/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/SettingsActivity$7;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const-class v3, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SettingsActivity;->stopService(Landroid/content/Intent;)Z

    .line 118
    invoke-static {}, Lcom/vkontakte/android/C2DM;->start()V

    .line 119
    const/4 v0, 0x1

    return v0
.end method
