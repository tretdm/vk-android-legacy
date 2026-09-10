.class Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener$1;
.super Ljava/lang/Object;
.source "OnCheckClickListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;->onTapCanceled(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;

.field private final synthetic val$check:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener$1;->this$0:Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener$1;->val$check:Landroid/view/View;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 56
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener$1;->val$check:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener$1;->val$check:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 54
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 57
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 58
    return-void
.end method
