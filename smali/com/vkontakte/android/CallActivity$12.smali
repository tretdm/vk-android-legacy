.class Lcom/vkontakte/android/CallActivity$12;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->startIncomingCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallActivity$12;)Lcom/vkontakte/android/CallActivity;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 644
    new-instance v0, Lcom/vkontakte/android/api/VoipReply;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$20(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$21(Lcom/vkontakte/android/CallActivity;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VoipReply;-><init>(II)V

    .line 645
    new-instance v1, Lcom/vkontakte/android/CallActivity$12$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$12$1;-><init>(Lcom/vkontakte/android/CallActivity$12;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VoipReply;->setCallback(Lcom/vkontakte/android/api/VoipReply$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 660
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$40(Lcom/vkontakte/android/CallActivity;)V

    .line 661
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$0(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$17(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->setCamera(Landroid/hardware/Camera;)V

    .line 662
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/VoipSetDevices;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$20(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$21(Lcom/vkontakte/android/CallActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$0(Lcom/vkontakte/android/CallActivity;)Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/VoipSetDevices;-><init>(IIZ)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/VoipSetDevices;->execSync()Z

    .line 663
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$23(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$45(Lcom/vkontakte/android/CallActivity;I)V

    .line 664
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$46(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$47(Lcom/vkontakte/android/CallActivity;)V

    .line 666
    :cond_1
    :goto_0
    new-instance v0, Lcom/vkontakte/android/api/VoipPing;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$12;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$20(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/VoipPing;-><init>(I)V

    .line 667
    new-instance v1, Lcom/vkontakte/android/CallActivity$12$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$12$2;-><init>(Lcom/vkontakte/android/CallActivity$12;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VoipPing;->setCallback(Lcom/vkontakte/android/api/VoipPing$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 711
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
