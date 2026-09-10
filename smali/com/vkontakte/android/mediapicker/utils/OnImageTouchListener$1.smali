.class Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;
.super Ljava/lang/Object;
.source "OnImageTouchListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    const-string v2, "OnLongPress"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    invoke-static {v3, v1}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->access$000(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;Z)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->access$100(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;Z)V

    .line 31
    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    const-string v4, "OnScroll %f %f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->access$200(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 52
    .local v0, "velX":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3f666666    # 0.9f

    mul-float v1, v4, v5

    .line 54
    .local v1, "velY":F
    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    invoke-static {v5, v2}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->access$000(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;Z)I

    move-result v5

    if-ne v5, v2, :cond_1

    :goto_0
    invoke-static {v4, v2}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->access$100(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;Z)V

    .line 58
    .end local v0    # "velX":F
    .end local v1    # "velY":F
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->access$200(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;)Z

    move-result v2

    return v2

    .restart local v0    # "velX":F
    .restart local v1    # "velY":F
    :cond_1
    move v2, v3

    .line 55
    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 22
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 35
    const-string v0, "OnSingleTapUp"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->access$200(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;->this$0:Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;

    invoke-static {v0, v2}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->access$000(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;Z)I

    .line 42
    :cond_0
    return v2
.end method
