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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    invoke-static {p1}, Lcom/vkontakte/android/cache/AudioCache;->access$0(Landroid/content/Context;)V

    .line 702
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 705
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/cache/AudioCache$Proxy$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/cache/AudioCache$Proxy$1;-><init>(Lcom/vkontakte/android/cache/AudioCache$Proxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 716
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 717
    return-void
.end method
