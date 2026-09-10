.class Lcom/vkontakte/android/SettingsAdvancedActivity$5;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsAdvancedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsAdvancedActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$5;->this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;
    const-class v1, Lcom/vkontakte/android/SettingsNetworkActivity;
    
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    
    invoke-virtual {p0, v0}, Landroid/context/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method
