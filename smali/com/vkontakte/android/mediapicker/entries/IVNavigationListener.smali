.class public abstract Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;
.super Ljava/lang/Object;
.source "IVNavigationListener.java"


# instance fields
.field private lastCallbackPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;->lastCallbackPosition:I

    return-void
.end method


# virtual methods
.method public changePosition(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 14
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;->lastCallbackPosition:I

    if-eq p1, v0, :cond_0

    .line 16
    iput p1, p0, Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;->lastCallbackPosition:I

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;->onPositionChanged(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 20
    :cond_0
    return-void
.end method

.method public abstract onPositionChanged(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
.end method
