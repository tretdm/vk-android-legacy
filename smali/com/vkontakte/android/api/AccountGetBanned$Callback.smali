.class public interface abstract Lcom/vkontakte/android/api/AccountGetBanned$Callback;
.super Ljava/lang/Object;
.source "AccountGetBanned.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/AccountGetBanned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation
.end method
