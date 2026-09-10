.class Lcom/vkontakte/android/SettingsActivity$9;
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
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$9;->this$0:Lcom/vkontakte/android/SettingsActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$9;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/MainActivity;->showAbout(Landroid/content/Context;)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method
