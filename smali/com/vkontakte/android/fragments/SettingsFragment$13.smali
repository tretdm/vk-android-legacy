.class Lcom/vkontakte/android/fragments/SettingsFragment$13;
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
    .line 168
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$13;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SettingsFragment$13;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$100(Lcom/vkontakte/android/fragments/SettingsFragment;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method
