.class Lcom/vkontakte/android/media/rtmp/RTMPClient$1;
.super Ljava/lang/Object;
.source "RTMPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/rtmp/RTMPClient;->connect(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$1;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$1;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$0(Lcom/vkontakte/android/media/rtmp/RTMPClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "x":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$1;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$1(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const-string v1, "OH SHI~"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const-string v1, "vk_RTMP"

    const-string v2, "Connection error"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$1;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$2(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;->onConnectionSuddenlyClosed()V

    goto :goto_0
.end method
