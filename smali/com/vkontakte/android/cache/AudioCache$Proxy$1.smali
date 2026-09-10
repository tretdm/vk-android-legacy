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

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 371
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    .line 372
    .local v2, "ss":Ljava/net/ServerSocket;
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    const v4, 0xbcc9

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 373
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 375
    :goto_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 376
    .local v1, "s":Ljava/net/Socket;
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;

    invoke-direct {v3, v1}, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;-><init>(Ljava/net/Socket;)V

    .line 377
    const-string v3, "vk"

    const-string v4, "accepted"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "s":Ljava/net/Socket;
    .end local v2    # "ss":Ljava/net/ServerSocket;
    :catch_0
    move-exception v3

    .line 380
    return-void
.end method
