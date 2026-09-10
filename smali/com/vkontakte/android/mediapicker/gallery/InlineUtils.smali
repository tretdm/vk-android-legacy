.class public Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;
.super Ljava/lang/Object;
.source "InlineUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyEnhance(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V
    .locals 13
    .param p0, "activity"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "inputImage"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "imageIndex"    # I

    .prologue
    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    new-instance v9, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {v9, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 155
    .local v9, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    new-instance v12, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v12, v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .local v12, "result":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    new-instance v10, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$5;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$5;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 165
    .local v10, "ondone":Ljava/lang/Runnable;
    new-instance v11, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;

    invoke-direct {v11, v10, p0, v9}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;-><init>(Ljava/lang/Runnable;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 189
    .local v11, "onerror":Ljava/lang/Runnable;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$7;

    invoke-direct {v4, v12}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$7;-><init>(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 198
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v1, p1

    .line 191
    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V

    .line 201
    :cond_2
    invoke-virtual {v12}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 203
    .local v8, "enhancedImage":Landroid/graphics/Bitmap;
    if-nez v8, :cond_3

    .line 205
    new-instance v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$8;

    invoke-direct {v0, v11}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$8;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {v12, v8}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setEnhanced(Z)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setEnhanced(Z)V

    .line 221
    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->clearImageData()V

    .line 222
    invoke-virtual {v9, v12}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$9;

    invoke-direct {v6, v9}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$9;-><init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 234
    const/4 v7, -0x1

    move-object v2, v9

    .line 227
    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filter(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;I)V

    .line 236
    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    if-nez v0, :cond_4

    .line 238
    invoke-virtual {v12}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Landroid/graphics/Bitmap;)V

    .line 239
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 245
    :cond_4
    new-instance v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;

    move-object v1, p1

    move-object v2, v9

    move-object v3, v10

    move v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;-><init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/lang/Runnable;ILcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public static applyFilter(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)V
    .locals 9
    .param p0, "activity"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "filter_id"    # I
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p3, "force"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    invoke-virtual {p2, v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setFiltered(I)V

    .line 39
    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 41
    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$1;

    invoke-direct {v1}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$1;-><init>()V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v3

    if-eqz v3, :cond_5

    move v7, v1

    .line 54
    .local v7, "wasFiltered":Z
    :goto_1
    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getFilterId()I

    move-result v5

    .line 56
    .local v5, "lastFilterId":I
    :goto_2
    if-nez p3, :cond_3

    .line 58
    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getFilterId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 61
    :cond_2
    invoke-virtual {p2, v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setFiltered(I)V

    .line 62
    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    iget v4, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 67
    .local v4, "index":I
    if-nez p3, :cond_4

    .line 69
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    const/16 v8, 0x140

    if-lez p1, :cond_7

    :goto_3
    invoke-virtual {v3, v8, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->update(I)V

    .line 73
    :cond_4
    new-instance v0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;

    move v1, p3

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;-><init>(ZLcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;II)V

    .line 119
    .local v0, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    new-instance v6, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;

    invoke-direct {v6, p2, v7, v0}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;-><init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    .line 128
    .local v6, "runnable":Ljava/lang/Runnable;
    if-eqz p3, :cond_8

    .line 129
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_sync(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v0    # "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    .end local v4    # "index":I
    .end local v5    # "lastFilterId":I
    .end local v6    # "runnable":Ljava/lang/Runnable;
    .end local v7    # "wasFiltered":Z
    :cond_5
    move v7, v2

    .line 53
    goto :goto_1

    .restart local v7    # "wasFiltered":Z
    :cond_6
    move v5, v2

    .line 54
    goto :goto_2

    .restart local v4    # "index":I
    .restart local v5    # "lastFilterId":I
    :cond_7
    move v1, v2

    .line 69
    goto :goto_3

    .line 131
    .restart local v0    # "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    .restart local v6    # "runnable":Ljava/lang/Runnable;
    :cond_8
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public static applyTextToImage(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLjava/lang/String;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 4
    .param p0, "activity"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "inline"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v0, 0x1

    .line 24
    if-nez p3, :cond_0

    .line 32
    .end local p2    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 27
    .restart local p2    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 p2, 0x0

    .end local p2    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, p2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setText(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 30
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    const/16 v2, 0x142

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 31
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->invalidateViewer()V

    goto :goto_0

    .line 30
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static updateThumbnailForImage(Landroid/graphics/Bitmap;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p3, "activity"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 136
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;-><init>(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
