.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;)V
    .locals 0

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;->this$3:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1024
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;->this$3:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$400(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;->this$3:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;

    iget v1, v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->val$fullOffset:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1030
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;->this$3:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$400(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1041
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1025
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1023
    return-void
.end method
