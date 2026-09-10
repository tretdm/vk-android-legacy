.class public Lcom/vkontakte/android/imagepicker/InlineUtils;
.super Ljava/lang/Object;
.source "InlineUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyFilter(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 7
    .param p0, "activity"    # Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
    .param p1, "filter_id"    # I
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 31
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getAreFiltersSupported()Z

    move-result v5

    if-nez v5, :cond_1

    .line 33
    invoke-virtual {p2, v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setFiltered(I)V

    .line 34
    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 36
    new-instance v3, Lcom/vkontakte/android/imagepicker/InlineUtils$1;

    invoke-direct {v3}, Lcom/vkontakte/android/imagepicker/InlineUtils$1;-><init>()V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 53
    .local v2, "wasFiltered":Z
    :goto_1
    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getFilterId()I

    move-result v5

    if-eq v5, p1, :cond_0

    .line 56
    :cond_2
    invoke-virtual {p2, v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setFiltered(I)V

    .line 57
    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 59
    iget v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    .line 61
    .local v1, "index":I
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    const/16 v6, 0x140

    if-lez p1, :cond_4

    :goto_2
    invoke-virtual {v5, v6, v3}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 62
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->update(I)V

    .line 64
    new-instance v0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;

    invoke-direct {v0, p0, p2, v1}, Lcom/vkontakte/android/imagepicker/InlineUtils$2;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;I)V

    .line 107
    .local v0, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/imagepicker/InlineUtils$3;

    invoke-direct {v4, p2, v2, v0}, Lcom/vkontakte/android/imagepicker/InlineUtils$3;-><init>(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v0    # "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    .end local v1    # "index":I
    .end local v2    # "wasFiltered":Z
    :cond_3
    move v2, v4

    .line 51
    goto :goto_1

    .restart local v1    # "index":I
    .restart local v2    # "wasFiltered":Z
    :cond_4
    move v3, v4

    .line 61
    goto :goto_2
.end method

.method static applyTextToImage(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ZLjava/lang/String;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 4
    .param p0, "activity"    # Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
    .param p1, "inline"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v0, 0x1

    .line 19
    if-nez p3, :cond_0

    .line 27
    .end local p2    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 22
    .restart local p2    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 p2, 0x0

    .end local p2    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, p2}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setText(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 25
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    const/16 v2, 0x142

    invoke-virtual {p3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->invalidateViewer()V

    goto :goto_0

    .line 25
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
