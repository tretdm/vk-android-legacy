.class Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder$1;
.super Ljava/lang/Object;
.source "AlbumViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;

    .line 68
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
    if-eqz v0, :cond_0

    .line 69
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->onItemClick(I)V

    .line 71
    .end local v0    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
    :cond_0
    return-void
.end method
