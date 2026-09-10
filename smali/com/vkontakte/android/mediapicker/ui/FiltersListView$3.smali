.class Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;
.super Ljava/lang/Object;
.source "FiltersListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->hideAnimated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

.field final synthetic val$translation:F


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/FiltersListView;F)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->val$translation:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setAlpha(F)V

    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->val$translation:F

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setTranslationY(F)V

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setVisibility(I)V

    .line 263
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setAlpha(F)V

    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->val$translation:F

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setTranslationY(F)V

    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setVisibility(I)V

    .line 256
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 249
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setTranslationY(F)V

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setAlpha(F)V

    .line 248
    return-void
.end method
