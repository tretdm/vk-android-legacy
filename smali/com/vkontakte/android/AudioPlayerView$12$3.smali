.class Lcom/vkontakte/android/AudioPlayerView$12$3;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView$12;->notAvailable(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerView$12;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$12$3;->this$1:Lcom/vkontakte/android/AudioPlayerView$12;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12$3;->this$1:Lcom/vkontakte/android/AudioPlayerView$12;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerView$12;->access$0(Lcom/vkontakte/android/AudioPlayerView$12;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12$3;->this$1:Lcom/vkontakte/android/AudioPlayerView$12;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerView$12;->access$0(Lcom/vkontakte/android/AudioPlayerView$12;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerView;->access$2(Lcom/vkontakte/android/AudioPlayerView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView$12$3;->this$1:Lcom/vkontakte/android/AudioPlayerView$12;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerView$12;->access$0(Lcom/vkontakte/android/AudioPlayerView$12;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    return-void
.end method
