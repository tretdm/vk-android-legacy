.class public interface abstract Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;
.super Ljava/lang/Object;
.source "MessagesGetChatUsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/MessagesGetChatUsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(ILjava/util/Vector;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
