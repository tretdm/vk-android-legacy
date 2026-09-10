.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$9;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateThumbnailForAlbum(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$album:Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$9;->val$album:Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 521
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$9;->val$album:Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->getAlbumIndex(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)I

    move-result v1

    .line 522
    .local v1, "index":I
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$9;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v3, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$15(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)Landroid/view/View;

    move-result-object v2

    .line 524
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;

    .line 528
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;
    if-eqz v0, :cond_0

    .line 529
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$9;->val$album:Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getPreview()Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;->updateImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 531
    .end local v0    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;
    :cond_0
    return-void
.end method
