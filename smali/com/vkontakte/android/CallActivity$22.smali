.class Lcom/vkontakte/android/CallActivity$22;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity;->onConnectionSuddenlyClosed()V
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
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 984
    const-string v0, "vk"

    const-string v1, "Connection suddenly closed, reconnecting!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->releaseStreams()V

    .line 986
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$56(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$57(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$58(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/CallActivity;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$42(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->publish(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$48(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->play(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$22;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$17(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->setCamera(Landroid/hardware/Camera;)V

    .line 990
    return-void
.end method
