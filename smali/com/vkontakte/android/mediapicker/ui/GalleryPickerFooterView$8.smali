.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->shakeBadge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

.field private final synthetic val$fullOffset:F

.field private final synthetic val$partOffset:F


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;FF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->val$partOffset:F

    iput p3, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->val$fullOffset:F

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    return-object v0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 997
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$4(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->val$partOffset:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1003
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$4(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->val$partOffset:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->val$partOffset:F

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->val$fullOffset:F

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;FF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1047
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 998
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 996
    return-void
.end method
