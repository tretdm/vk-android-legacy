.class public interface abstract Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;
.super Ljava/lang/Object;
.source "AppsGetGamesPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/AppsGetGamesPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/GameRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/GameFeedEntry;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation
.end method
