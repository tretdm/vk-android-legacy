.class public Lcom/vkontakte/android/mediapicker/entries/GalleryContext;
.super Ljava/lang/Object;
.source "GalleryContext.java"


# instance fields
.field public albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

.field public currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

.field public currentAlbumIndex:I

.field public currentCameraBucketFound:Z

.field public currentCameraBucketId:I

.field public currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field public currentImageIndex:I

.field public currentVKCameraBucketFound:Z

.field public currentVKCameraBucketId:I

.field public currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasAlbumsFragment()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
