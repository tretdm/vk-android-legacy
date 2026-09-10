.class Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6$1;
.super Ljava/lang/Object;
.source "GalleryPickerUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 518
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 508
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 509
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 510
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 522
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 514
    return-void
.end method
