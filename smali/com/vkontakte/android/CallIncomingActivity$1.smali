.class Lcom/vkontakte/android/CallIncomingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CallIncomingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/CallIncomingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallIncomingActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallIncomingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallIncomingActivity$1;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const-string v0, "com.vkontakte.android.VOIP_HANGUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$1;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity;->access$0(Lcom/vkontakte/android/CallIncomingActivity;)I

    move-result v0

    const-string v1, "call_id"

    iget-object v2, p0, Lcom/vkontakte/android/CallIncomingActivity$1;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallIncomingActivity;->access$0(Lcom/vkontakte/android/CallIncomingActivity;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$1;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/CallIncomingActivity;->finish()V

    .line 42
    :cond_0
    const-string v0, "replied"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$1;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity;->access$1(Lcom/vkontakte/android/CallIncomingActivity;)V

    .line 46
    :cond_1
    return-void
.end method
