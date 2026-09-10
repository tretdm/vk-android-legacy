.class Lcom/vkontakte/android/SettingsAdvancedActivity$3$1;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsAdvancedActivity$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$3;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsAdvancedActivity$3;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$3;

    iput-object p2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1;->val$dlg:Landroid/app/ProgressDialog;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clear()V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1;->this$1:Lcom/vkontakte/android/SettingsAdvancedActivity$3;

    invoke-static {v0}, Lcom/vkontakte/android/SettingsAdvancedActivity$3;->access$0(Lcom/vkontakte/android/SettingsAdvancedActivity$3;)Lcom/vkontakte/android/SettingsAdvancedActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1;

    iget-object v2, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1;-><init>(Lcom/vkontakte/android/SettingsAdvancedActivity$3$1;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SettingsAdvancedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method
