.class public interface abstract Lcom/vkontakte/android/api/MessagesGetFull$Callback;
.super Ljava/lang/Object;
.source "MessagesGetFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/MessagesGetFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(Lcom/vkontakte/android/Message;)V
.end method
