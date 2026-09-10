.class Lcom/vkontakte/android/NotificationActivity$3;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationActivity;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkontakte/android/NotificationActivity$3;->this$0:Lcom/vkontakte/android/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/vkontakte/android/NotificationActivity$3;->this$0:Lcom/vkontakte/android/NotificationActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "link"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/NotificationActivity$3;->this$0:Lcom/vkontakte/android/NotificationActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/NotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    iget-object v1, p0, Lcom/vkontakte/android/NotificationActivity$3;->this$0:Lcom/vkontakte/android/NotificationActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationActivity;->access$100(Lcom/vkontakte/android/NotificationActivity;)V

    .line 35
    iget-object v1, p0, Lcom/vkontakte/android/NotificationActivity$3;->this$0:Lcom/vkontakte/android/NotificationActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NotificationActivity;->finish()V

    .line 36
    return-void
.end method
