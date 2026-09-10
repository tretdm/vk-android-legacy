.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1$1;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1$1;->this$4:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1033
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1$1;->this$4:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1$1;->this$3:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$400(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1039
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1034
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1032
    return-void
.end method
