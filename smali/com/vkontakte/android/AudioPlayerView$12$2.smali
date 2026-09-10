.class Lcom/vkontakte/android/AudioPlayerView$12$2;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView$12;->onImageLoaded(Landroid/graphics/Bitmap;II)V
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$12$2;->this$1:Lcom/vkontakte/android/AudioPlayerView$12;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerView$12$2;)Lcom/vkontakte/android/AudioPlayerView$12;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12$2;->this$1:Lcom/vkontakte/android/AudioPlayerView$12;

    return-object v0
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 326
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12$2;->this$1:Lcom/vkontakte/android/AudioPlayerView$12;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerView$12;->access$0(Lcom/vkontakte/android/AudioPlayerView$12;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12$2;->this$1:Lcom/vkontakte/android/AudioPlayerView$12;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerView$12;->access$0(Lcom/vkontakte/android/AudioPlayerView$12;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    if-eq v0, p2, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12$2;->this$1:Lcom/vkontakte/android/AudioPlayerView$12;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerView$12;->access$0(Lcom/vkontakte/android/AudioPlayerView$12;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$12$2$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerView$12$2$1;-><init>(Lcom/vkontakte/android/AudioPlayerView$12$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
