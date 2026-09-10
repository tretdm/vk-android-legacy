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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsActivity$15$1;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    iget-object v1, v1, Lcom/vkontakte/android/SettingsActivity$15$1;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 318
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    iget-object v1, v1, Lcom/vkontakte/android/SettingsActivity$15$1;->this$1:Lcom/vkontakte/android/SettingsActivity$15;

    iget-object v1, v1, Lcom/vkontakte/android/SettingsActivity$15;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/SettingsActivity;->setResult(I)V

    .line 319
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    iget-object v1, v1, Lcom/vkontakte/android/SettingsActivity$15$1;->this$1:Lcom/vkontakte/android/SettingsActivity$15;

    iget-object v1, v1, Lcom/vkontakte/android/SettingsActivity$15;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/SettingsActivity;->finish()V

    .line 320
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    iget-object v1, v1, Lcom/vkontakte/android/SettingsActivity$15$1;->this$1:Lcom/vkontakte/android/SettingsActivity$15;

    iget-object v1, v1, Lcom/vkontakte/android/SettingsActivity$15;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/vkontakte/android/SettingsActivity$15$1$1;->this$2:Lcom/vkontakte/android/SettingsActivity$15$1;

    iget-object v1, v1, Lcom/vkontakte/android/SettingsActivity$15$1;->this$1:Lcom/vkontakte/android/SettingsActivity$15;

    iget-object v1, v1, Lcom/vkontakte/android/SettingsActivity$15;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method
