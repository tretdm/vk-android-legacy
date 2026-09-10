.class public interface abstract Lcom/vkontakte/android/api/FaveGetPosts$Callback;
.super Ljava/lang/Object;
.source "FaveGetPosts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/FaveGetPosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success([Lcom/vkontakte/android/NewsEntry;I)V
.end method
