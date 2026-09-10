.class public interface abstract Lcom/vkontakte/android/api/DatabaseGetCities$Callback;
.super Ljava/lang/Object;
.source "DatabaseGetCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/api/DatabaseGetCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/database/City;",
            ">;)V"
        }
    .end annotation
.end method
