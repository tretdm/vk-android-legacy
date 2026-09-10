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
    .line 185
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$14;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$200(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    .line 189
    const/4 v0, 0x1

    return v0
.end method
