.class Lcom/vkontakte/android/ui/PhotoView$3;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView;->animateIn(Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoView;

.field private final synthetic val$clipSize:I

.field private final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView;Landroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/vkontakte/android/ui/PhotoView$3;->val$clipSize:I

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PhotoView$3;)Lcom/vkontakte/android/ui/PhotoView;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    return-object v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 21

    .prologue
    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/ui/ClippingImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 579
    const/4 v14, 0x2

    new-array v4, v14, [I

    .line 580
    .local v4, "pos":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/vkontakte/android/ui/ClippingImageView;->getLocationOnScreen([I)V

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkontakte/android/ui/ClippingImageView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float v6, v14, v15

    .local v6, "scaleX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkontakte/android/ui/ClippingImageView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v7, v14, v15

    .line 582
    .local v7, "scaleY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    const/4 v15, 0x0

    aget v15, v4, v15

    sub-int/2addr v14, v15

    int-to-float v11, v14

    .local v11, "transX":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    const/4 v15, 0x1

    aget v15, v4, v15

    sub-int/2addr v14, v15

    int-to-float v12, v14

    .line 583
    .local v12, "transY":F
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 584
    .local v5, "scale":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float v9, v14, v15

    .line 585
    .local v9, "tRatio":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/ui/ClippingImageView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v15}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkontakte/android/ui/ClippingImageView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v3, v14, v15

    .line 586
    .local v3, "ivRatio":F
    const/4 v2, 0x0

    .local v2, "clipV":I
    const/4 v1, 0x0

    .line 587
    .local v1, "clipH":I
    cmpl-float v14, v9, v3

    if-eqz v14, :cond_0

    .line 588
    cmpl-float v14, v9, v3

    if-lez v14, :cond_1

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/ui/ClippingImageView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v10, v14, v5

    .line 590
    .local v10, "th":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v10, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    div-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 591
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v10, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v12, v14

    .line 598
    .end local v10    # "th":F
    :cond_0
    :goto_0
    const/4 v14, 0x0

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 599
    const/4 v14, 0x0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 600
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/ui/ClippingImageView;->setPivotX(F)V

    .line 601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/ui/ClippingImageView;->setPivotY(F)V

    .line 602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/vkontakte/android/ui/ClippingImageView;->setScaleX(F)V

    .line 603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/vkontakte/android/ui/ClippingImageView;->setScaleY(F)V

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/vkontakte/android/ui/ClippingImageView;->setTranslationX(F)V

    .line 605
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/vkontakte/android/ui/ClippingImageView;->setTranslationY(F)V

    .line 606
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 607
    .local v8, "set":Landroid/animation/AnimatorSet;
    const/16 v14, 0x8

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v16

    const-string v17, "scaleX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v16

    const-string v17, "scaleY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v16

    const-string v17, "translationX"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v16

    const-string v17, "translationY"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$19(Lcom/vkontakte/android/ui/PhotoView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v16

    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v16

    const-string v17, "clipBottom"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v2, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v16

    const-string v17, "clipTop"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$clipSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v20, v20, v2

    aput v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v16

    const-string v17, "clipHorizontal"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v1, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v20, v18, v19

    invoke-static/range {v16 .. v18}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v16

    aput-object v16, v14, v15

    .line 607
    invoke-virtual {v8, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 615
    const-wide/16 v14, 0x12c

    invoke-virtual {v8, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 616
    new-instance v14, Lcom/vkontakte/android/ui/PhotoView$3$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/ui/PhotoView$3$1;-><init>(Lcom/vkontakte/android/ui/PhotoView$3;)V

    invoke-virtual {v8, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 623
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 624
    const/4 v14, 0x1

    return v14

    .line 593
    .end local v8    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v14}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/ui/ClippingImageView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v13, v14, v5

    .line 594
    .local v13, "tw":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v13, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    div-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 595
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$3;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    sub-float v14, v13, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    sub-float/2addr v11, v14

    goto/16 :goto_0

    .line 611
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
