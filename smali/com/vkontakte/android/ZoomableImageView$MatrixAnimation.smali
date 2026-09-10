.class Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;
.super Landroid/view/animation/Animation;
.source "ZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatrixAnimation"
.end annotation


# instance fields
.field diff:[F

.field from:[F

.field final synthetic this$0:Lcom/vkontakte/android/ZoomableImageView;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 5
    .param p2, "_from"    # Landroid/graphics/Matrix;
    .param p3, "_to"    # Landroid/graphics/Matrix;

    .prologue
    const/16 v4, 0x9

    .line 890
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 891
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->from:[F

    .line 892
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->diff:[F

    .line 893
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->from:[F

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 894
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->diff:[F

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 895
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 900
    return-void

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->diff:[F

    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->diff:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->from:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    aput v2, v1, v0

    .line 895
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "time"    # F
    .param p2, "transform"    # Landroid/view/animation/Transformation;

    .prologue
    const/16 v5, 0x9

    .line 903
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 904
    new-array v2, v5, [F

    .line 905
    .local v2, "v":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 907
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 908
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 909
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 911
    return-void

    .line 906
    .end local v1    # "m":Landroid/graphics/Matrix;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->from:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->diff:[F

    aget v4, v4, v0

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
