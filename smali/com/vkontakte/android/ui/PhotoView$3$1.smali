.class Lcom/vkontakte/android/ui/PhotoView$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/PhotoView$3;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$3;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$3$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$3$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$3;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$2000(Lcom/vkontakte/android/ui/PhotoView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$3$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$3;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$702(Lcom/vkontakte/android/ui/PhotoView;Z)Z

    .line 620
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$3$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$3;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$3;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 621
    return-void
.end method
