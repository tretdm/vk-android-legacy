.class Lcom/vkontakte/android/AudioPlayerView$2;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$2;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$2;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/AudioPlayerActivity;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$2;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$2;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method
