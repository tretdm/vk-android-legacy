.class public interface abstract Lcom/vkontakte/android/api/VoipPing$Callback;
.super Ljava/lang/Object;
.source "VoipPing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/VoipPing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract onCamera(Z)V
.end method

.method public abstract onHangup()V
.end method

.method public abstract onReceived()V
.end method

.method public abstract onReply(Ljava/lang/String;)V
.end method

.method public abstract success()V
.end method
