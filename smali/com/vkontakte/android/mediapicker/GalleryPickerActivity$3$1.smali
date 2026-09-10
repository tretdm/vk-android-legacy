.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->returnScale()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 192
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$100(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$100(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 200
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 193
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 191
    return-void
.end method
