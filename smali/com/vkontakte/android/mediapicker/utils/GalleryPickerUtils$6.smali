.class Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;
.super Ljava/lang/Object;
.source "GalleryPickerUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->bounce(Landroid/view/View;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

.field private final synthetic val$onToggled:Ljava/lang/Runnable;

.field private final synthetic val$ratio:F

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->this$0:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$ratio:F

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$onToggled:Ljava/lang/Runnable;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 528
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 498
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$ratio:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 499
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$ratio:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 501
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$onToggled:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$onToggled:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6$1;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$view:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6$1;-><init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 524
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 532
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 494
    return-void
.end method
