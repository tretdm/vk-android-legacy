.class public abstract Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CropperCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->checkTapLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;->onCropApply()V

    .line 79
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->checkTapLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;->onCropReset()V

    .line 85
    :cond_0
    return-void
.end method

.method public abstract onCropApply()V
.end method

.method public abstract onCropReset()V
.end method
