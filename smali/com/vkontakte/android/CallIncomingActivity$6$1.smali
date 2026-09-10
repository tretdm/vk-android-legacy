.class Lcom/vkontakte/android/CallIncomingActivity$6$1;
.super Ljava/lang/Object;
.source "CallIncomingActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VoipPing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallIncomingActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/CallIncomingActivity$6;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallIncomingActivity$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallIncomingActivity$6$1;->this$1:Lcom/vkontakte/android/CallIncomingActivity$6;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 197
    return-void
.end method

.method public onCamera(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 191
    return-void
.end method

.method public onHangup()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$6$1;->this$1:Lcom/vkontakte/android/CallIncomingActivity$6;

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity$6;->access$0(Lcom/vkontakte/android/CallIncomingActivity$6;)Lcom/vkontakte/android/CallIncomingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity;->access$1(Lcom/vkontakte/android/CallIncomingActivity;)V

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$6$1;->this$1:Lcom/vkontakte/android/CallIncomingActivity$6;

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity$6;->access$0(Lcom/vkontakte/android/CallIncomingActivity$6;)Lcom/vkontakte/android/CallIncomingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/CallIncomingActivity;->finish()V

    .line 185
    return-void
.end method

.method public onReceived()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onReply(Ljava/lang/String;)V
    .locals 1
    .param p1, "stream"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$6$1;->this$1:Lcom/vkontakte/android/CallIncomingActivity$6;

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity$6;->access$0(Lcom/vkontakte/android/CallIncomingActivity$6;)Lcom/vkontakte/android/CallIncomingActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/CallIncomingActivity;->finish()V

    .line 173
    return-void
.end method

.method public success()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
