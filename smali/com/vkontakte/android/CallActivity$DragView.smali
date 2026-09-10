.class Lcom/vkontakte/android/CallActivity$DragView;
.super Landroid/widget/FrameLayout;
.source "CallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragView"
.end annotation


# instance fields
.field private click:Z

.field private dragX:F

.field private dragY:F

.field private dragging:Z

.field private started:Z

.field private stx:F

.field private sty:F

.field final synthetic this$0:Lcom/vkontakte/android/CallActivity;

.field private touchslop:F


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/CallActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1015
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    .line 1016
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1011
    iput-boolean v0, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragging:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/CallActivity$DragView;->started:Z

    .line 1013
    iput-boolean v0, p0, Lcom/vkontakte/android/CallActivity$DragView;->click:Z

    .line 1017
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CallActivity$DragView;->setWillNotDraw(Z)V

    .line 1018
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/CallActivity$DragView;->touchslop:F

    .line 1019
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1028
    const/4 v0, 0x1

    .line 1036
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "ch"    # Z
    .param p2, "t"    # I
    .param p3, "l"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1023
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/high16 v7, 0x40e00000    # 7.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 1041
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v3}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragX:F

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragY:F

    .line 1044
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->stx:F

    .line 1045
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->sty:F

    .line 1047
    iput-boolean v0, p0, Lcom/vkontakte/android/CallActivity$DragView;->started:Z

    .line 1048
    iput-boolean v0, p0, Lcom/vkontakte/android/CallActivity$DragView;->click:Z

    .line 1082
    :goto_0
    return v0

    .line 1053
    :cond_0
    iget-boolean v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragging:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->started:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1054
    iget v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->touchslop:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->touchslop:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1055
    :cond_1
    iput-boolean v0, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragging:Z

    .line 1056
    iput-boolean v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->click:Z

    goto :goto_0

    .line 1061
    :cond_2
    iget-boolean v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragging:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1062
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->stx:F

    add-float/2addr v2, v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/CallActivity$DragView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1063
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->sty:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/CallActivity$DragView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CallActivity;->access$6(Lcom/vkontakte/android/CallActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CallActivity;->access$7(Lcom/vkontakte/android/CallActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v4}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_0

    .line 1067
    :cond_3
    iget-boolean v3, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragging:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 1068
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->stx:F

    add-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/CallActivity$DragView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1069
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/CallActivity$DragView;->sty:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/CallActivity$DragView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CallActivity;->access$6(Lcom/vkontakte/android/CallActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CallActivity;->access$7(Lcom/vkontakte/android/CallActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v5}, Lcom/vkontakte/android/CallActivity;->access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1070
    iput-boolean v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragging:Z

    .line 1071
    iput-boolean v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->started:Z

    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 1067
    goto :goto_1

    .line 1075
    :cond_5
    iget-boolean v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->dragging:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->started:Z

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 1077
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity$DragView;->this$0:Lcom/vkontakte/android/CallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallActivity;->access$8(Lcom/vkontakte/android/CallActivity;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->performClick()Z

    .line 1078
    iput-boolean v1, p0, Lcom/vkontakte/android/CallActivity$DragView;->started:Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1082
    goto/16 :goto_0
.end method
