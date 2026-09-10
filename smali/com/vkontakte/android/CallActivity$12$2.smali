.class Lcom/vkontakte/android/CallActivity$12$2;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VoipPing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/CallActivity$12;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$12$2;->this$1:Lcom/vkontakte/android/CallActivity$12;

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallActivity$12$2;)Lcom/vkontakte/android/CallActivity$12;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12$2;->this$1:Lcom/vkontakte/android/CallActivity$12;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 678
    return-void
.end method

.method public onCamera(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 702
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12$2;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$46(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12$2;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/CallActivity$12$2$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/CallActivity$12$2$1;-><init>(Lcom/vkontakte/android/CallActivity$12$2;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onHangup()V
    .locals 4

    .prologue
    .line 692
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$12$2;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewsWidget;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ShowError"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v1, "err_text"

    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$12$2;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$12$2;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/CallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 696
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$12$2;->this$1:Lcom/vkontakte/android/CallActivity$12;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$12;->access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/CallActivity;->finish()V

    .line 697
    return-void
.end method

.method public onReceived()V
    .locals 0

    .prologue
    .line 683
    return-void
.end method

.method public onReply(Ljava/lang/String;)V
    .locals 0
    .param p1, "stream"    # Ljava/lang/String;

    .prologue
    .line 687
    return-void
.end method

.method public success()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method
