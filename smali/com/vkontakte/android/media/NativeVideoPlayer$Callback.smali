.class public interface abstract Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/media/NativeVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract nativePlayerBufferingUpdate(I)V
.end method

.method public abstract nativePlayerCompleted()V
.end method

.method public abstract nativePlayerError(I)V
.end method

.method public abstract nativePlayerPositionUpdate(I)V
.end method

.method public abstract nativePlayerReady(II)V
.end method
