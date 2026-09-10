.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChosen(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z
    .locals 5
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 163
    .local v0, "beChecked":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 165
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v3, v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v4, v4, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    if-le v3, v4, :cond_1

    .line 167
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->shakeBadge()V

    .line 184
    :goto_1
    return v1

    .end local v0    # "beChecked":Z
    :cond_0
    move v0, v2

    .line 161
    goto :goto_0

    .line 172
    .restart local v0    # "beChecked":Z
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_2
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->hasBucket()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getBucketId()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->updateAlbumSelectedCount(IZ)V

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->setBadge(IZ)V

    move v1, v2

    .line 184
    goto :goto_1

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onImageOpened(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/util/List;Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p4, "view"    # Lcom/vkontakte/android/imagepicker/ui/LocalImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;",
            "Lcom/vkontakte/android/imagepicker/ui/LocalImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-static {v0, p1, p2, p4, p3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->access$6(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V

    .line 156
    return-void
.end method
