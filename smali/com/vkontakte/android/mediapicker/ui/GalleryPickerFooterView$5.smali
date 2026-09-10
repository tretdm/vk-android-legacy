.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$5;
.super Ljava/lang/Object;
.source "GalleryPickerFooterView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateBadgeAnimated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$5;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 740
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 736
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$5;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$4(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 737
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$5;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->access$4(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 738
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 741
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 733
    return-void
.end method
