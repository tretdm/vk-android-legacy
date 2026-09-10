.class public abstract Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;
.super Ljava/lang/Object;
.source "ImagesViewerCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundUpdate(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 38
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public abstract onImageStyled(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
.end method

.method public abstract onPositionChanged(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
.end method

.method public onPrepareDismiss()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onZoomChanged(FFF)V
    .locals 0
    .param p1, "factor"    # F
    .param p2, "max"    # F
    .param p3, "min"    # F

    .prologue
    .line 28
    return-void
.end method
