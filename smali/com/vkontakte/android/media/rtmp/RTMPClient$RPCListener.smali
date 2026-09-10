.class public interface abstract Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;
.super Ljava/lang/Object;
.source "RTMPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/media/rtmp/RTMPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RPCListener"
.end annotation


# virtual methods
.method public abstract onCommand(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract onConnectionSuddenlyClosed()V
.end method

.method public abstract onInVideoStarted()V
.end method
