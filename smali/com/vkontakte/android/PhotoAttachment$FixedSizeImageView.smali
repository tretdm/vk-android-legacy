.class public Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;
.super Landroid/widget/ImageView;
.source "PhotoAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedSizeImageView"
.end annotation


# instance fields
.field private animated:Z

.field public displayH:I

.field public displayW:I

.field private phAlpha:I

.field private placeholder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 235
    iput v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->phAlpha:I

    .line 236
    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animated:Z

    .line 240
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xd0d0e

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 242
    return-void
.end method


# virtual methods
.method public animateAlpha()V
    .locals 3

    .prologue
    .line 249
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animated:Z

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const-string v1, "drawableAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 251
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 253
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 254
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animated:Z

    goto :goto_0

    .line 250
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public dontAnimate()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animated:Z

    .line 270
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 278
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 279
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->phAlpha:I

    if-lez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->phAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 285
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 245
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->displayW:I

    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->displayH:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMeasuredDimension(II)V

    .line 246
    return-void
.end method

.method public setDrawableAlpha(I)V
    .locals 0
    .param p1, "a"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->phAlpha:I

    .line 274
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->invalidate()V

    .line 275
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animated:Z

    .line 266
    :cond_0
    return-void
.end method
