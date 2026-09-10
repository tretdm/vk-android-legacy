.class public interface abstract Lcom/vkontakte/android/api/NewsfeedSearch$Callback;
.super Ljava/lang/Object;
.source "NewsfeedSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/NewsfeedSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success([Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;I)V
.end method
