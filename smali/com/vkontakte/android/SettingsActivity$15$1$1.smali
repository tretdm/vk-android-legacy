.class Lcom/vkontakte/android/SettingsActivity$15$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsActivity$15$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsActivity$15$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    iput-object p2, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->val$dlg:Landroid/app/ProgressDialog;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 327
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity$15$1;->access$0(Lcom/vkontakte/android/SettingsActivity$15$1;)Lcom/vkontakte/android/SettingsActivity$15;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity$15;->access$0(Lcom/vkontakte/android/SettingsActivity$15;)Lcom/vkontakte/android/SettingsActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SettingsActivity;->setResult(I)V

    .line 328
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity$15$1;->access$0(Lcom/vkontakte/android/SettingsActivity$15$1;)Lcom/vkontakte/android/SettingsActivity$15;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity$15;->access$0(Lcom/vkontakte/android/SettingsActivity$15;)Lcom/vkontakte/android/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/SettingsActivity;->finish()V

    .line 329
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity$15$1;->access$0(Lcom/vkontakte/android/SettingsActivity$15$1;)Lcom/vkontakte/android/SettingsActivity$15;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity$15;->access$0(Lcom/vkontakte/android/SettingsActivity$15;)Lcom/vkontakte/android/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity$15$1;->access$0(Lcom/vkontakte/android/SettingsActivity$15$1;)Lcom/vkontakte/android/SettingsActivity$15;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/SettingsActivity$15;->access$0(Lcom/vkontakte/android/SettingsActivity$15;)Lcom/vkontakte/android/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 332
    return-void
.end method
