.class public interface abstract Lcom/vkontakte/android/api/PollsGetById$Callback;
.super Ljava/lang/Object;
.source "PollsGetById.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/PollsGetById;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V
.end method
