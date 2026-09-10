.class Lcom/vkontakte/android/AudioPlayerView$12$2$1;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView$12$2;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/AudioPlayerView$12$2;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerView$12$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$12$2$1;->this$2:Lcom/vkontakte/android/AudioPlayerView$12$2;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerView$12$2$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 315
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView$12$2$1;->this$2:Lcom/vkontakte/android/AudioPlayerView$12$2;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerView$12$2;->access$0(Lcom/vkontakte/android/AudioPlayerView$12$2;)Lcom/vkontakte/android/AudioPlayerView$12;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerView$12;->access$0(Lcom/vkontakte/android/AudioPlayerView$12;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerView;->access$2(Lcom/vkontakte/android/AudioPlayerView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 316
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/vkontakte/android/CoverBgDrawable;

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView$12$2$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Lcom/vkontakte/android/CoverBgDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 317
    .local v0, "bd":Lcom/vkontakte/android/CoverBgDrawable;
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView$12$2$1;->this$2:Lcom/vkontakte/android/AudioPlayerView$12$2;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerView$12$2;->access$0(Lcom/vkontakte/android/AudioPlayerView$12$2;)Lcom/vkontakte/android/AudioPlayerView$12;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerView$12;->access$0(Lcom/vkontakte/android/AudioPlayerView$12;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerView;->access$2(Lcom/vkontakte/android/AudioPlayerView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CoverBgDrawable;->fadeIn(Landroid/graphics/drawable/Drawable;)V

    .line 319
    return-void
.end method
