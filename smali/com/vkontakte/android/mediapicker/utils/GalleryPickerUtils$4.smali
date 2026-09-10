.class Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;
.super Ljava/lang/Object;
.source "GalleryPickerUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fade(Landroid/view/View;FFILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

.field final synthetic val$after:Ljava/lang/Runnable;

.field final synthetic val$to:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;->val$to:F

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 400
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 405
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;->val$to:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 407
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;->val$after:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;->val$after:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 415
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Cannot call after action"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 401
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 399
    return-void
.end method
