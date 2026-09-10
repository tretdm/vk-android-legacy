.class Lcom/vkontakte/android/SettingsActivity$12$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsActivity$12$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/SettingsActivity$12$1;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsActivity$12$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$12$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$12$1;

    iput-object p2, p0, Lcom/vkontakte/android/SettingsActivity$12$1$1;->val$dlg:Landroid/app/ProgressDialog;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$12$1$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$12$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$12$1;

    invoke-static {v0}, Lcom/vkontakte/android/SettingsActivity$12$1;->access$0(Lcom/vkontakte/android/SettingsActivity$12$1;)Lcom/vkontakte/android/SettingsActivity$12;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/SettingsActivity$12;->access$0(Lcom/vkontakte/android/SettingsActivity$12;)Lcom/vkontakte/android/SettingsActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SettingsActivity;->setResult(I)V

    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/SettingsActivity$12$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$12$1;

    invoke-static {v0}, Lcom/vkontakte/android/SettingsActivity$12$1;->access$0(Lcom/vkontakte/android/SettingsActivity$12$1;)Lcom/vkontakte/android/SettingsActivity$12;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/SettingsActivity$12;->access$0(Lcom/vkontakte/android/SettingsActivity$12;)Lcom/vkontakte/android/SettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/SettingsActivity;->finish()V

    .line 254
    return-void
.end method
