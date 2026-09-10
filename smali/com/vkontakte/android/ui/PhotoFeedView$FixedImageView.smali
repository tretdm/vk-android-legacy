.class Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;
.super Landroid/widget/ImageView;
.source "PhotoFeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedImageView"
.end annotation


# instance fields
.field h:I

.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

.field w:I


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 386
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 387
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 390
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;->h:I

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;->w:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;->setMeasuredDimension(II)V

    .line 391
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 394
    if-eqz p1, :cond_0

    .line 395
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 396
    .local v5, "m":Landroid/graphics/Matrix;
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 399
    .end local v5    # "m":Landroid/graphics/Matrix;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    return-void
.end method
