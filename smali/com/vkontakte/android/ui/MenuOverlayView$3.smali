.class Lcom/vkontakte/android/ui/MenuOverlayView$3;
.super Ljava/lang/Object;
.source "MenuOverlayView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    .line 368
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$3;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 393
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$3;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$1002(Lcom/vkontakte/android/ui/MenuOverlayView;Z)Z

    .line 384
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$3;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 385
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$3;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 386
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$3;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$1102(Lcom/vkontakte/android/ui/MenuOverlayView;Z)Z

    .line 387
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 379
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 373
    return-void
.end method
