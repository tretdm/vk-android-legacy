.class Lcom/vkontakte/android/NewVideoPlayerActivity$17;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->onPlaybackCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v5, 0x7f0901d2

    const/4 v4, -0x2

    .line 893
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v3, 0x7f0901d6

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0201ea

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 894
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$12(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 895
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$21(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 896
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 897
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 898
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 901
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 902
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v3, 0x7f0901d2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 906
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 907
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 908
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 909
    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 914
    return-void

    .line 903
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
