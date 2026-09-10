.class Lcom/vkontakte/android/AudioPlayerView$12;
.super Ljava/lang/Object;
.source "AudioPlayerView.java"

# interfaces
.implements Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerView;->doUpdateCover()V
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerView$12;)Lcom/vkontakte/android/AudioPlayerView;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    return-object v0
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$12$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$12$3;-><init>(Lcom/vkontakte/android/AudioPlayerView$12;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 338
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    if-eq v0, p2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$12$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerView$12$1;-><init>(Lcom/vkontakte/android/AudioPlayerView$12;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView$12;->this$0:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    const/4 v2, 0x2

    new-instance v3, Lcom/vkontakte/android/AudioPlayerView$12$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerView$12$2;-><init>(Lcom/vkontakte/android/AudioPlayerView$12;)V

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    goto :goto_0
.end method
