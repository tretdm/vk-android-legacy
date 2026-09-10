.class Lcom/vkontakte/android/AudioPlayerActivity$18$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$18;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$18;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 740
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iget-object v3, v3, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$000(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 741
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/vkontakte/android/CoverBgDrawable;

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Lcom/vkontakte/android/CoverBgDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 742
    .local v0, "bd":Lcom/vkontakte/android/CoverBgDrawable;
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iget-object v3, v3, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$000(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CoverBgDrawable;->fadeIn(Landroid/graphics/drawable/Drawable;)V

    .line 744
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 745
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iget-object v3, v3, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$000(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 746
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iget-boolean v3, v3, Lcom/vkontakte/android/AudioPlayerActivity$18;->val$force:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iget-object v3, v3, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$900(Lcom/vkontakte/android/AudioPlayerActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 747
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iget-object v3, v3, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1000(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3

    .line 770
    :cond_2
    :goto_0
    return-void

    .line 748
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iget-object v3, v3, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1000(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080074

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 749
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_4

    .line 750
    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 751
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_5

    .line 752
    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/AudioPlayerActivity$18$1$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/AudioPlayerActivity$18$1$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$18$1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 767
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$1;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iget-object v3, v3, Lcom/vkontakte/android/AudioPlayerActivity$18;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1100(Lcom/vkontakte/android/AudioPlayerActivity;)V

    goto :goto_0
.end method
