.class public interface abstract Lcom/vkontakte/android/api/AppsGetActivity$Callback;
.super Ljava/lang/Object;
.source "AppsGetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/AppsGetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/GameFeedEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
