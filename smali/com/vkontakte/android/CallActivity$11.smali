.class Lcom/vkontakte/android/CallActivity$11;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->startCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$11;->this$0:Lcom/vkontakte/android/CallActivity;

    iput p2, p0, Lcom/vkontakte/android/CallActivity$11;->val$uid:I

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallActivity$11;)Lcom/vkontakte/android/CallActivity;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11;->this$0:Lcom/vkontakte/android/CallActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 530
    new-instance v0, Lcom/vkontakte/android/api/VoipInit;

    invoke-direct {v0}, Lcom/vkontakte/android/api/VoipInit;-><init>()V

    .line 531
    new-instance v1, Lcom/vkontakte/android/CallActivity$11$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$11$1;-><init>(Lcom/vkontakte/android/CallActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VoipInit;->setCallback(Lcom/vkontakte/android/api/VoipInit$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 550
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$0(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$37(Lcom/vkontakte/android/CallActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$17(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->setCamera(Landroid/hardware/Camera;)V

    .line 555
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/VoipStart;

    iget v1, p0, Lcom/vkontakte/android/CallActivity$11;->val$uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/VoipStart;-><init>(I)V

    .line 556
    new-instance v1, Lcom/vkontakte/android/CallActivity$11$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$11$2;-><init>(Lcom/vkontakte/android/CallActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VoipStart;->setCallback(Lcom/vkontakte/android/api/VoipStart$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 573
    :goto_1
    new-instance v0, Lcom/vkontakte/android/api/VoipPing;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$11;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$20(Lcom/vkontakte/android/CallActivity;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/VoipPing;-><init>(I)V

    .line 574
    new-instance v1, Lcom/vkontakte/android/CallActivity$11$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$11$3;-><init>(Lcom/vkontakte/android/CallActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VoipPing;->setCallback(Lcom/vkontakte/android/api/VoipPing$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$11;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$49(Lcom/vkontakte/android/CallActivity;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 551
    :cond_1
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
