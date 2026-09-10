.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$16;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$16;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$16;->val$after:Ljava/lang/Runnable;

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$16;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$16;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1198
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1192
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1191
    return-void
.end method
