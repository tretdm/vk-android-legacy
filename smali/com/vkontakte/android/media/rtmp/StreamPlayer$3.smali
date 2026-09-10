.class Lcom/vkontakte/android/media/rtmp/StreamPlayer$3;
.super Ljava/lang/Object;
.source "StreamPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/rtmp/StreamPlayer;->startVideoThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/rtmp/StreamPlayer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer$3;->this$0:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer$3;->this$0:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->access$3(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer$3;->this$0:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->access$4(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V

    .line 95
    const-string v0, "video decoder exiting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method
