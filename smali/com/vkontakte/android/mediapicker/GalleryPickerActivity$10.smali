.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$10;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnailForAlbum(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$album:Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$10;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$10;->val$album:Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 619
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$10;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$10;->val$album:Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->getAlbumIndex(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)I

    move-result v1

    .line 620
    .local v1, "index":I
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$10;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v3, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$20(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v2

    .line 622
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;

    .line 626
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
    if-eqz v0, :cond_0

    .line 627
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$10;->val$album:Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getPreview()Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->updateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 629
    .end local v0    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
    :cond_0
    return-void
.end method
