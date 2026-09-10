.class Lcom/vkontakte/android/AudioPlayerActivity$18$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$18$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$2:Lcom/vkontakte/android/AudioPlayerActivity$18$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$18$1;)V
    .locals 1

    .prologue
    .line 753
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1$1;->this$2:Lcom/vkontakte/android/AudioPlayerActivity$18$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1$1;->canceled:Z

    .line 757
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 760
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 761
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1$1;->canceled:Z

    if-eqz v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1$1;->this$2:Lcom/vkontakte/android/AudioPlayerActivity$18$1;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1100(Lcom/vkontakte/android/AudioPlayerActivity;)V

    goto :goto_0
.end method
