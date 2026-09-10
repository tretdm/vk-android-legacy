.class Lcom/vkontakte/android/CallActivity$11$3;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VoipPing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/CallActivity$11;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallActivity$11$3;)Lcom/vkontakte/android/CallActivity$11;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 585
    return-void
.end method

.method public onCamera(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 626
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$46(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/CallActivity$11$3$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/CallActivity$11$3$2;-><init>(Lcom/vkontakte/android/CallActivity$11$3;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onHangup()V
    .locals 4

    .prologue
    .line 616
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewsWidget;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ShowError"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v2, "err_text"

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$48(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const v1, 0x7f0901ef

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/CallActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/CallActivity;->finish()V

    .line 621
    return-void

    .line 618
    :cond_0
    const v1, 0x7f0901f0

    goto :goto_0
.end method

.method public onReceived()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/CallActivity$11$3$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$11$3$1;-><init>(Lcom/vkontakte/android/CallActivity$11$3;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 593
    return-void
.end method

.method public onReply(Ljava/lang/String;)V
    .locals 4
    .param p1, "stream"    # Ljava/lang/String;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$40(Lcom/vkontakte/android/CallActivity;)V

    .line 602
    new-instance v0, Lcom/vkontakte/android/api/VoipSetDevices;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$20(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$21(Lcom/vkontakte/android/CallActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$0(Lcom/vkontakte/android/CallActivity;)Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/VoipSetDevices;-><init>(IIZ)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/VoipSetDevices;->execSync()Z

    .line 603
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkontakte/android/CallActivity;->access$41(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CallActivity;->play(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$42(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->publish(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$43(Lcom/vkontakte/android/CallActivity;Z)V

    .line 607
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$44(Lcom/vkontakte/android/CallActivity;I)V

    .line 608
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$23(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$45(Lcom/vkontakte/android/CallActivity;I)V

    .line 610
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$46(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$3;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$47(Lcom/vkontakte/android/CallActivity;)V

    .line 611
    :cond_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public success()V
    .locals 0

    .prologue
    .line 579
    return-void
.end method
