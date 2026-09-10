.class public Lcom/vkontakte/android/cache/AudioCache$Proxy;
.super Ljava/lang/Object;
.source "AudioCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/cache/AudioCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    invoke-static {p1}, Lcom/vkontakte/android/cache/AudioCache;->access$0(Landroid/content/Context;)V

    .line 806
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/cache/AudioCache$Proxy;Ljava/net/ServerSocket;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/vkontakte/android/cache/AudioCache$Proxy;->ss:Ljava/net/ServerSocket;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/cache/AudioCache$Proxy;)Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Proxy;->ss:Ljava/net/ServerSocket;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 809
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$Proxy$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/cache/AudioCache$Proxy$1;-><init>(Lcom/vkontakte/android/cache/AudioCache$Proxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 823
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 824
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Proxy;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    goto :goto_0
.end method
