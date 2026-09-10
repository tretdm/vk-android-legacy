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

.field private final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$4;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    iput-object p2, p0, Lcom/vkontakte/android/ui/PhotoView$4$1;->val$after:Ljava/lang/Runnable;

    .line 680
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PhotoView$4$1;)Lcom/vkontakte/android/ui/PhotoView$4;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$4;->access$0(Lcom/vkontakte/android/ui/PhotoView$4;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$4$1$1;

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView$4$1;->val$after:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ui/PhotoView$4$1$1;-><init>(Lcom/vkontakte/android/ui/PhotoView$4$1;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 691
    return-void
.end method
