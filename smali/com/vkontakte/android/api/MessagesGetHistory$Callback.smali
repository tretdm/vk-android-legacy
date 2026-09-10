.class public interface abstract Lcom/vkontakte/android/api/MessagesGetHistory$Callback;
.super Ljava/lang/Object;
.source "MessagesGetHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/MessagesGetHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(ILjava/util/Vector;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;I)V"
        }
    .end annotation
.end method
