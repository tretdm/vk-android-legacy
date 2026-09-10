.class Lcom/vkontakte/android/cache/AudioCache$Proxy$1;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/cache/AudioCache$Proxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/cache/AudioCache$Proxy;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/cache/AudioCache$Proxy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/cache/AudioCache$Proxy$1;->this$1:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 811
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/cache/AudioCache$Proxy$1;->this$1:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4}, Ljava/net/ServerSocket;-><init>()V

    invoke-static {v3, v4}, Lcom/vkontakte/android/cache/AudioCache$Proxy;->access$0(Lcom/vkontakte/android/cache/AudioCache$Proxy;Ljava/net/ServerSocket;)V

    .line 812
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    const v4, 0xbcc9

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 813
    .local v0, "isa":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lcom/vkontakte/android/cache/AudioCache$Proxy$1;->this$1:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    invoke-static {v3}, Lcom/vkontakte/android/cache/AudioCache$Proxy;->access$1(Lcom/vkontakte/android/cache/AudioCache$Proxy;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 816
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/cache/AudioCache$Proxy$1;->this$1:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    invoke-static {v3}, Lcom/vkontakte/android/cache/AudioCache$Proxy;->access$1(Lcom/vkontakte/android/cache/AudioCache$Proxy;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 817
    .local v1, "s":Ljava/net/Socket;
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;

    invoke-direct {v3, v1}, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;-><init>(Ljava/net/Socket;)V

    .line 818
    const-string v3, "vk"

    const-string v4, "accepted"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 820
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v2

    .line 821
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 823
    return-void
.end method
