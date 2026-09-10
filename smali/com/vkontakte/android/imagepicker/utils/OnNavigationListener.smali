.class public abstract Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;
.super Ljava/lang/Object;
.source "OnNavigationListener.java"


# instance fields
.field private lastCallbackPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;->lastCallbackPosition:I

    .line 8
    return-void
.end method


# virtual methods
.method public changePosition(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 16
    iget v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;->lastCallbackPosition:I

    if-eq p1, v0, :cond_0

    .line 18
    iput p1, p0, Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;->lastCallbackPosition:I

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;->onPositionChanged(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 22
    :cond_0
    return-void
.end method

.method public abstract onPositionChanged(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
.end method
