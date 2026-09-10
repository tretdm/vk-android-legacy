.class Lcom/vkontakte/android/CallIncomingActivity$4;
.super Ljava/lang/Object;
.source "CallIncomingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallIncomingActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/CallIncomingActivity$4;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity$4;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallIncomingActivity;->access$2(Lcom/vkontakte/android/CallIncomingActivity;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity$4;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    const-class v2, Lcom/vkontakte/android/CallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "call_id"

    iget-object v2, p0, Lcom/vkontakte/android/CallIncomingActivity$4;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallIncomingActivity;->access$0(Lcom/vkontakte/android/CallIncomingActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v1, "from_id"

    iget-object v2, p0, Lcom/vkontakte/android/CallIncomingActivity$4;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallIncomingActivity;->access$3(Lcom/vkontakte/android/CallIncomingActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/vkontakte/android/CallIncomingActivity$4;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "user_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "user_photo"

    iget-object v2, p0, Lcom/vkontakte/android/CallIncomingActivity$4;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/CallIncomingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "user_photo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "voice_only"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity$4;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/CallIncomingActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity$4;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/CallIncomingActivity;->finish()V

    .line 110
    return-void
.end method
