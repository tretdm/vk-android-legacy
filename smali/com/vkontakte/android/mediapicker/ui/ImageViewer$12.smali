.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateIn(Landroid/graphics/Rect;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

.field final synthetic val$clipSize:I

.field final synthetic val$ender:Ljava/lang/Runnable;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Landroid/graphics/Rect;ILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$clipSize:I

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$ender:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 20

    .prologue
    .line 1654
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v14, v14, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->screenData3:[I

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getLocationOnScreen([I)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v5, v13, v14

    .line 1658
    .local v5, "scaleX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v6, v13, v14

    .line 1660
    .local v6, "scaleY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v14, v14, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->screenData3:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    sub-int/2addr v13, v14

    int-to-float v10, v13

    .line 1661
    .local v10, "transX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v14, v14, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->screenData3:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    int-to-float v11, v13

    .line 1663
    .local v11, "transY":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1664
    .local v4, "scale":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float v8, v13, v14

    .line 1665
    .local v8, "tRatio":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getWidth()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v14}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v3, v13, v14

    .line 1667
    .local v3, "ivRatio":F
    const/4 v2, 0x0

    .local v2, "clipV":I
    const/4 v1, 0x0

    .line 1669
    .local v1, "clipH":I
    cmpl-float v13, v8, v3

    if-eqz v13, :cond_0

    .line 1671
    cmpl-float v13, v8, v3

    if-lez v13, :cond_1

    .line 1673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float v9, v13, v4

    .line 1674
    .local v9, "th":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v9, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    div-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v9, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v11, v13

    .line 1685
    .end local v9    # "th":F
    :cond_0
    :goto_0
    const/4 v13, 0x0

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1686
    const/4 v13, 0x0

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setPivotX(F)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setPivotY(F)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setScaleX(F)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setScaleY(F)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setTranslationX(F)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setTranslationY(F)V

    .line 1694
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1696
    .local v7, "set":Landroid/animation/AnimatorSet;
    const/16 v13, 0x8

    new-array v13, v13, [Landroid/animation/Animator;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    const-string v16, "scaleX"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    const-string v16, "scaleY"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    const-string v16, "translationX"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    const-string v16, "translationY"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static {}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$2700()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v15

    const-string v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    const-string v16, "clipBottom"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v2, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    const-string v16, "clipTop"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$clipSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    add-int v19, v19, v2

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v15

    const-string v16, "clipHorizontal"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v1, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v7, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1705
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getThumbnailAnimationDuration()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v7, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1706
    new-instance v13, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;)V

    invoke-virtual {v7, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1714
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1716
    const/4 v13, 0x1

    return v13

    .line 1679
    .end local v7    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v13}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float v12, v13, v4

    .line 1680
    .local v12, "tw":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v12, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    div-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v12, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v10, v13

    goto/16 :goto_0

    .line 1696
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
