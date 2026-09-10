.class Lcom/vkontakte/android/CallActivity$11$1;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VoipInit$Callback;


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
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$11$1;->this$1:Lcom/vkontakte/android/CallActivity$11;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallActivity$11$1;)Lcom/vkontakte/android/CallActivity$11;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$1;->this$1:Lcom/vkontakte/android/CallActivity$11;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 546
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$1;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vkontakte/android/CallActivity;->access$33(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$1;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/vkontakte/android/CallActivity;->access$34(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$1;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/vkontakte/android/CallActivity;->access$35(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$1;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/CallActivity$11$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$11$1$1;-><init>(Lcom/vkontakte/android/CallActivity$11$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 540
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11$1;->this$1:Lcom/vkontakte/android/CallActivity$11;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$11;->access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkontakte/android/CallActivity;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method
