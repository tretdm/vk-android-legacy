.class Lcom/vkontakte/android/ui/MenuOverlayView$10;
.super Ljava/lang/Object;
.source "MenuOverlayView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;->openMenu()V
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
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$10;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 696
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$10;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$13(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 686
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$10;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 688
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$10;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$14(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 689
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$10;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 690
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 681
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 675
    return-void
.end method
