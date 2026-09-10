.class Lcom/vkontakte/android/AudioPlayerActivity$18$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$18;->notAvailable(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

.field private final synthetic val$bg:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$18;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$2;->val$bg:Landroid/graphics/drawable/Drawable;

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v5, 0x7f020092

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 783
    invoke-static {}, Lcom/vkontakte/android/Global;->isTouchwiz()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity$18;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$18;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 792
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 793
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity$18;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$18;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 794
    :cond_0
    return-void

    .line 786
    :cond_1
    new-instance v0, Lcom/vkontakte/android/AudioPlayerActivity$NoPaddingTransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$2;->val$bg:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerActivity$18;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$18;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity$NoPaddingTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 787
    .local v0, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 788
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$18$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$18;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity$18;->access$0(Lcom/vkontakte/android/AudioPlayerActivity$18;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->access$1(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 789
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0
.end method
