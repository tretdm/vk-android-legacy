.class public interface abstract Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;
.super Ljava/lang/Object;
.source "ImagesGridCallback.java"


# virtual methods
.method public abstract onImageChosen(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z
.end method

.method public abstract onImageOpened(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/util/List;Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;",
            "Lcom/vkontakte/android/imagepicker/ui/LocalImageView;",
            ")V"
        }
    .end annotation
.end method
