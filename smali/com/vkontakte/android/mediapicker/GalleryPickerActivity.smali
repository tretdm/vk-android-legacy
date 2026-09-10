.class public Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
.super Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;
.source "GalleryPickerActivity.java"


# static fields
.field private static final BACKGROUND_SCALE:F = 0.965f

.field private static final DEBUG_OLD_SDK:Z

.field private static final TEMP_CAMERA_ALBUM_ID:I


# instance fields
.field private checkView:Landroid/widget/ImageView;

.field private checkWrap:Landroid/widget/FrameLayout;

.field private chosenOption:I

.field private clearThumbsOnExit:Z

.field private contentView:Landroid/widget/FrameLayout;

.field private cropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

.field private currentOrientation:I

.field private doneCropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

.field private filtersView:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

.field public footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

.field private frameView:Landroid/widget/FrameLayout;

.field private galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

.field private headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

.field private imageViewerCallback:Lcom/vkontakte/android/mediapicker/entries/IVCallback;

.field private imagesGridCallback:Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

.field private isBlocked:Z

.field isGoingBackToGrid:Z

.field public noAlbumsList:Z

.field public noImagesGrid:Z

.field private onCheckTouchListener:Landroid/view/View$OnTouchListener;

.field private photoView:Landroid/widget/FrameLayout;

.field rectUpdates:I

.field private showingAlbum:Z

.field public showingViewer:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;-><init>()V

    .line 84
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->clearThumbsOnExit:Z

    .line 86
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->noAlbumsList:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->noImagesGrid:Z

    .line 103
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    .line 112
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$1;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->imageViewerCallback:Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    .line 160
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$2;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->imagesGridCallback:Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

    .line 169
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 239
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->setRequiredApiVersionForStateListeners(I)Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->toOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->onCheckTouchListener:Landroid/view/View$OnTouchListener;

    .line 241
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$4;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->cropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    .line 255
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->doneCropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    .line 1215
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingAlbum:Z

    .line 1292
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    .line 1464
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    .line 1465
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->rectUpdates:I

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->chosenOption:I

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZI[I)V
    .locals 0

    .prologue
    .line 1584
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(ZI[I)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 0

    .prologue
    .line 1178
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->addNewImageToCameraAlbum(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1531
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->goBack()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->blockOrientation()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V
    .locals 0

    .prologue
    .line 1722
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeAlbumsFragment()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->displayAlbums()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCaptionBox()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V
    .locals 0

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->applyEnhance(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1347
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getAlbumView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->cropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/ui/FiltersListView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V
    .locals 0

    .prologue
    .line 1239
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsBlocked(Z)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->doneCropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCropper(ZLcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->unblockOrientation()V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->hideCropper()V

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;Z)V
    .locals 0

    .prologue
    .line 1273
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->openAlbum(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;Z)V

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 0

    .prologue
    .line 1140
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateEditorActions(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1357
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->clearCurrentImage()V

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V
    .locals 0

    .prologue
    .line 1397
    invoke-direct/range {p0 .. p6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->openImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)V
    .locals 0

    .prologue
    .line 1578
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getSquare(I)V

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1363
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getImageView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1509
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->backToGrid()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1368
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->loadAndOpenImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->applyCrop()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->resetCrop()V

    return-void
.end method

.method private addNewImageToCameraAlbum(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 5
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1180
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->addImageToSelected(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1182
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCheck(Z)V

    .line 1183
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBadge(IZ)V

    .line 1188
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-boolean v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketFound:Z

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 1190
    .local v0, "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    :goto_0
    if-nez v0, :cond_1

    .line 1192
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .end local v0    # "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v2

    invoke-direct {v0, v4, v1, v2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;-><init>(ILjava/lang/String;I)V

    .line 1193
    .restart local v0    # "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->setIsCamera(Z)V

    .line 1195
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->addAlbum(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    .line 1197
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iput-boolean v3, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketFound:Z

    .line 1198
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iput v4, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketId:I

    .line 1201
    :cond_1
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->addImageToBeginning(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 1203
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->updateList()V

    .line 1204
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnailForAlbum(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    .line 1206
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_2

    .line 1208
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->updateList()V

    .line 1209
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnailForImage(I)V

    .line 1212
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->forceOpen(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 1213
    return-void

    .line 1188
    .end local v0    # "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketId:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->getAlbumByBucketId(I)Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    move-result-object v0

    goto :goto_0
.end method

.method private applyCrop()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 818
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearCurrentContext()V

    .line 820
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v2, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 821
    .local v2, "index":I
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 822
    .local v1, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCropData()[F

    move-result-object v0

    .line 824
    .local v0, "coords":[F
    invoke-virtual {v1, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setCropped([F)V

    .line 825
    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 828
    const-string v3, "Crop image. 0x1: %f, 1y1: %f, 2x2: %f, 3y2: %f, 4w: %f, 5h: %f, scale: %f"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, v0, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    aget v5, v0, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v9

    aget v5, v0, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v10

    aget v5, v0, v11

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const/4 v6, 0x5

    aget v6, v0, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x6

    aget v6, v0, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->dropTouches()V

    .line 832
    aget v3, v0, v9

    aget v4, v0, v8

    sub-float/2addr v3, v4

    aget v4, v0, v11

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    aget v3, v0, v10

    aget v4, v0, v7

    sub-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, v0, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->resetCrop()V

    .line 884
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    new-instance v4, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

    invoke-direct {v4, p0, v1, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;[F)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->fadeCropper(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private applyEnhance(Z)V
    .locals 4
    .param p1, "doApply"    # Z

    .prologue
    .line 938
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 939
    .local v0, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v1, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 941
    .local v1, "imageIndex":I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-nez v2, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setPreventInvalidateViewer(Z)V

    .line 946
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private backToAlbums()V
    .locals 3

    .prologue
    .line 1526
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsShowingAlbum(Z)V

    .line 1527
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 1528
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->showActionButton(I)V

    .line 1529
    return-void
.end method

.method private backToGrid()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1511
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    if-eqz v0, :cond_0

    .line 1513
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    .line 1514
    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCurrentRect(Z)Z

    .line 1517
    :cond_0
    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCurrentRect(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1522
    :goto_0
    return-void

    .line 1520
    :cond_1
    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsShowingViewer(Z)V

    .line 1521
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCheck(Z)V

    goto :goto_0
.end method

.method private clearCurrentImage()V
    .locals 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1360
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 1361
    return-void
.end method

.method private displayAlbums()V
    .locals 3

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 1271
    return-void
.end method

.method private exit(Z)V
    .locals 3
    .param p1, "isCanceled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1724
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->isRendering()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1726
    const-string v0, "It\'s Rendering. Please, wait!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1745
    :goto_0
    return-void

    .line 1730
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearForOtherContext(Z)V

    .line 1732
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    and-int/2addr p1, v0

    .line 1734
    if-nez p1, :cond_2

    .line 1736
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showOptions()V

    goto :goto_0

    .line 1740
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->clear()V

    .line 1741
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->retrieveSelectedImages()Ljava/util/List;

    .line 1743
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setResult(I)V

    .line 1744
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->finish()V

    goto :goto_0
.end method

.method private exit(ZI[I)V
    .locals 24
    .param p1, "isCanceled"    # Z
    .param p2, "option"    # I
    .param p3, "cropResult"    # [I

    .prologue
    .line 1586
    if-eqz p1, :cond_1

    .line 1720
    :cond_0
    :goto_0
    return-void

    .line 1589
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->clearThumbsOnExit:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1591
    const-string v22, "Clearing thumbs on exit"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1592
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->clear()V

    .line 1595
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsInEditMode()Z

    move-result v5

    .line 1597
    .local v5, "editMode":Z
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v16, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getPassedItems()Ljava/util/ArrayList;

    move-result-object v10

    .line 1599
    .local v10, "passedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->retrieveSelectedImages()Ljava/util/List;

    move-result-object v13

    .line 1601
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    if-eqz v13, :cond_0

    .line 1604
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1606
    .local v2, "cachedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_4

    .line 1612
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getResultPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_5

    .line 1620
    const-string v22, "Wow! No URIs passed"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1606
    :cond_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1608
    .local v8, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getResultPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1624
    .end local v8    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_5
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->clearExcept(Ljava/util/List;)V

    .line 1626
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1628
    .local v4, "data":Landroid/content/Intent;
    if-eqz v5, :cond_10

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getImages()Ljava/util/List;

    move-result-object v9

    .line 1631
    .local v9, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    .local v3, "currentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_6

    .line 1635
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_b

    .line 1638
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1640
    .local v12, "removedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v7, v22, -0x1

    .local v7, "i":I
    :goto_4
    if-gez v7, :cond_c

    .line 1656
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1658
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_6

    .line 1659
    const-string v22, "removed_indexes"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1662
    .end local v7    # "i":I
    .end local v12    # "removedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_7

    .line 1664
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    .local v15, "updatedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1667
    .local v14, "updatedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v7, v0, :cond_e

    .line 1678
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_7

    .line 1680
    const-string v22, "updated_indexes"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1681
    const-string v22, "updated_images"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1690
    .end local v3    # "currentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v9    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v14    # "updatedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "updatedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    :goto_6
    if-ltz p2, :cond_8

    .line 1691
    const-string v22, "chosen_option"

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1693
    :cond_8
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getNeedSquare()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1695
    if-eqz p3, :cond_9

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 1697
    const/16 v22, 0x0

    aget v18, p3, v22

    .local v18, "x1":I
    const/16 v22, 0x2

    aget v19, p3, v22

    .line 1698
    .local v19, "x2":I
    const/16 v22, 0x1

    aget v20, p3, v22

    .local v20, "y1":I
    const/16 v22, 0x3

    aget v21, p3, v22

    .line 1699
    .local v21, "y2":I
    const/16 v22, 0x4

    aget v17, p3, v22

    .local v17, "w":I
    const/16 v22, 0x5

    aget v6, p3, v22

    .line 1701
    .local v6, "h":I
    sub-int v22, v19, v18

    sub-int v23, v21, v20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    if-lez v17, :cond_11

    if-lez v6, :cond_11

    .line 1703
    const-string v22, "cropped"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1704
    const-string v22, "crop_x"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1705
    const-string v22, "crop_y"

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1706
    const-string v22, "crop_width"

    sub-int v23, v19, v18

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1707
    const-string v22, "crop_image_width"

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1708
    const-string v22, "crop_image_height"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1718
    .end local v6    # "h":I
    .end local v17    # "w":I
    .end local v18    # "x1":I
    .end local v19    # "x2":I
    .end local v20    # "y1":I
    .end local v21    # "y2":I
    :cond_9
    :goto_7
    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 1719
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->finish()V

    goto/16 :goto_0

    .line 1630
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1635
    .restart local v3    # "currentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    :cond_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1636
    .restart local v8    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getResultPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1642
    .end local v8    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .restart local v7    # "i":I
    .restart local v12    # "removedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1644
    .restart local v8    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v22

    if-nez v22, :cond_d

    .line 1646
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    if-eqz v10, :cond_d

    if-ltz v7, :cond_d

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_d

    .line 1650
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1651
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1640
    :cond_d
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_4

    .line 1669
    .end local v8    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v12    # "removedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "updatedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "updatedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_e
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1671
    .local v11, "path":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 1673
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 1687
    .end local v3    # "currentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v9    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v11    # "path":Ljava/lang/String;
    .end local v14    # "updatedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "updatedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_10
    const-string v22, "images"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 1712
    .restart local v6    # "h":I
    .restart local v17    # "w":I
    .restart local v18    # "x1":I
    .restart local v19    # "x2":I
    .restart local v20    # "y1":I
    .restart local v21    # "y2":I
    :cond_11
    const-string v22, "cropped"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1713
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "What the hell are you doing: x: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v23, v19, v18

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " y: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-int v23, v21, v20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " w: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " h: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7
.end method

.method private forceOpen(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 3
    .param p1, "album"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getBucketId()I

    move-result v1

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1775
    :goto_0
    return-void

    .line 1754
    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;

    invoke-direct {v0, p0, p2, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    .line 1771
    .local v0, "proc":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-nez v1, :cond_1

    .line 1772
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->getAlbumIndex(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->openAlbum(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;Z)V

    .line 1774
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private forceSetScale(F)V
    .locals 2
    .param p1, "scale"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1460
    :goto_0
    return-void

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setScaleX(F)V

    .line 1459
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setScaleY(F)V

    goto :goto_0
.end method

.method private getAlbumView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentImageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCurrentIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getImageView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getImageView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getGridViewAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private getSquare(I)V
    .locals 2
    .param p1, "option"    # I

    .prologue
    .line 1580
    iput p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->chosenOption:I

    .line 1581
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->prepareCropper(ZZ)V

    .line 1582
    return-void
.end method

.method private goBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1533
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isBlocked:Z

    if-nez v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1539
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->prepareCropper(ZZ)V

    goto :goto_0

    .line 1540
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->noImagesGrid:Z

    if-nez v0, :cond_3

    .line 1541
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->backToGrid()V

    goto :goto_0

    .line 1542
    :cond_3
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingAlbum:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->noAlbumsList:Z

    if-nez v0, :cond_4

    .line 1543
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->backToAlbums()V

    goto :goto_0

    .line 1545
    :cond_4
    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(Z)V

    goto :goto_0
.end method

.method private hideCropper()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 809
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->hideCropper()V

    .line 810
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->hideCropperAction()V

    .line 812
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsProcessed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->reloadImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLjava/lang/Runnable;ZZ)V

    .line 814
    :cond_0
    return-void
.end method

.method private initialize(Z)V
    .locals 9
    .param p1, "loadAlbums"    # Z

    .prologue
    const/16 v8, 0x8

    const/high16 v7, 0x42640000    # 57.0f

    const/high16 v6, 0x42140000    # 37.0f

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 466
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    new-instance v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$7;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;-><init>(Landroid/content/Context;Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    .line 475
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->getDeviceHasCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    const/16 v2, 0x110

    const v3, 0x7f020218

    new-instance v4, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$8;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$8;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->addActionButton(IILandroid/view/View$OnClickListener;)V

    .line 489
    :cond_0
    new-instance v2, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$9;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-direct {v2, p0, v0, v3}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;-><init>(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$Callback;)V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    .line 557
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    .line 558
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 560
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 562
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setViewNotFocusable(Landroid/view/View;)V

    .line 564
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    .line 565
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 567
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 569
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    .line 570
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 573
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setViewNotFocusable(Landroid/view/View;)V

    .line 575
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    .line 576
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->dp(F)I

    move-result v2

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->dp(F)I

    move-result v3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->onCheckTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 578
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 580
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    .line 581
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    const v1, 0x7f020214

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->dp(F)I

    move-result v3

    invoke-static {v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->dp(F)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 586
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 587
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 588
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 590
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 593
    :cond_1
    if-eqz p1, :cond_3

    .line 595
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeAlbumsFragment()V

    .line 596
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->displayAlbums()V

    .line 603
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setContentView(Landroid/view/View;)V

    .line 604
    return-void

    :cond_2
    move v0, v1

    .line 489
    goto/16 :goto_0

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->hideActionButton(I)V

    goto :goto_1
.end method

.method private initializeAlbumWithImages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->noAlbumsList:Z

    .line 406
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingAlbum:Z

    .line 408
    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initialize(Z)V

    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->setTitle(I)V

    .line 412
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->setAlbumData(ILjava/util/List;)V

    .line 414
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->imagesGridCallback:Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->setCallback(Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;)V

    .line 416
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->initialize(Ljava/util/List;)V

    .line 417
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBadge(IZ)V

    .line 418
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setCompleteButtonType(I)V

    .line 420
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 421
    return-void
.end method

.method private initializeAlbumsFragment()V
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    .line 1155
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$26;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$26;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->setCallback(Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;)V

    .line 1176
    return-void
.end method

.method private initializeForViewer(ILjava/util/List;Z)V
    .locals 8
    .param p1, "index"    # I
    .param p3, "editMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setSingleImageShowing(Z)V

    .line 386
    if-eqz p3, :cond_0

    move v0, v5

    :goto_0
    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setSingleModeEnabled(Z)V

    .line 388
    iput-boolean v7, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->noAlbumsList:Z

    .line 389
    iput-boolean v7, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->noImagesGrid:Z

    .line 391
    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initialize(Z)V

    .line 393
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->openImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V

    .line 395
    if-nez p3, :cond_1

    .line 401
    :goto_1
    return-void

    :cond_0
    move v0, v7

    .line 386
    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCheck()V

    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    invoke-direct {p0, v7, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBadge(IZ)V

    goto :goto_1
.end method

.method private loadAndOpenImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1370
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1371
    invoke-direct {p0, v8}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsBlocked(Z)V

    .line 1373
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v6

    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;ILjava/util/List;)V

    .line 1394
    const/4 v7, -0x1

    move-object v1, v6

    move-object v2, p2

    move v3, v9

    move v4, v9

    move-object v5, v0

    move v6, v9

    .line 1373
    invoke-virtual/range {v1 .. v8}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V

    .line 1395
    return-void
.end method

.method private openAlbum(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "album"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    .param p3, "setOnly"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1275
    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsShowingAlbum(Z)V

    .line 1277
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iput p1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumIndex:I

    .line 1279
    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getIsCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    const/16 v2, 0x110

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->hideActionButton(I)V

    .line 1282
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    new-instance v2, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;-><init>()V

    iput-object v2, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    .line 1284
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v2

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->setAlbumData(ILjava/util/List;)V

    .line 1285
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->imagesGridCallback:Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->setCallback(Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;)V

    .line 1287
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 1288
    return-void
.end method

.method private openImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p3, "view"    # Landroid/view/View;
    .param p5, "animated"    # Z
    .param p6, "closeEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    const v5, 0x3f770a3d    # 0.965f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1399
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsBlocked(Z)V

    .line 1404
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    new-instance v3, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-direct {v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    .line 1405
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0, p4}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setImages(Ljava/util/List;)V

    .line 1406
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCurrentIndex(I)V

    .line 1408
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iput p1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 1409
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object v0, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1410
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    .line 1412
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->imageViewerCallback:Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCallback(Lcom/vkontakte/android/mediapicker/entries/IVCallback;)V

    .line 1414
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 1416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_2

    .line 1418
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz p5, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, p2, p3, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->animateIn(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Z)V

    .line 1422
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getHardAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1424
    if-eqz p5, :cond_6

    .line 1426
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v3

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getThumbnailAnimationDuration()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->scale(Landroid/view/View;FI)V

    .line 1436
    :cond_2
    :goto_2
    if-nez p5, :cond_3

    .line 1438
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1440
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    const/4 v3, 0x3

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v4, v4, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    aput v4, v3, v1

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v4, v4, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v5, v5, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->loadImages([I)V

    .line 1443
    :cond_3
    if-nez p6, :cond_4

    .line 1444
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0, p6}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCloseEnabled(Z)V

    .line 1446
    :cond_4
    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsShowingViewer(Z)V

    .line 1448
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1449
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCheck(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 1418
    goto :goto_1

    .line 1430
    :cond_6
    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->forceSetScale(F)V

    goto :goto_2
.end method

.method private reloadImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLjava/lang/Runnable;ZZ)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p3, "noProcessing"    # Z
    .param p4, "after"    # Ljava/lang/Runnable;
    .param p5, "noInvalidateReset"    # Z
    .param p6, "resetContext"    # Z

    .prologue
    .line 770
    if-eqz p6, :cond_0

    .line 771
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearCurrentContext()V

    .line 773
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v9

    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLjava/lang/Runnable;I)V

    .line 804
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, v0

    .line 773
    invoke-virtual/range {v1 .. v8}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V

    .line 805
    return-void
.end method

.method private resetCrop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 888
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    const/16 v1, 0x141

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 890
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateBadgeVisible(Z)V

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setCropped([F)V

    .line 894
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 895
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->remove(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->prepareCropper(ZZ)V

    .line 897
    return-void
.end method

.method private setIsBlocked(Z)V
    .locals 2
    .param p1, "isBlocked"    # Z

    .prologue
    .line 1241
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isBlocked:Z

    .line 1243
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setIsBlocked(Z)V

    .line 1245
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->emptyOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1247
    :cond_0
    return-void

    .line 1246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIsShowingAlbum(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .prologue
    .line 1219
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingAlbum:Z

    .line 1221
    if-nez p1, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    .line 1224
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingAlbum:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateBackButton(Z)V

    .line 1225
    return-void

    .line 1224
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setIsShowingViewer(Z)V
    .locals 5
    .param p1, "isShowing"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    .line 1298
    if-nez p1, :cond_0

    .line 1300
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 1324
    .local v0, "remover":Ljava/lang/Runnable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 1326
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getCurrentImageView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->animateOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1328
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getHardAnimationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getThumbnailAnimationDuration()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->scale(Landroid/view/View;FI)V

    .line 1340
    .end local v0    # "remover":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonEnabled(Z)V

    .line 1341
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iget-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->showEditorAction(Z)V

    .line 1343
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateEditorActions(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 1344
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->updateForImageViewer(Z)V

    .line 1345
    return-void

    .line 1333
    .restart local v0    # "remover":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->clearImages()V

    .line 1334
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1336
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->clearCurrentImage()V

    goto :goto_0

    .line 1340
    .end local v0    # "remover":Ljava/lang/Runnable;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private showCaptionBox()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 985
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateFilterActionButton()V

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getText()Ljava/lang/String;

    move-result-object v3

    .line 990
    .local v3, "rawText":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 991
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 993
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->dp(F)I

    move-result v9

    .line 994
    .local v9, "padding":I
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 995
    .local v8, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 997
    new-instance v2, Landroid/widget/EditText;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 998
    .local v2, "textView":Landroid/widget/EditText;
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 999
    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v2, v11, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1000
    const v0, 0x84001

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1001
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1002
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1004
    new-instance v5, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;

    invoke-direct {v5, p0, v2, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$20;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1019
    .local v5, "applier":Ljava/lang/Runnable;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v10, -0x2

    invoke-direct {v0, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1023
    new-instance v4, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;

    invoke-direct {v4, p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$21;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Landroid/widget/EditText;)V

    .line 1056
    .local v4, "watcher":Landroid/text/TextWatcher;
    invoke-virtual {v2}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$22;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$22;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1068
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1078
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;

    invoke-direct {v1, p0, v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1087
    new-array v6, v11, [Landroid/app/AlertDialog;

    .line 1089
    .local v6, "dialog":[Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$25;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$25;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/text/TextWatcher;Ljava/lang/Runnable;[Landroid/app/AlertDialog;)V

    invoke-virtual {v10, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1122
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    aput-object v0, v6, v12

    .line 1123
    aget-object v0, v6, v12

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1124
    return-void

    .line 988
    .end local v2    # "textView":Landroid/widget/EditText;
    .end local v3    # "rawText":Ljava/lang/String;
    .end local v4    # "watcher":Landroid/text/TextWatcher;
    .end local v5    # "applier":Ljava/lang/Runnable;
    .end local v6    # "dialog":[Landroid/app/AlertDialog;
    .end local v7    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "layout":Landroid/widget/LinearLayout;
    .end local v9    # "padding":I
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private showCropper(ZLcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V
    .locals 9
    .param p1, "crop"    # Z
    .param p2, "callback"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    .prologue
    const/4 v3, 0x1

    .line 724
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 725
    .local v1, "index":I
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 726
    .local v2, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->removeCropData()[F

    move-result-object v8

    .line 728
    .local v8, "coords":[F
    :goto_0
    new-instance v7, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;

    invoke-direct {v7, p0, v8, v2, p2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$14;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;[FLcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V

    .line 745
    .local v7, "block":Ljava/lang/Runnable;
    if-nez v8, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsProcessed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 747
    :cond_0
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 766
    :goto_1
    return-void

    .line 726
    .end local v7    # "block":Ljava/lang/Runnable;
    .end local v8    # "coords":[F
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 751
    .restart local v7    # "block":Ljava/lang/Runnable;
    .restart local v8    # "coords":[F
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->clearNeighborImages(I)V

    .line 753
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 755
    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsBlocked(Z)V

    .line 757
    new-instance v4, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$15;

    invoke-direct {v4, p0, v7}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$15;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Ljava/lang/Runnable;)V

    .line 765
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-eqz v0, :cond_3

    move v6, v3

    :goto_2
    move-object v0, p0

    move v5, v3

    .line 757
    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->reloadImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLjava/lang/Runnable;ZZ)V

    goto :goto_1

    .line 765
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private showOptions()V
    .locals 5

    .prologue
    .line 1551
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getCompleteOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1553
    .local v1, "options":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 1555
    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(ZI[I)V

    .line 1576
    :goto_0
    return-void

    .line 1561
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1562
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const/16 v2, 0x35

    :goto_1
    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1563
    new-instance v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1575
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1562
    :cond_2
    const/16 v2, 0x34

    goto :goto_1
.end method

.method private updateCheck(ZLandroid/widget/ImageView;)V
    .locals 1
    .param p1, "isChecked"    # Z
    .param p2, "check"    # Landroid/widget/ImageView;

    .prologue
    .line 1137
    if-eqz p1, :cond_0

    const v0, 0x7f020215

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1138
    return-void

    .line 1137
    :cond_0
    const v0, 0x7f020214

    goto :goto_0
.end method

.method private updateCurrentRect(Z)Z
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 1469
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->hasRect()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    .line 1471
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getCurrentImageView()Landroid/view/View;

    move-result-object v0

    .line 1473
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    .line 1475
    :cond_1
    iput v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->rectUpdates:I

    .line 1476
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setRect(ILandroid/view/View;)V

    .line 1506
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    return v1

    .line 1480
    .restart local v0    # "view":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->imageViewerCallback:Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    const v3, 0x3f7fbe77    # 0.999f

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/mediapicker/entries/IVCallback;->onBackgroundUpdate(F)V

    .line 1482
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->checkAvailable()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->rectUpdates:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->rectUpdates:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_5

    .line 1484
    :cond_4
    iput v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->rectUpdates:I

    .line 1486
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->clearThumb()V

    goto :goto_0

    .line 1490
    :cond_5
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    .line 1492
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$29;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$29;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 1500
    const-wide/16 v3, 0x5a

    .line 1492
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1502
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateEditorActions(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 8
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1142
    if-eqz p1, :cond_0

    .line 1144
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    .line 1146
    .local v0, "styled":Z
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    invoke-virtual {v6, v5, v4, v3, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateEditorActionsEnabled(ZZZZ)V

    .line 1148
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getFilterId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->update(I)V

    .line 1150
    .end local v0    # "styled":Z
    :cond_0
    return-void

    .restart local v0    # "styled":Z
    :cond_1
    move v5, v2

    .line 1146
    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 705
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    if-nez v1, :cond_0

    .line 709
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x42e80000    # 116.0f

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 710
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 712
    new-instance v1, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    .line 714
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    sub-int v1, v4, v1

    invoke-virtual {v2, v3, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 717
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    return-object v1

    .line 714
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getFooterView()Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    return-object v0
.end method

.method public getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    return-object v0
.end method

.method public navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "target"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1253
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 1254
    const v2, 0x7f04000a

    const v3, 0x7f04000b

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 1256
    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1260
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    :goto_0
    return-void

    .line 1262
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v2, "Cannot navigate to fragment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->unblockOrientation()V

    .line 428
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 433
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->deleteImage()V

    goto :goto_0

    .line 437
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$6;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->invoke(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1806
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->goBack()V

    .line 1807
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1814
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_0

    .line 1815
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->rememberPosition()V

    .line 1817
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz v1, :cond_1

    .line 1818
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->clearRect()V

    .line 1820
    :cond_1
    const/4 v0, 0x0

    .line 1822
    .local v0, "needUpdate":Z
    iget v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->currentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_2

    .line 1824
    const/4 v0, 0x1

    .line 1826
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->currentOrientation:I

    .line 1829
    :cond_2
    invoke-super {p0, p1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1831
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_3

    .line 1832
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->updateColumnsSize()V

    .line 1834
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    if-eqz v1, :cond_4

    .line 1835
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateButtonsMaxWidth()V

    .line 1836
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 281
    invoke-static {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setStaticLocalContext(Landroid/content/Context;)V

    .line 283
    sput-object p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 284
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearForOtherContext(Z)V

    .line 286
    invoke-super {p0, p1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->onCreate(Landroid/os/Bundle;)V

    .line 288
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 290
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "selection_limit"

    const/4 v10, -0x1

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v10, "single_mode"

    invoke-virtual {v2, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "need_square"

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v8, v10, v11}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->initialize(IZZ)V

    .line 291
    const-string v8, "complete_options"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "complete_options"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    :goto_0
    const-string v10, "complete_single_options"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v9, "complete_single_options"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    :cond_0
    invoke-static {v8, v9}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setCompleteOptions(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 292
    const-string v8, "prevent_styling"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setPreventStyling(Z)V

    .line 294
    const-string v8, "no_thumbs"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->clearThumbsOnExit:Z

    .line 295
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->currentOrientation:I

    .line 297
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/Window;->requestFeature(I)Z

    .line 299
    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 304
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 316
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 318
    invoke-direct {p0, v13}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(Z)V

    .line 379
    .end local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :goto_2
    return-void

    :cond_2
    move-object v8, v9

    .line 291
    goto :goto_0

    .line 304
    .restart local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .local v4, "p":Landroid/os/Parcelable;
    move-object v7, v4

    .line 306
    check-cast v7, Landroid/net/Uri;

    .line 307
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v9

    invoke-virtual {v9, p0, v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImageByUri(Landroid/app/Activity;Landroid/net/Uri;)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    .line 309
    .local v0, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->toggleChecked()V

    .line 312
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    .end local v0    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v4    # "p":Landroid/os/Parcelable;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v13, :cond_5

    .line 323
    invoke-direct {p0, v12, v1, v12}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeForViewer(ILjava/util/List;Z)V

    goto :goto_2

    .line 325
    :cond_5
    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeAlbumWithImages(Ljava/util/List;)V

    goto :goto_2

    .line 331
    .end local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :cond_6
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 333
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 335
    .restart local v7    # "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v8

    invoke-virtual {v8, p0, v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImageByUri(Landroid/app/Activity;Landroid/net/Uri;)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    .line 337
    .restart local v0    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    if-eqz v0, :cond_7

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .restart local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-direct {p0, v12, v1, v12}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeForViewer(ILjava/util/List;Z)V

    goto :goto_2

    .line 345
    .end local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    :cond_7
    invoke-direct {p0, v13}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(Z)V

    goto :goto_2

    .line 351
    .end local v0    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_8
    const-string v8, "edit_images"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 353
    const-string v8, "edit_images"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 355
    .local v6, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_9

    .line 357
    invoke-direct {p0, v13}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(Z)V

    goto :goto_2

    .line 361
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .restart local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_a

    .line 372
    invoke-static {v13, v6}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setEditModeEnabled(ZLjava/util/ArrayList;)V

    .line 373
    const-string v8, "edit_index"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8, v1, v13}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeForViewer(ILjava/util/List;Z)V

    goto/16 :goto_2

    .line 363
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 365
    .local v5, "path":Ljava/lang/String;
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {v0, v5}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(Ljava/lang/String;)V

    .line 367
    .restart local v0    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->addImageToSelected(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z

    goto :goto_3

    .line 378
    .end local v0    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    invoke-direct {p0, v13}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initialize(Z)V

    goto/16 :goto_2
.end method

.method prepareCropper(ZZ)V
    .locals 1
    .param p1, "toShow"    # Z
    .param p2, "crop"    # Z

    .prologue
    .line 901
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$18;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZZ)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 926
    return-void
.end method

.method showBadge(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 930
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateBadgeVisible(Z)V

    .line 932
    :cond_0
    return-void

    .line 931
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showCheck()V
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1782
    return-void
.end method

.method public showCheck(Z)V
    .locals 6
    .param p1, "hide"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1787
    if-nez p1, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1790
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    .line 1792
    .local v2, "from":F
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v3, v4

    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getThumbnailAnimationDuration()I

    move-result v4

    new-instance v5, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$32;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$32;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fade(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 1801
    return-void

    .line 1790
    .end local v2    # "from":F
    :cond_2
    if-eqz p1, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public showRetryButton(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1235
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateBackButton(Z)V

    .line 1236
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateIsRetryShowing(Z)V

    .line 1237
    return-void
.end method

.method public updateBackButton(Z)V
    .locals 2
    .param p1, "isCancel"    # Z

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->setBackVisible(Z)V

    .line 1230
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    if-eqz p1, :cond_1

    const/16 v0, 0x11

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->setTitle(I)V

    .line 1231
    return-void

    .line 1229
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1230
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto :goto_1

    :cond_2
    const/16 v0, 0x12

    goto :goto_1
.end method

.method public updateCheck(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    .line 1133
    return-void
.end method

.method public updateThumbnail(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 658
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 659
    .local v1, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v0, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumIndex:I

    .line 661
    .local v0, "albumIndex":I
    new-instance v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$12;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V

    .line 691
    .local v2, "updater":Ljava/lang/Runnable;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$13;

    invoke-direct {v4, p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$13;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 699
    return-void
.end method

.method public updateThumbnailForAlbum(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V
    .locals 1
    .param p1, "album"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .prologue
    .line 614
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$10;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 631
    return-void
.end method

.method public updateThumbnailForImage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 635
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$11;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 654
    return-void
.end method
