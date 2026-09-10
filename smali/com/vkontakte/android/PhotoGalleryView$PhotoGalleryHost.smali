.class public interface abstract Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;
.super Ljava/lang/Object;
.source "PhotoGalleryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoGalleryHost"
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getThumbnail(I)Landroid/graphics/Bitmap;
.end method

.method public abstract onClick(I)V
.end method

.method public abstract onScrollEnded(I)V
.end method

.method public abstract onScrollStarted()V
.end method
