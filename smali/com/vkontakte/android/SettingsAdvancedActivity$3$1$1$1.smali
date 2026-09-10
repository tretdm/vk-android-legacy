.class Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1$1;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1$1;->this$3:Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1$1;->this$3:Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1;

    iget-object v0, v0, Lcom/vkontakte/android/SettingsAdvancedActivity$3$1$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 96
    return-void
.end method
