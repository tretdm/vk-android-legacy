.class Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;
.super Ljava/lang/Object;
.source "FiltersListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->showAnimated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/FiltersListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setTranslationY(F)V

    .line 199
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setAlpha(F)V

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setTranslationY(F)V

    .line 193
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 181
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/high16 v1, 0x42e80000    # 116.0f

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setTranslationY(F)V

    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setAlpha(F)V

    .line 187
    return-void
.end method
