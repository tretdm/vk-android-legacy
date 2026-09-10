.class Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1$1;
.super Ljava/lang/Object;
.source "ImagePickerFooterView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1$1;->this$4:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1;

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 887
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1$1;->this$4:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1$1;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1$1;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8$1;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$8;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->access$4(Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 893
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 888
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 886
    return-void
.end method
