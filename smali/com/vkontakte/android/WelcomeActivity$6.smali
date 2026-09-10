.class Lcom/vkontakte/android/WelcomeActivity$6;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/WelcomeActivity$6;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$6;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-static {v1}, Lcom/vkontakte/android/WelcomeActivity;->access$100(Lcom/vkontakte/android/WelcomeActivity;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "option"

    iget-object v2, p0, Lcom/vkontakte/android/WelcomeActivity$6;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    iget v2, v2, Lcom/vkontakte/android/WelcomeActivity;->currentSyncOption:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$6;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/WelcomeActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    iget-object v1, p0, Lcom/vkontakte/android/WelcomeActivity$6;->this$0:Lcom/vkontakte/android/WelcomeActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/WelcomeActivity;->finish()V

    .line 88
    return-void
.end method
