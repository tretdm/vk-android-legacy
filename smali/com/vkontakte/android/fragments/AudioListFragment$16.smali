.class Lcom/vkontakte/android/fragments/AudioListFragment$16;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment;->animateStateTransition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$v:Landroid/view/View;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 627
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const v3, 0x7f09006e

    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 617
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$v:Landroid/view/View;

    const v1, 0x7f09006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 618
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$v:Landroid/view/View;

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 619
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->val$v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$16;->this$0:Lcom/vkontakte/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$29(Lcom/vkontakte/android/fragments/AudioListFragment;Z)V

    .line 621
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 612
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 606
    return-void
.end method
