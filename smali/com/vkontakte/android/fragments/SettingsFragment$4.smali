.class Lcom/vkontakte/android/fragments/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$4;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 84
    .local v0, "val":Z
    iget-object v1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$4;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$1(Lcom/vkontakte/android/fragments/SettingsFragment;Z)V

    .line 85
    const/4 v1, 0x1

    return v1
.end method
