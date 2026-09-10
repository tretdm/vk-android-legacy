.class Lcom/vkontakte/android/SettingsAdvancedActivity$2$1$1;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1$1;->this$2:Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1$1;->this$2:Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;

    iget-object v0, v0, Lcom/vkontakte/android/SettingsAdvancedActivity$2$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 72
    return-void
.end method
