.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fade(Landroid/view/View;FFILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$after:Ljava/lang/Runnable;

.field private final synthetic val$to:F

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;->val$to:F

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;->val$after:Ljava/lang/Runnable;

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1172
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;->val$to:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1179
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1181
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1173
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1171
    return-void
.end method
