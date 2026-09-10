.class Lcom/vkontakte/android/AudioPlayerService$5;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 675
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$34(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$35(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 683
    :goto_1
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$36(Lcom/vkontakte/android/AudioPlayerService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$36(Lcom/vkontakte/android/AudioPlayerService;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 682
    :cond_1
    const-string v0, "vk"

    const-string v1, "released wifi lock"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 675
    :catch_0
    move-exception v0

    goto :goto_0
.end method
