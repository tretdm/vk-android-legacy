.class Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$5;
.super Ljava/lang/Object;
.source "ImagePickerFooterView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateBadgeAnimated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$5;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 652
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 648
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$5;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$4(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 649
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$5;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$4(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 650
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 653
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 645
    return-void
.end method
