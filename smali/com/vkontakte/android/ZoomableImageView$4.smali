.class Lcom/vkontakte/android/ZoomableImageView$4;
.super Ljava/lang/Object;
.source "ZoomableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ZoomableImageView;->setImageMatrixAnimated(Landroid/graphics/Matrix;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ZoomableImageView;

.field private final synthetic val$m:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView$4;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    iput-object p2, p0, Lcom/vkontakte/android/ZoomableImageView$4;->val$m:Landroid/graphics/Matrix;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 810
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$4;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->access$9(Lcom/vkontakte/android/ZoomableImageView;Z)V

    .line 811
    new-instance v0, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;

    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$4;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView$4;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView$4;->val$m:Landroid/graphics/Matrix;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;-><init>(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 812
    .local v0, "ma":Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->setDuration(J)V

    .line 813
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 814
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$4;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ZoomableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 815
    return-void
.end method
