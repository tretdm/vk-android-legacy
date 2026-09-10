.class public interface abstract Lcom/vkontakte/android/api/UsersSearch$Callback;
.super Ljava/lang/Object;
.source "UsersSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/UsersSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success([Lcom/vkontakte/android/UserProfile;I)V
.end method
