.class public interface abstract Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressCallback"
.end annotation


# virtual methods
.method public abstract onBufferProgressChanged(III)V
.end method

.method public abstract onPlayProgressChanged(III)V
.end method
