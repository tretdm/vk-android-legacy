.class public abstract Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;
.super Ljava/lang/Object;
.source "ImageViewerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
.end method

.method public abstract isPositionAvailable(I)Z
.end method
