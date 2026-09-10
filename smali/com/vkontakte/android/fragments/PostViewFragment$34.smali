.class Lcom/vkontakte/android/fragments/PostViewFragment$34;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->animateLikePhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$34;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$34;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4800(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$34;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4802(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1468
    :cond_0
    return-void
.end method
