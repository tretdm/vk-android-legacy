.class public Lcom/vkontakte/android/GCMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMBroadcastReceiver.java"


# static fields
.field public static final ID_FRIEND_FOUND_NOTIFICATION:I = 0x1f7

.field public static final ID_FRIEND_NOTIFICATION:I = 0x1f5

.field public static final ID_GAME_INSTALL_NOTIFICATION:I = 0x1f9

.field public static final ID_GAME_NOTIFICATION:I = 0x1f8

.field public static final ID_REPLY_NOTIFICATION:I = 0x1f6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/GCMBroadcastReceiver;->setResultCode(I)V

    .line 44
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/GCMBroadcastReceiver$1;-><init>(Lcom/vkontakte/android/GCMBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 496
    return-void
.end method
