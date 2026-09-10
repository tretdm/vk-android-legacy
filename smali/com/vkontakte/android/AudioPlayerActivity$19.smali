.class Lcom/vkontakte/android/AudioPlayerActivity$19;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity;->updateCoverImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$19;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 822
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$19;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$19$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkontakte/android/AudioPlayerActivity$19$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$19;II)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 832
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$19;->this$0:Lcom/vkontakte/android/AudioPlayerActivity;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$19$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/vkontakte/android/AudioPlayerActivity$19$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity$19;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method
