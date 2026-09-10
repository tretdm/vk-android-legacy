.class Lcom/vkontakte/android/AudioPlayerActivity$24;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->setPlaying(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;

.field private final synthetic val$playing:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$24;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$24;->val$playing:Z

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$24;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerActivity;->updatePager()V

    .line 917
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$24;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$24;->val$playing:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/AudioPlayerActivity;->access$16()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 918
    return-void

    .line 917
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/AudioPlayerActivity;->access$17()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method
