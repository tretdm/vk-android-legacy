.class public abstract Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.super Ljava/lang/Object;
.source "ListImageLoaderAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getImageCountForItem(I)I
.end method

.method public abstract getImageURL(II)Ljava/lang/String;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract imageLoaded(IILandroid/graphics/Bitmap;)V
.end method
