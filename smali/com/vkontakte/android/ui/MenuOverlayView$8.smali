.class Lcom/vkontakte/android/ui/MenuOverlayView$8;
.super Ljava/lang/Object;
.source "MenuOverlayView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V
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
    .line 583
    iput-object p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView$8;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 604
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 597
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$8;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$1102(Lcom/vkontakte/android/ui/MenuOverlayView;Z)Z

    .line 598
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView$8;->this$0:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->access$1200(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V

    .line 599
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 592
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 587
    return-void
.end method
