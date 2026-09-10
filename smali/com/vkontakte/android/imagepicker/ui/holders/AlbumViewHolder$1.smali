.class Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder$1;
.super Ljava/lang/Object;
.source "AlbumViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;

    .line 67
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;
    if-eqz v0, :cond_0

    .line 68
    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->onItemClick(I)V

    .line 70
    .end local v0    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/AlbumViewHolder;
    :cond_0
    return-void
.end method
