.class Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

.field private final synthetic val$after:Ljava/lang/Runnable;

.field private final synthetic val$animationStarted:J

.field private final synthetic val$clipSize:I

.field private final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Landroid/graphics/Rect;IJLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$clipSize:I

    iput-wide p4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$animationStarted:J

    iput-object p6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$after:Ljava/lang/Runnable;

    .line 1501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    return-object v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 26

    .prologue
    .line 1505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$15(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1506
    const/16 v18, 0x1

    .line 1596
    :goto_0
    return v18

    .line 1508
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$30()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$31(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Z)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 1513
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v8, v0, [I

    .line 1514
    .local v8, "pos":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getLocationOnScreen([I)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v10, v18, v19

    .line 1517
    .local v10, "scaleX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 1519
    .local v11, "scaleY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v8, v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v15, v0

    .line 1520
    .local v15, "transX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v8, v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1522
    .local v16, "transY":F
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 1523
    .local v9, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 1524
    .local v13, "tRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v7, v18, v19

    .line 1526
    .local v7, "ivRatio":F
    const/4 v6, 0x0

    .local v6, "clipV":I
    const/4 v5, 0x0

    .line 1528
    .local v5, "clipH":I
    cmpl-float v18, v13, v7

    if-eqz v18, :cond_1

    .line 1530
    cmpl-float v18, v13, v7

    if-lez v18, :cond_2

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v14, v18, v9

    .line 1533
    .local v14, "th":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v14, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    div-float v18, v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v14, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v16, v16, v18

    .line 1544
    .end local v14    # "th":F
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setPivotX(F)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setPivotY(F)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setScaleX(F)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setScaleY(F)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setTranslationX(F)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$17(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setTranslationY(F)V

    .line 1551
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1552
    .local v12, "set":Landroid/animation/AnimatorSet;
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v20

    const-string v21, "scaleX"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v9, v22, v23

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v20

    const-string v21, "scaleY"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v9, v22, v23

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v20

    const-string v21, "translationX"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v15, v22, v23

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v20

    const-string v21, "translationY"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v16, v22, v23

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    .line 1556
    invoke-static {}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$30()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v20

    const-string v21, "alpha"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$32(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v24

    const/high16 v25, 0x437f0000    # 255.0f

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    aput v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    aput v24, v22, v23

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v20

    const-string v21, "clipBottom"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    const/16 v23, 0x1

    aput v6, v22, v23

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x6

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v20

    const-string v21, "clipTop"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$clipSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v9

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    add-int v24, v24, v6

    aput v24, v22, v23

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x7

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v20

    const-string v21, "clipHorizontal"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    const/16 v23, 0x1

    aput v5, v22, v23

    invoke-static/range {v20 .. v22}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v20

    aput-object v20, v18, v19

    .line 1552
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1561
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailAnimationDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1562
    new-instance v18, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$animationStarted:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$after:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v2, v19

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;JLjava/lang/Runnable;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1594
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 1596
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1538
    .end local v12    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v18, v9

    .line 1539
    .local v17, "tw":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v17, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    div-float v18, v18, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->val$rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v17, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v15, v15, v18

    goto/16 :goto_1
.end method
