.class public interface abstract Lcom/vkontakte/android/api/GetHistoryBatch$Callback;
.super Ljava/lang/Object;
.source "GetHistoryBatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/GetHistoryBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;>;)V"
        }
    .end annotation
.end method
