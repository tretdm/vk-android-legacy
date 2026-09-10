.class Lcom/vkontakte/android/ui/PhotoView$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/PhotoView$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$4;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$4$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoView$4$1$1;-><init>(Lcom/vkontakte/android/ui/PhotoView$4$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 691
    return-void
.end method
