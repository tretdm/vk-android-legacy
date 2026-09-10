.class Lcom/vkontakte/android/SettingsActivity$16;
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
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$16;->this$0:Lcom/vkontakte/android/SettingsActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$16;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const-class v2, Lcom/vkontakte/android/SettingsNetworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$16;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    const/4 v1, 0x1

    return v1
.end method
