.class Lcom/vkontakte/android/ui/MenuOverlayView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MenuOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MenuOverlayView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 58
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v0, p3}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$0(Lcom/vkontakte/android/ui/MenuOverlayView;F)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$0(Lcom/vkontakte/android/ui/MenuOverlayView;F)V

    .line 67
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$1(Lcom/vkontakte/android/ui/MenuOverlayView;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$3(Lcom/vkontakte/android/ui/MenuOverlayView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p3, v2

    .line 72
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$4(Lcom/vkontakte/android/ui/MenuOverlayView;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$5(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 76
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2, p1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$6(Lcom/vkontakte/android/ui/MenuOverlayView;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$7(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$8(Lcom/vkontakte/android/ui/MenuOverlayView;I)V

    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$5(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$9(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 83
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$10(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$4(Lcom/vkontakte/android/ui/MenuOverlayView;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$11(Lcom/vkontakte/android/ui/MenuOverlayView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 88
    cmpl-float v2, p3, v4

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$12(Lcom/vkontakte/android/ui/MenuOverlayView;I)V

    .line 89
    :cond_4
    cmpg-float v2, p3, v4

    if-gez v2, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$12(Lcom/vkontakte/android/ui/MenuOverlayView;I)V

    .line 91
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$8(Lcom/vkontakte/android/ui/MenuOverlayView;I)V

    .line 92
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I

    move-result v2

    if-gez v2, :cond_6

    .line 93
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v2, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$7(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$8(Lcom/vkontakte/android/ui/MenuOverlayView;I)V

    .line 95
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$5(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 96
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$10(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    goto/16 :goto_0

    .line 99
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$1;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$10(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    :cond_7
    move v0, v1

    .line 105
    goto/16 :goto_0
.end method
