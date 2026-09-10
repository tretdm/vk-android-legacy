.class Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
.super Landroid/view/animation/Animation;
.source "MenuOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideAnimation"
.end annotation


# instance fields
.field offset:I

.field startTime:J

.field final synthetic this$0:Lcom/vkontakte/android/ui/MenuOverlayView;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 2

    .prologue
    .line 446
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->startTime:J

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->offset:I

    .line 448
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "time"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v7, 0x0

    .line 463
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 464
    iget-wide v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->startTime:J

    .line 465
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->startTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$13(Lcom/vkontakte/android/ui/MenuOverlayView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->startTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->offset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 469
    :goto_0
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 470
    .local v0, "mv":[F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 472
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 474
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$14(Lcom/vkontakte/android/ui/MenuOverlayView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 477
    :cond_1
    return-void

    .line 468
    .end local v0    # "mv":[F
    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->offset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0
.end method
