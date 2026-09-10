.class Lcom/vkontakte/android/SettingsAdvancedActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsAdvancedActivity$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$1;

.field final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsAdvancedActivity$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$1$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$1;

    iput-object p2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$1$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clear()V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$1$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$1;

    iget-object v0, v0, Lcom/vkontakte/android/SettingsAdvancedActivity$1;->this$0:Lcom/vkontakte/android/SettingsAdvancedActivity;

    new-instance v1, Lcom/vkontakte/android/SettingsAdvancedActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SettingsAdvancedActivity$1$1$1;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity$1$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SettingsAdvancedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
