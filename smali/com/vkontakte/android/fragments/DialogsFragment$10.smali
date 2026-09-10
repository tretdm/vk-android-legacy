.class Lcom/vkontakte/android/fragments/DialogsFragment$10;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->hideStatePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DialogsFragment$10;)Lcom/vkontakte/android/fragments/DialogsFragment;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 553
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 554
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_1

    .line 555
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 556
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x3

    new-array v3, v1, [Landroid/animation/Animator;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$11(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/view/View;

    move-result-object v1

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v2

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$11(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/view/View;

    move-result-object v1

    const-string v4, "translationY"

    new-array v5, v7, [F

    aput v9, v5, v2

    const/high16 v6, 0x42180000    # 38.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v8

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v4

    const-string v5, "translationY"

    new-array v6, v7, [F

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    aput v1, v6, v2

    aput v9, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 557
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 558
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 559
    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$10$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$10$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$10;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 564
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 565
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 566
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->scrollBy(II)V

    .line 567
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v3, -0x5

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->scrollBy(II)V

    .line 572
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$12(Lcom/vkontakte/android/fragments/DialogsFragment;Ljava/lang/Runnable;)V

    .line 573
    return-void

    .restart local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    move v1, v2

    .line 556
    goto :goto_0

    .line 569
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$11(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$10;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_1

    .line 556
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
