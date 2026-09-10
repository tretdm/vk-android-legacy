.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;
.super Landroid/widget/Scroller;
.source "StickersDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedSpeedScroller"
.end annotation


# instance fields
.field public autoScroll:Z

.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 376
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->mDuration:I

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->autoScroll:Z

    .line 381
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 376
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->mDuration:I

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->autoScroll:Z

    .line 385
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 388
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 376
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->mDuration:I

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->autoScroll:Z

    .line 389
    return-void
.end method


# virtual methods
.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 405
    iget v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 406
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->autoScroll:Z

    if-eqz v0, :cond_0

    .line 396
    iget v5, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->autoScroll:Z

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method
