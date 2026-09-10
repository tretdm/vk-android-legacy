.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

.field final synthetic val$after:Ljava/lang/Runnable;

.field final synthetic val$animationStarted:J

.field final synthetic val$clipSize:I

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Landroid/graphics/Rect;ILjava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$clipSize:I

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$after:Ljava/lang/Runnable;

    iput-wide p5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$animationStarted:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 22

    .prologue
    .line 1509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1500(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1510
    const/4 v14, 0x1

    .line 1600
    :goto_0
    return v14

    .line 1512
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v14, v14, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$2700()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1502(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Z)Z

    .line 1515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidate()V

    .line 1517
    const/4 v14, 0x2

    new-array v4, v14, [I

    fill-array-data v4, :array_0

    .line 1518
    .local v4, "pos":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getLocationOnScreen([I)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float v6, v14, v15

    .line 1521
    .local v6, "scaleX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v7, v14, v15

    .line 1523
    .local v7, "scaleY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    const/4 v15, 0x0

    aget v15, v4, v15

    sub-int/2addr v14, v15

    int-to-float v11, v14

    .line 1524
    .local v11, "transX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    const/4 v15, 0x1

    aget v15, v4, v15

    sub-int/2addr v14, v15

    int-to-float v12, v14

    .line 1526
    .local v12, "transY":F
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1527
    .local v5, "scale":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float v9, v14, v15

    .line 1528
    .local v9, "tRatio":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v3, v14, v15

    .line 1530
    .local v3, "ivRatio":F
    const/4 v2, 0x0

    .local v2, "clipV":I
    const/4 v1, 0x0

    .line 1532
    .local v1, "clipH":I
    cmpl-float v14, v9, v3

    if-eqz v14, :cond_1

    .line 1534
    cmpl-float v14, v9, v3

    if-lez v14, :cond_2

    .line 1536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v10, v14, v5

    .line 1537
    .local v10, "th":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v10, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    div-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1538
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v10, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v12, v14

    .line 1548
    .end local v10    # "th":F
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setPivotX(F)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setPivotY(F)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setScaleX(F)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setScaleY(F)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setTranslationX(F)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1300(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setTranslationY(F)V

    .line 1555
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1556
    .local v8, "set":Landroid/animation/AnimatorSet;
    const/16 v14, 0x8

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v16

    const-string v17, "scaleX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v5, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v16

    const-string v17, "scaleY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v5, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v16

    const-string v17, "translationX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v11, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v16

    const-string v17, "translationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v12, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$2700()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v16

    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$2800(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F

    move-result v20

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    aput v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v16

    const-string v17, "clipBottom"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v2, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v16

    const-string v17, "clipTop"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$clipSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v20, v20, v2

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v16

    const-string v17, "clipHorizontal"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v1, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1565
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getThumbnailAnimationDuration()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v8, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1566
    new-instance v14, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;)V

    invoke-virtual {v8, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1598
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 1600
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1542
    .end local v8    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v13, v14, v5

    .line 1543
    .local v13, "tw":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v13, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    div-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v13, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v11, v14

    goto/16 :goto_1

    .line 1517
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
