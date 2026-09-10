.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

.field private final synthetic val$fullOffset:F


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->val$fullOffset:F

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

    return-object v0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1015
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$4(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->val$fullOffset:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1021
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$4(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->val$fullOffset:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->val$fullOffset:F

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1043
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1016
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1014
    return-void
.end method
