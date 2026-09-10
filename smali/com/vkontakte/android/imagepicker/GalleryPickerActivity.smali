.class public Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
.super Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;
.source "GalleryPickerActivity.java"


# static fields
.field private static final BackgroundScale:F = 0.965f

.field private static final TempCameraAlbumId:I


# instance fields
.field public albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

.field private checkView:Landroid/widget/ImageView;

.field private checkWrap:Landroid/widget/FrameLayout;

.field private contentView:Landroid/widget/FrameLayout;

.field private cropperCallback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

.field public currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

.field public currentAlbumIndex:I

.field public currentCameraBucketFound:Z

.field public currentCameraBucketId:I

.field public currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field public currentImageIndex:I

.field private currentOrientation:I

.field public currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

.field private filtersView:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

.field footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

.field private frameView:Landroid/widget/FrameLayout;

.field private headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

.field private imageViewerCallback:Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

.field private imagesGridCallback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

.field private isBlocked:Z

.field isGoingBackToGrid:Z

.field public maximumSelectedSize:I

.field public noAlbumsList:Z

.field public noImagesGrid:Z

.field private onCheckTouchListener:Landroid/view/View$OnTouchListener;

.field private photoView:Landroid/widget/FrameLayout;

.field public selectedImages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private showingAlbum:Z

.field public showingViewer:Z

.field public singleMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    .line 76
    iput-boolean v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    .line 77
    iput-boolean v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->noAlbumsList:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->noImagesGrid:Z

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    .line 102
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$1;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->imageViewerCallback:Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    .line 150
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$2;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->imagesGridCallback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

    .line 188
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 215
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$3;->setRequiredApiVersionForStateListeners(I)Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;->toOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->onCheckTouchListener:Landroid/view/View$OnTouchListener;

    .line 217
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$4;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->cropperCallback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

    .line 1067
    iput-boolean v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingAlbum:Z

    .line 1144
    iput-boolean v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingViewer:Z

    .line 1308
    iput-boolean v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ZLandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 988
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->goBack()V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Z)V
    .locals 0

    .prologue
    .line 1377
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->exit(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1005
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initializeAlbumsFragment()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->displayAlbums()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showCaptionBox()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1199
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getAlbumView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->cropperCallback:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$CropperCallback;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Lcom/vkontakte/android/imagepicker/ui/FiltersListView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Z)V
    .locals 0

    .prologue
    .line 1091
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setIsBlocked(Z)V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->blockOrientation()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 0

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateEditorActions(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showCropper()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->unblockOrientation()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->hideCropper()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/AlbumEntry;Z)V
    .locals 0

    .prologue
    .line 1125
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->openAlbum(ILcom/vkontakte/android/imagepicker/entries/AlbumEntry;Z)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->clearCurrentImage()V

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V
    .locals 0

    .prologue
    .line 1247
    invoke-direct/range {p0 .. p6}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->openImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 1215
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getImageView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1340
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->backToGrid()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1220
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->loadAndOpenImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->applyCrop()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->resetCrop()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->addNewImageToCameraAlbum(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    return-void
.end method

.method private addNewImageToCameraAlbum(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 5
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1027
    iget-boolean v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    if-gt v1, v2, :cond_1

    .line 1029
    :cond_0
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->toggleChecked()V

    .line 1030
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    .line 1033
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->setBadge(IZ)V

    .line 1038
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentCameraBucketFound:Z

    if-nez v1, :cond_3

    .line 1040
    new-instance v0, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v2

    invoke-direct {v0, v4, v1, v2}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;-><init>(ILjava/lang/String;I)V

    .line 1041
    .local v0, "album":Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->setIsCamera(Z)V

    .line 1043
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->addAlbum(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V

    .line 1045
    iput-boolean v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentCameraBucketFound:Z

    .line 1046
    iput v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentCameraBucketId:I

    .line 1053
    :goto_0
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->addImageToBeginning(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 1055
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->updateList()V

    .line 1056
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateThumbnailForAlbum(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V

    .line 1058
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-eqz v1, :cond_2

    .line 1060
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->updateList()V

    .line 1061
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateThumbnailForImage(I)V

    .line 1064
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->forceOpen(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 1065
    return-void

    .line 1050
    .end local v0    # "album":Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    iget v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentCameraBucketId:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->getAlbumByBucketId(I)Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    move-result-object v0

    .restart local v0    # "album":Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    goto :goto_0
.end method

.method private applyCrop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 716
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->instance()Lcom/vkontakte/android/imagepicker/gl/FilterStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->clear()V

    .line 718
    iget v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    .line 719
    .local v2, "index":I
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 720
    .local v1, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getCropData()[F

    move-result-object v0

    .line 722
    .local v0, "coords":[F
    invoke-virtual {v1, v5}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setCropped([F)V

    .line 723
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 728
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->dropTouches()V

    .line 730
    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v4, v0, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v0, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget v3, v0, v3

    aget v4, v0, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, v0, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 732
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->resetCrop()V

    .line 795
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    new-instance v4, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

    invoke-direct {v4, p0, v1, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;[F)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->fadeCropper(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private backToAlbums()V
    .locals 3

    .prologue
    .line 1357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setIsShowingAlbum(Z)V

    .line 1358
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 1359
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->showActionButton(I)V

    .line 1360
    return-void
.end method

.method private backToGrid()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1342
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    if-eqz v0, :cond_0

    .line 1344
    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    .line 1345
    invoke-direct {p0, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateCurrentRect(Z)Z

    .line 1348
    :cond_0
    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateCurrentRect(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1353
    :goto_0
    return-void

    .line 1351
    :cond_1
    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setIsShowingViewer(Z)V

    .line 1352
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showCheck(Z)V

    goto :goto_0
.end method

.method private clearCurrentImage()V
    .locals 1

    .prologue
    .line 1211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 1212
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    .line 1213
    return-void
.end method

.method private displayAlbums()V
    .locals 3

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 1123
    return-void
.end method

.method private exit(Z)V
    .locals 5
    .param p1, "isCanceled"    # Z

    .prologue
    .line 1379
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->instance()Lcom/vkontakte/android/imagepicker/gl/FilterStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->clear()V

    .line 1381
    if-eqz p1, :cond_1

    .line 1383
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->clearStyledThumbsCache()V

    .line 1384
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setResult(I)V

    .line 1407
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->finish()V

    .line 1408
    :cond_0
    return-void

    .line 1388
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1393
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    if-eqz v3, :cond_2

    .line 1394
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getResultPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1399
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1401
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1402
    .local v0, "data":Landroid/content/Intent;
    const-string v3, "images"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1404
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1390
    .end local v0    # "data":Landroid/content/Intent;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 1391
    .local v1, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getResultPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private forceOpen(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 3
    .param p1, "album"    # Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getBucketId()I

    move-result v1

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getBucketId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1437
    :goto_0
    return-void

    .line 1417
    :cond_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;

    invoke-direct {v0, p0, p2, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$28;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V

    .line 1433
    .local v0, "proc":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-nez v1, :cond_1

    .line 1434
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->getAlbumIndex(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->openAlbum(ILcom/vkontakte/android/imagepicker/entries/AlbumEntry;Z)V

    .line 1436
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private forceSetScale(F)V
    .locals 1
    .param p1, "scale"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setScaleX(F)V

    .line 1303
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setScaleY(F)V

    .line 1304
    return-void
.end method

.method private getAlbumView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentImageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getCurrentIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getImageView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getImageView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getGridViewAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 1364
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->isBlocked:Z

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->prepareCropper(Z)V

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingViewer:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->noImagesGrid:Z

    if-nez v0, :cond_2

    .line 1369
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->backToGrid()V

    goto :goto_0

    .line 1370
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingAlbum:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->noAlbumsList:Z

    if-nez v0, :cond_3

    .line 1371
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->backToAlbums()V

    goto :goto_0

    .line 1373
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->exit(Z)V

    goto :goto_0
.end method

.method private hideCropper()V
    .locals 4

    .prologue
    .line 707
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->hideCropper()V

    .line 708
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->hideCropperAction()V

    .line 710
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->reloadImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLjava/lang/Runnable;)V

    .line 712
    :cond_0
    return-void
.end method

.method private initialize(Z)V
    .locals 8
    .param p1, "loadAlbums"    # Z

    .prologue
    const/16 v7, 0x110

    const/16 v6, 0x8

    const/high16 v4, 0x42640000    # 57.0f

    const/high16 v5, 0x42140000    # 37.0f

    const/4 v3, -0x1

    .line 376
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$6;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;-><init>(Landroid/content/Context;Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView$Callback;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    .line 385
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->getDeviceHasCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    const v1, 0x7f0201ea

    new-instance v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$7;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v7, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->addActionButton(IILandroid/view/View$OnClickListener;)V

    .line 399
    :cond_0
    new-instance v1, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$8;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;-><init>(Landroid/content/Context;ILcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView$Callback;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    .line 464
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    .line 465
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 468
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    .line 469
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 473
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    .line 474
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 477
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    .line 478
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->dp(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->dp(F)I

    move-result v3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->onCheckTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 480
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 482
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->dp(F)I

    move-result v3

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->dp(F)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 488
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 489
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 490
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 492
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 495
    :cond_1
    if-eqz p1, :cond_3

    .line 497
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initializeAlbumsFragment()V

    .line 498
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->displayAlbums()V

    .line 505
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setContentView(Landroid/view/View;)V

    .line 506
    return-void

    .line 399
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->hideActionButton(I)V

    goto :goto_1
.end method

.method private initializeAlbumWithImages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->noAlbumsList:Z

    .line 325
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingAlbum:Z

    .line 327
    invoke-direct {p0, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initialize(Z)V

    .line 329
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->setTitle(I)V

    .line 331
    new-instance v0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->setAlbumData(ILjava/util/List;)V

    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->imagesGridCallback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->setCallback(Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;)V

    .line 335
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 336
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->setBadge(IZ)V

    .line 337
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->setCompleteButtonType(I)V

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 340
    return-void
.end method

.method private initializeAlbumsFragment()V
    .locals 2

    .prologue
    .line 1007
    new-instance v0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    .line 1008
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->albumsFragment:Lcom/vkontakte/android/imagepicker/AlbumsListFragment;

    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$24;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$24;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->setCallback(Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;)V

    .line 1023
    return-void
.end method

.method private initializeForSingleImage(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    .line 314
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->noAlbumsList:Z

    .line 315
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->noImagesGrid:Z

    .line 317
    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initialize(Z)V

    .line 319
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->openImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V

    .line 320
    return-void
.end method

.method private loadAndOpenImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    const/4 v7, 0x0

    .line 1222
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setIsBlocked(Z)V

    .line 1225
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v6

    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$26;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;ILjava/util/List;)V

    invoke-virtual {v6, p2, v7, v0, v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;Z)V

    .line 1245
    return-void
.end method

.method private openAlbum(ILcom/vkontakte/android/imagepicker/entries/AlbumEntry;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "album"    # Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    .param p3, "setOnly"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1127
    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setIsShowingAlbum(Z)V

    .line 1129
    iput p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumIndex:I

    .line 1131
    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getIsCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    const/16 v2, 0x110

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->hideActionButton(I)V

    .line 1134
    :cond_0
    new-instance v1, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    .line 1136
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getBucketId()I

    move-result v2

    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->setAlbumData(ILjava/util/List;)V

    .line 1137
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->imagesGridCallback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->setCallback(Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;)V

    .line 1139
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v1, v2, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 1140
    return-void
.end method

.method private openImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p3, "view"    # Landroid/view/View;
    .param p5, "animated"    # Z
    .param p6, "closeEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    const v5, 0x3f770a3d    # 0.965f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1249
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setIsBlocked(Z)V

    .line 1254
    new-instance v0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    .line 1255
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0, p4}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setImages(Ljava/util/List;)V

    .line 1256
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setCurrentIndex(I)V

    .line 1258
    iput p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    .line 1259
    iget v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 1260
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    .line 1262
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->imageViewerCallback:Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setCallback(Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;)V

    .line 1264
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 1266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_2

    .line 1268
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    if-eqz p5, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, p2, p3, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->animateIn(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Z)V

    .line 1270
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getHardAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1272
    if-eqz p5, :cond_6

    .line 1274
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v3

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailAnimationDuration()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->scale(Landroid/view/View;FI)V

    .line 1283
    :cond_2
    :goto_2
    if-nez p5, :cond_3

    .line 1285
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1287
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    const/4 v3, 0x3

    new-array v3, v3, [I

    iget v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    aput v4, v3, v1

    iget v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v2

    const/4 v4, 0x2

    iget v5, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->loadImages([I)V

    .line 1290
    :cond_3
    if-nez p6, :cond_4

    .line 1291
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0, p6}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setCloseEnabled(Z)V

    .line 1293
    :cond_4
    invoke-direct {p0, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setIsShowingViewer(Z)V

    .line 1295
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    if-nez v0, :cond_0

    .line 1296
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showCheck(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 1268
    goto :goto_1

    .line 1278
    :cond_6
    invoke-direct {p0, v5}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->forceSetScale(F)V

    goto :goto_2
.end method

.method private reloadImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p3, "withNoFilter"    # Z
    .param p4, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 674
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->instance()Lcom/vkontakte/android/imagepicker/gl/FilterStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->clear()V

    .line 676
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;

    invoke-direct {v1, p0, p2, p4, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/lang/Runnable;I)V

    .line 702
    const/4 v2, 0x0

    .line 676
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;Z)V

    .line 703
    return-void
.end method

.method private resetCrop()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 799
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    const/16 v3, 0x141

    invoke-virtual {v0, v3, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 800
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateBadgeVisible(Z)V

    .line 801
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setCropped([F)V

    .line 802
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 803
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->removeStyledThumb(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->prepareCropper(Z)V

    .line 805
    return-void

    :cond_0
    move v0, v2

    .line 800
    goto :goto_0
.end method

.method private setIsBlocked(Z)V
    .locals 2
    .param p1, "isBlocked"    # Z

    .prologue
    .line 1093
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->isBlocked:Z

    .line 1095
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->setIsBlocked(Z)V

    .line 1097
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->emptyOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    :cond_0
    return-void

    .line 1098
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIsShowingAlbum(Z)V
    .locals 1
    .param p1, "isShowing"    # Z

    .prologue
    .line 1071
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingAlbum:Z

    .line 1073
    if-nez p1, :cond_0

    .line 1074
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    .line 1076
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingAlbum:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateBackButton(Z)V

    .line 1077
    return-void

    .line 1076
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setIsShowingViewer(Z)V
    .locals 5
    .param p1, "isShowing"    # Z

    .prologue
    .line 1148
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingViewer:Z

    .line 1150
    if-nez p1, :cond_0

    .line 1152
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$25;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 1176
    .local v0, "remover":Ljava/lang/Runnable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 1178
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getCurrentImageView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->animateOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1180
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getHardAnimationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailAnimationDuration()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->scale(Landroid/view/View;FI)V

    .line 1192
    .end local v0    # "remover":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iget-boolean v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingViewer:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateCompleteButtonEnabled(Z)V

    .line 1193
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    iget-boolean v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingViewer:Z

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->showEditorAction(Z)V

    .line 1195
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateEditorActions(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 1196
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->showingViewer:Z

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->updateForImageViewer(Z)V

    .line 1197
    return-void

    .line 1185
    .restart local v0    # "remover":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->clearImages()V

    .line 1186
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1188
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->clearCurrentImage()V

    goto :goto_0

    .line 1192
    .end local v0    # "remover":Ljava/lang/Runnable;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private showCaptionBox()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 839
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateFilterActionButton()V

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getText()Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, "rawText":Ljava/lang/String;
    :goto_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 845
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 847
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->dp(F)I

    move-result v9

    .line 848
    .local v9, "padding":I
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 849
    .local v8, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 851
    new-instance v2, Landroid/widget/EditText;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 852
    .local v2, "textView":Landroid/widget/EditText;
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 853
    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v2, v11, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 854
    const v0, 0x84001

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 856
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 857
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 859
    new-instance v5, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$18;

    invoke-direct {v5, p0, v2, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$18;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 874
    .local v5, "applier":Ljava/lang/Runnable;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v10, -0x2

    invoke-direct {v0, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 878
    new-instance v4, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;

    invoke-direct {v4, p0, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$19;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Landroid/widget/EditText;)V

    .line 915
    .local v4, "watcher":Landroid/text/TextWatcher;
    invoke-virtual {v2}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$20;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$20;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 927
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$21;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 937
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$22;

    invoke-direct {v1, p0, v5}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$22;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 946
    new-array v6, v11, [Landroid/app/AlertDialog;

    .line 948
    .local v6, "dialog":[Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$23;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/text/TextWatcher;Ljava/lang/Runnable;[Landroid/app/AlertDialog;)V

    invoke-virtual {v10, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 981
    const/4 v0, 0x0

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    aput-object v1, v6, v0

    .line 982
    return-void

    .line 842
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

.method private showCropper()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 626
    iget v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    .line 627
    .local v3, "index":I
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 628
    .local v2, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->removeCropData()[F

    move-result-object v1

    .line 630
    .local v1, "coords":[F
    :goto_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$13;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;[F)V

    .line 644
    .local v0, "block":Ljava/lang/Runnable;
    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v4

    if-nez v4, :cond_2

    .line 646
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 670
    :goto_1
    return-void

    .line 628
    .end local v0    # "block":Ljava/lang/Runnable;
    .end local v1    # "coords":[F
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 650
    .restart local v0    # "block":Ljava/lang/Runnable;
    .restart local v1    # "coords":[F
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setPreventInvalidateViewer(Z)V

    .line 651
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->clearNeighborImages(I)V

    .line 653
    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 655
    invoke-direct {p0, v5}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setIsBlocked(Z)V

    .line 657
    new-instance v4, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$14;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;[FLcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/lang/Runnable;)V

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->reloadImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLjava/lang/Runnable;)V

    goto :goto_1
.end method

.method private updateCheck(ZLandroid/widget/ImageView;)V
    .locals 1
    .param p1, "isChecked"    # Z
    .param p2, "check"    # Landroid/widget/ImageView;

    .prologue
    .line 990
    if-eqz p1, :cond_0

    const v0, 0x7f0201e7

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 991
    return-void

    .line 990
    :cond_0
    const v0, 0x7f0201e6

    goto :goto_0
.end method

.method private updateCurrentRect(Z)Z
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1312
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->hasRect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1314
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getCurrentImageView()Landroid/view/View;

    move-result-object v0

    .line 1316
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    .line 1317
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    iget v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setRect(ILandroid/view/View;)V

    .line 1337
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v1

    .line 1320
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->imageViewerCallback:Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    const v3, 0x3f7fbe77    # 0.999f

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;->onBackgroundUpdate(F)V

    .line 1321
    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    .line 1323
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$27;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$27;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    .line 1331
    const-wide/16 v3, 0x5a

    .line 1323
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1333
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateEditorActions(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 8
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 995
    if-eqz p1, :cond_0

    .line 997
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    .line 999
    .local v0, "styled":Z
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v3

    if-eqz v3, :cond_1

    move v5, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    invoke-virtual {v6, v5, v4, v3, v1}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateEditorActionsEnabled(ZZZZ)V

    .line 1001
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getFilterId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->update(I)V

    .line 1003
    .end local v0    # "styled":Z
    :cond_0
    return-void

    .restart local v0    # "styled":Z
    :cond_1
    move v5, v2

    .line 999
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
.method getFiltersView()Lcom/vkontakte/android/imagepicker/ui/FiltersListView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 607
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    if-nez v1, :cond_0

    .line 611
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x42e80000    # 116.0f

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 612
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 614
    new-instance v1, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    .line 616
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    iget-boolean v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    sub-int v1, v4, v1

    invoke-virtual {v2, v3, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 619
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/imagepicker/ui/FiltersListView;

    return-object v1

    .line 616
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public navigateToFragment(Landroid/support/v4/app/Fragment;IZ)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "target"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1105
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 1106
    const v2, 0x7f04000a

    const v3, 0x7f04000b

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 1108
    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1112
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v2, "Cannot navigate to fragment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 345
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setRequestedOrientation(I)V

    .line 347
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$5;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->goBack()V

    .line 1464
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1471
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-eqz v1, :cond_0

    .line 1472
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->rememberPosition()V

    .line 1474
    :cond_0
    const/4 v0, 0x0

    .line 1476
    .local v0, "needUpdate":Z
    iget v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    .line 1478
    const/4 v0, 0x1

    .line 1480
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentOrientation:I

    .line 1483
    :cond_1
    invoke-super {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1485
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    if-eqz v1, :cond_2

    .line 1486
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumFragment:Lcom/vkontakte/android/imagepicker/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->updateColumnsSize()V

    .line 1487
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 237
    invoke-static {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->setStaticContext(Landroid/content/Context;)V

    .line 238
    sput-object p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    .line 240
    invoke-super {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->onCreate(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 244
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "selection_limit"

    const/4 v9, -0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    .line 245
    iget v8, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    if-eq v8, v7, :cond_2

    const-string v8, "single_mode"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    :goto_0
    iput-boolean v6, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    .line 247
    iget-boolean v6, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    if-eq v6, v7, :cond_0

    .line 248
    iput v7, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentOrientation:I

    .line 252
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 255
    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 261
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 273
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 275
    invoke-direct {p0, v7}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->exit(Z)V

    .line 309
    .end local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :goto_2
    return-void

    :cond_2
    move v6, v7

    .line 245
    goto :goto_0

    .line 261
    .restart local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .local v4, "p":Landroid/os/Parcelable;
    move-object v5, v4

    .line 263
    check-cast v5, Landroid/net/Uri;

    .line 264
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v8

    invoke-virtual {v8, p0, v5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImageByUri(Landroid/app/Activity;Landroid/net/Uri;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    .line 266
    .local v0, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->toggleChecked()V

    .line 269
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    .end local v0    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v4    # "p":Landroid/os/Parcelable;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v7, :cond_5

    .line 280
    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initializeForSingleImage(Ljava/util/List;)V

    goto :goto_2

    .line 282
    :cond_5
    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initializeAlbumWithImages(Ljava/util/List;)V

    goto :goto_2

    .line 289
    .end local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :cond_6
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 291
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 292
    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v6

    invoke-virtual {v6, p0, v5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImageByUri(Landroid/app/Activity;Landroid/net/Uri;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    .line 294
    .restart local v0    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    if-eqz v0, :cond_7

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .restart local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initializeForSingleImage(Ljava/util/List;)V

    goto :goto_2

    .line 302
    .end local v1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    :cond_7
    invoke-direct {p0, v7}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->exit(Z)V

    goto :goto_2

    .line 308
    .end local v0    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_8
    invoke-direct {p0, v7}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->initialize(Z)V

    goto :goto_2
.end method

.method prepareCropper(Z)V
    .locals 1
    .param p1, "toShow"    # Z

    .prologue
    .line 809
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$17;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 833
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

    .line 1444
    if-nez p1, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1447
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    .line 1449
    .local v2, "from":F
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move v3, v4

    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailAnimationDuration()I

    move-result v4

    new-instance v5, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$29;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$29;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fade(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 1458
    return-void

    .line 1447
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

    .line 1087
    sget-object v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateBackButton(Z)V

    .line 1088
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateIsRetryShowing(Z)V

    .line 1089
    return-void
.end method

.method public updateBackButton(Z)V
    .locals 2
    .param p1, "isCancel"    # Z

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->setBackVisible(Z)V

    .line 1082
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;

    if-eqz p1, :cond_1

    const/16 v0, 0x11

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerHeaderView;->setTitle(I)V

    .line 1083
    return-void

    .line 1081
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1082
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->singleMode:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto :goto_1

    :cond_2
    const/16 v0, 0x12

    goto :goto_1
.end method

.method public updateThumbnail(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 560
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImage:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 561
    .local v1, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    iget v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentAlbumIndex:I

    .line 563
    .local v0, "albumIndex":I
    new-instance v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$11;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;I)V

    .line 593
    .local v2, "updater":Ljava/lang/Runnable;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$12;

    invoke-direct {v4, p0, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$12;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method

.method public updateThumbnailForAlbum(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V
    .locals 1
    .param p1, "album"    # Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    .prologue
    .line 516
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$9;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method

.method public updateThumbnailForImage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 537
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$10;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 556
    return-void
.end method
