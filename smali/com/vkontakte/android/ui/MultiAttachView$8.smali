.class Lcom/vkontakte/android/ui/MultiAttachView$8;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView;->remove(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MultiAttachView;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$8;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$8;->val$view:Landroid/view/View;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(F)V
    .locals 5
    .param p1, "t"    # F

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 439
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$8;->val$view:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$8;->val$view:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$8;->val$view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 444
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "animate"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    .local v0, "manim":Lcom/vkontakte/android/MethodAnimation;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 446
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 447
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiAttachView$8;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 448
    return-void
.end method
