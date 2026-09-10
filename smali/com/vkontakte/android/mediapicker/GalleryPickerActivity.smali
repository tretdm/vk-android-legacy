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

    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->doneCropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    .line 1223
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingAlbum:Z

    .line 1300
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    .line 1472
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    .line 1473
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->rectUpdates:I

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    iget v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->chosenOption:I

    return v0
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZI[I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # [I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(ZI[I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->addNewImageToCameraAlbum(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->goBack()V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->blockOrientation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeAlbumsFragment()V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->displayAlbums()V

    return-void
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCaptionBox()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->applyEnhance(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLandroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getAlbumView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->cropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/ui/FiltersListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->filtersView:Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsBlocked(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->blockOrientation()V

    return-void
.end method

.method static synthetic access$2500(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->doneCropperCallback:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCropper(ZLcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->unblockOrientation()V

    return-void
.end method

.method static synthetic access$2800(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->hideCropper()V

    return-void
.end method

.method static synthetic access$2900(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    .param p3, "x3"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->openAlbum(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateEditorActions(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->clearCurrentImage()V

    return-void
.end method

.method static synthetic access$3200(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z

    .prologue
    .line 76
    invoke-direct/range {p0 .. p6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->openImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getSquare(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getImageView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->backToGrid()V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Ljava/util/List;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->loadAndOpenImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->applyCrop()V

    return-void
.end method

.method static synthetic access$900(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->resetCrop()V

    return-void
.end method

.method private addNewImageToCameraAlbum(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 5
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1188
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->addImageToSelected(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1190
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCheck(Z)V

    .line 1191
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setBadge(IZ)V

    .line 1196
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-boolean v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketFound:Z

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 1198
    .local v0, "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    :goto_0
    if-nez v0, :cond_1

    .line 1200
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .end local v0    # "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v2

    invoke-direct {v0, v4, v1, v2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;-><init>(ILjava/lang/String;I)V

    .line 1201
    .restart local v0    # "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->setIsCamera(Z)V

    .line 1203
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->addAlbum(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    .line 1205
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iput-boolean v3, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketFound:Z

    .line 1206
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iput v4, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentCameraBucketId:I

    .line 1209
    :cond_1
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->addImageToBeginning(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 1211
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->updateList()V

    .line 1212
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnailForAlbum(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    .line 1214
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_2

    .line 1216
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->updateList()V

    .line 1217
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnailForImage(I)V

    .line 1220
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->forceOpen(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 1221
    return-void

    .line 1196
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
    .line 1534
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsShowingAlbum(Z)V

    .line 1535
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/app/Fragment;IZ)V

    .line 1536
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    const/16 v1, 0x110

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->showActionButton(I)V

    .line 1537
    return-void
.end method

.method private backToGrid()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1519
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    if-eqz v0, :cond_0

    .line 1521
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    .line 1522
    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCurrentRect(Z)Z

    .line 1525
    :cond_0
    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCurrentRect(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1530
    :goto_0
    return-void

    .line 1528
    :cond_1
    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsShowingViewer(Z)V

    .line 1529
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCheck(Z)V

    goto :goto_0
.end method

.method private clearCurrentImage()V
    .locals 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1368
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    const/4 v1, -0x1

    iput v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 1369
    return-void
.end method

.method private displayAlbums()V
    .locals 3

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/app/Fragment;IZ)V

    .line 1279
    return-void
.end method

.method private exit(Z)V
    .locals 3
    .param p1, "isCanceled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1732
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->isRendering()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1734
    const-string v0, "It\'s Rendering. Please, wait!!!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1753
    :goto_0
    return-void

    .line 1738
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearForOtherContext(Z)V

    .line 1740
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    and-int/2addr p1, v0

    .line 1742
    if-nez p1, :cond_2

    .line 1744
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showOptions()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1740
    goto :goto_1

    .line 1748
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->clear()V

    .line 1749
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->retrieveSelectedImages()Ljava/util/List;

    .line 1751
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setResult(I)V

    .line 1752
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->finish()V

    goto :goto_0
.end method

.method private exit(ZI[I)V
    .locals 25
    .param p1, "isCanceled"    # Z
    .param p2, "option"    # I
    .param p3, "cropResult"    # [I

    .prologue
    .line 1594
    if-eqz p1, :cond_1

    .line 1728
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->clearThumbsOnExit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1599
    const-string v23, "Clearing thumbs on exit"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1600
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->clear()V

    .line 1603
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsInEditMode()Z

    move-result v5

    .line 1605
    .local v5, "editMode":Z
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1606
    .local v17, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getPassedItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 1607
    .local v11, "passedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->retrieveSelectedImages()Ljava/util/List;

    move-result-object v14

    .line 1609
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    if-eqz v14, :cond_0

    .line 1612
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1614
    .local v2, "cachedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1616
    .local v9, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getResultPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1620
    .end local v9    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getResultPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-nez v23, :cond_5

    .line 1628
    const-string v23, "Wow! No URIs passed"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1632
    :cond_5
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->clearExcept(Ljava/util/List;)V

    .line 1634
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1636
    .local v4, "data":Landroid/content/Intent;
    if-eqz v5, :cond_10

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getImages()Ljava/util/List;

    move-result-object v10

    .line 1639
    .local v10, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1641
    .local v3, "currentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_a

    .line 1643
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1644
    .restart local v9    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getResultPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1638
    .end local v3    # "currentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v10    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1646
    .restart local v3    # "currentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1648
    .local v13, "removedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v7, v23, -0x1

    .local v7, "i":I
    :goto_4
    if-ltz v7, :cond_9

    .line 1650
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1652
    .restart local v9    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v23

    if-nez v23, :cond_8

    .line 1654
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    if-eqz v11, :cond_8

    if-ltz v7, :cond_8

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_8

    .line 1658
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1659
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1648
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 1664
    .end local v9    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_9
    invoke-static {v13}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1666
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_a

    .line 1667
    const-string v23, "removed_indexes"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1670
    .end local v7    # "i":I
    .end local v13    # "removedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_d

    .line 1672
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1673
    .local v16, "updatedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    .local v15, "updatedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_c

    .line 1677
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1679
    .local v12, "path":Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 1681
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1686
    .end local v12    # "path":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_d

    .line 1688
    const-string v23, "updated_indexes"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1689
    const-string v23, "updated_images"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1698
    .end local v3    # "currentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v10    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v15    # "updatedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "updatedIndexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_d
    :goto_6
    if-ltz p2, :cond_e

    .line 1699
    const-string v23, "chosen_option"

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1701
    :cond_e
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getNeedSquare()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1703
    if-eqz p3, :cond_f

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_f

    .line 1705
    const/16 v23, 0x0

    aget v19, p3, v23

    .local v19, "x1":I
    const/16 v23, 0x2

    aget v20, p3, v23

    .line 1706
    .local v20, "x2":I
    const/16 v23, 0x1

    aget v21, p3, v23

    .local v21, "y1":I
    const/16 v23, 0x3

    aget v22, p3, v23

    .line 1707
    .local v22, "y2":I
    const/16 v23, 0x4

    aget v18, p3, v23

    .local v18, "w":I
    const/16 v23, 0x5

    aget v6, p3, v23

    .line 1709
    .local v6, "h":I
    sub-int v23, v20, v19

    sub-int v24, v22, v21

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    if-lez v18, :cond_11

    if-lez v6, :cond_11

    .line 1711
    const-string v23, "cropped"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1712
    const-string v23, "crop_x"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1713
    const-string v23, "crop_y"

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1714
    const-string v23, "crop_width"

    sub-int v24, v20, v19

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1715
    const-string v23, "crop_image_width"

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1716
    const-string v23, "crop_image_height"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1726
    .end local v6    # "h":I
    .end local v18    # "w":I
    .end local v19    # "x1":I
    .end local v20    # "x2":I
    .end local v21    # "y1":I
    .end local v22    # "y2":I
    :cond_f
    :goto_7
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 1727
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->finish()V

    goto/16 :goto_0

    .line 1695
    :cond_10
    const-string v23, "images"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 1720
    .restart local v6    # "h":I
    .restart local v18    # "w":I
    .restart local v19    # "x1":I
    .restart local v20    # "x2":I
    .restart local v21    # "y1":I
    .restart local v22    # "y2":I
    :cond_11
    const-string v23, "cropped"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1721
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "What the hell are you doing: x: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sub-int v24, v20, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " y: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sub-int v24, v22, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " w: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " h: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7
.end method

.method private forceOpen(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 3
    .param p1, "album"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 1757
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

    .line 1783
    :goto_0
    return-void

    .line 1762
    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;

    invoke-direct {v0, p0, p2, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$31;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    .line 1779
    .local v0, "proc":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-nez v1, :cond_1

    .line 1780
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->getAlbumIndex(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->openAlbum(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;Z)V

    .line 1782
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
    .line 1463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1468
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setScaleX(F)V

    .line 1467
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
    .line 1357
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
    .line 1362
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
    .line 1373
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
    .line 1588
    iput p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->chosenOption:I

    .line 1589
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->prepareCropper(ZZ)V

    .line 1590
    return-void
.end method

.method private goBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1541
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isBlocked:Z

    if-nez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1547
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->prepareCropper(ZZ)V

    goto :goto_0

    .line 1548
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->noImagesGrid:Z

    if-nez v0, :cond_3

    .line 1549
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->backToGrid()V

    goto :goto_0

    .line 1550
    :cond_3
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingAlbum:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->noAlbumsList:Z

    if-nez v0, :cond_4

    .line 1551
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->backToAlbums()V

    goto :goto_0

    .line 1553
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

    const v3, 0x7f02019a

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

    const v1, 0x7f020196

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

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/app/Fragment;IZ)V

    .line 421
    return-void
.end method

.method private initializeAlbumsFragment()V
    .locals 2

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    .line 1163
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->albumsFragment:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$26;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$26;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->setCallback(Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;)V

    .line 1184
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

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    if-nez p3, :cond_0

    move v0, v7

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
    move v0, v5

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

    .line 1378
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1379
    invoke-direct {p0, v8}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsBlocked(Z)V

    .line 1381
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v6

    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$28;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;ILjava/util/List;)V

    const/4 v7, -0x1

    move-object v1, v6

    move-object v2, p2

    move v3, v9

    move v4, v9

    move-object v5, v0

    move v6, v9

    invoke-virtual/range {v1 .. v8}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V

    .line 1403
    return-void
.end method

.method private openAlbum(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "album"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    .param p3, "setOnly"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1283
    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsShowingAlbum(Z)V

    .line 1285
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iput p1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumIndex:I

    .line 1287
    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getIsCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    const/16 v2, 0x110

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->hideActionButton(I)V

    .line 1290
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    new-instance v2, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;-><init>()V

    iput-object v2, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    .line 1292
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v2

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->setAlbumData(ILjava/util/List;)V

    .line 1293
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->imagesGridCallback:Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->setCallback(Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;)V

    .line 1295
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    if-nez p3, :cond_1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/app/Fragment;IZ)V

    .line 1296
    return-void

    .line 1295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1407
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsBlocked(Z)V

    .line 1412
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    new-instance v3, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-direct {v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    .line 1413
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0, p4}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setImages(Ljava/util/List;)V

    .line 1414
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCurrentIndex(I)V

    .line 1416
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iput p1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    .line 1417
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object v0, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 1418
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    .line 1420
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->imageViewerCallback:Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCallback(Lcom/vkontakte/android/mediapicker/entries/IVCallback;)V

    .line 1422
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {p0, v0, v3, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->navigateToFragment(Landroid/app/Fragment;IZ)V

    .line 1424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_2

    .line 1426
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-nez p5, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, p2, p3, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->animateIn(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Z)V

    .line 1430
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getHardAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1432
    if-eqz p5, :cond_6

    .line 1434
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v3

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getThumbnailAnimationDuration()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->scale(Landroid/view/View;FI)V

    .line 1444
    :cond_2
    :goto_2
    if-nez p5, :cond_3

    .line 1446
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1448
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    const/4 v3, 0x3

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v4, v4, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    aput v4, v3, v2

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v4, v4, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v5, v5, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->loadImages([I)V

    .line 1451
    :cond_3
    if-nez p6, :cond_4

    .line 1452
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0, p6}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCloseEnabled(Z)V

    .line 1454
    :cond_4
    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setIsShowingViewer(Z)V

    .line 1456
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1457
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCheck(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 1426
    goto :goto_1

    .line 1438
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

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, v0

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
    .line 1249
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isBlocked:Z

    .line 1251
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->setIsBlocked(Z)V

    .line 1253
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->photoView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->emptyOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    :cond_0
    return-void

    .line 1254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIsShowingAlbum(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    .prologue
    .line 1227
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingAlbum:Z

    .line 1229
    if-nez p1, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    .line 1232
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingAlbum:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateBackButton(Z)V

    .line 1233
    return-void

    .line 1232
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIsShowingViewer(Z)V
    .locals 5
    .param p1, "isShowing"    # Z

    .prologue
    .line 1304
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    .line 1306
    if-nez p1, :cond_0

    .line 1308
    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$27;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 1332
    .local v0, "remover":Ljava/lang/Runnable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 1334
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getCurrentImageView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->animateOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1336
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getHardAnimationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
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

    .line 1348
    .end local v0    # "remover":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectedCount()I

    move-result v1

    if-lez v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateCompleteButtonEnabled(Z)V

    .line 1349
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    iget-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->showEditorAction(Z)V

    .line 1351
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateEditorActions(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 1352
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showingViewer:Z

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->updateForImageViewer(Z)V

    .line 1353
    return-void

    .line 1341
    .restart local v0    # "remover":Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->clearImages()V

    .line 1342
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1344
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->clearCurrentImage()V

    goto :goto_0

    .line 1348
    .end local v0    # "remover":Ljava/lang/Runnable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showCaptionBox()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

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

    invoke-virtual {v2, v12, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1000
    const v0, 0x84001

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1001
    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1002
    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setMaxLines(I)V

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

    .line 1068
    .local v4, "watcher":Landroid/text/TextWatcher;
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$22;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$22;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1078
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;

    invoke-direct {v1, p0, v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$23;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1087
    new-array v6, v12, [Landroid/app/AlertDialog;

    .line 1089
    .local v6, "dialog":[Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$24;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/text/TextWatcher;Ljava/lang/Runnable;[Landroid/app/AlertDialog;)V

    invoke-virtual {v10, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1122
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    aput-object v0, v6, v11

    .line 1123
    aget-object v0, v6, v11

    new-instance v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$25;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$25;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1130
    aget-object v0, v6, v11

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1131
    aget-object v0, v6, v11

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1132
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

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->reloadImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLjava/lang/Runnable;ZZ)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private showOptions()V
    .locals 5

    .prologue
    .line 1559
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getCompleteOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1561
    .local v1, "options":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 1563
    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(ZI[I)V

    .line 1584
    :goto_0
    return-void

    .line 1569
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1570
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

    .line 1571
    new-instance v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$30;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1583
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1570
    :cond_2
    const/16 v2, 0x34

    goto :goto_1
.end method

.method private updateCheck(ZLandroid/widget/ImageView;)V
    .locals 1
    .param p1, "isChecked"    # Z
    .param p2, "check"    # Landroid/widget/ImageView;

    .prologue
    .line 1145
    if-eqz p1, :cond_0

    const v0, 0x7f020197

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1146
    return-void

    .line 1145
    :cond_0
    const v0, 0x7f020196

    goto :goto_0
.end method

.method private updateCurrentRect(Z)Z
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 1477
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->hasRect()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    .line 1479
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getCurrentImageView()Landroid/view/View;

    move-result-object v0

    .line 1481
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    .line 1483
    :cond_1
    iput v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->rectUpdates:I

    .line 1484
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setRect(ILandroid/view/View;)V

    .line 1514
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    return v1

    .line 1488
    .restart local v0    # "view":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->imageViewerCallback:Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    const v3, 0x3f7fbe77    # 0.999f

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/mediapicker/entries/IVCallback;->onBackgroundUpdate(F)V

    .line 1490
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

    .line 1492
    :cond_4
    iput v4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->rectUpdates:I

    .line 1494
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->clearThumb()V

    goto :goto_0

    .line 1498
    :cond_5
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    .line 1500
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->frameView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$29;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$29;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    const-wide/16 v3, 0x5a

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1510
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateEditorActions(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 8
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1150
    if-eqz p1, :cond_0

    .line 1152
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    .line 1154
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

    .line 1156
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFiltersView()Lcom/vkontakte/android/mediapicker/ui/FiltersListView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getFilterId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->update(I)V

    .line 1158
    .end local v0    # "styled":Z
    :cond_0
    return-void

    .restart local v0    # "styled":Z
    :cond_1
    move v5, v2

    .line 1154
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

.method public navigateToFragment(Landroid/app/Fragment;IZ)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "target"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1261
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 1262
    const/high16 v2, 0x7f050000

    const v3, 0x7f050001

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 1264
    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1268
    :try_start_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    .line 1272
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
    .line 1814
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->goBack()V

    .line 1815
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_0

    .line 1823
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->rememberPosition()V

    .line 1825
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz v1, :cond_1

    .line 1826
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->clearRect()V

    .line 1828
    :cond_1
    const/4 v0, 0x0

    .line 1830
    .local v0, "needUpdate":Z
    iget v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->currentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_2

    .line 1832
    const/4 v0, 0x1

    .line 1834
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->currentOrientation:I

    .line 1837
    :cond_2
    invoke-super {p0, p1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1839
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    if-eqz v1, :cond_3

    .line 1840
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->galleryContext:Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    iget-object v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->updateColumnsSize()V

    .line 1842
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    if-eqz v1, :cond_4

    .line 1843
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateButtonsMaxWidth()V

    .line 1844
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-static {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->setStaticLocalContext(Landroid/content/Context;)V

    .line 283
    sput-object p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 284
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearForOtherContext(Z)V

    .line 286
    invoke-super {p0, p1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->onCreate(Landroid/os/Bundle;)V

    .line 288
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 290
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "selection_limit"

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "single_mode"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "need_square"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->initialize(IZZ)V

    .line 291
    const-string v9, "complete_options"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "complete_options"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    :goto_0
    const-string v10, "complete_single_options"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "complete_single_options"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    :goto_1
    invoke-static {v9, v10}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setCompleteOptions(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 292
    const-string v9, "prevent_styling"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setPreventStyling(Z)V

    .line 294
    const-string v9, "no_thumbs"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->clearThumbsOnExit:Z

    .line 295
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->currentOrientation:I

    .line 297
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 299
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 304
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .local v5, "p":Landroid/os/Parcelable;
    move-object v8, v5

    .line 306
    check-cast v8, Landroid/net/Uri;

    .line 307
    .local v8, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v9

    invoke-virtual {v9, p0, v8}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImageByUri(Landroid/app/Activity;Landroid/net/Uri;)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v1

    .line 309
    .local v1, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->toggleChecked()V

    .line 312
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 291
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    .end local v5    # "p":Landroid/os/Parcelable;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 316
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_4

    .line 318
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(Z)V

    .line 379
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :goto_3
    return-void

    .line 322
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 323
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v9, v2, v10}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeForViewer(ILjava/util/List;Z)V

    goto :goto_3

    .line 325
    :cond_5
    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeAlbumWithImages(Ljava/util/List;)V

    goto :goto_3

    .line 331
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :cond_6
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 333
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 335
    .restart local v8    # "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v9

    invoke-virtual {v9, p0, v8}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImageByUri(Landroid/app/Activity;Landroid/net/Uri;)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v1

    .line 337
    .restart local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    if-eqz v1, :cond_7

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .restart local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v9, v2, v10}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeForViewer(ILjava/util/List;Z)V

    goto :goto_3

    .line 345
    .end local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    :cond_7
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(Z)V

    goto :goto_3

    .line 351
    .end local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_8
    const-string v9, "edit_images"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 353
    const-string v9, "edit_images"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 355
    .local v7, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_9

    .line 357
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->exit(Z)V

    goto :goto_3

    .line 361
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .restart local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 365
    .local v6, "path":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {v1, v6}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(Ljava/lang/String;)V

    .line 367
    .restart local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->addImageToSelected(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)Z

    goto :goto_4

    .line 372
    .end local v1    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v6    # "path":Ljava/lang/String;
    :cond_a
    const/4 v9, 0x1

    invoke-static {v9, v7}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setEditModeEnabled(ZLjava/util/ArrayList;)V

    .line 373
    const-string v9, "edit_index"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v2, v10}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initializeForViewer(ILjava/util/List;Z)V

    goto/16 :goto_3

    .line 378
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    .end local v7    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initialize(Z)V

    goto/16 :goto_3
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

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateBadgeVisible(Z)V

    .line 932
    :cond_0
    return-void

    .line 931
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCheck()V
    .locals 2

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1790
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

    .line 1795
    if-nez p1, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1798
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    .line 1800
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

    .line 1809
    return-void

    .line 1798
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

    .line 1243
    sget-object v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateBackButton(Z)V

    .line 1244
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateIsRetryShowing(Z)V

    .line 1245
    return-void

    .line 1244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBackButton(Z)V
    .locals 2
    .param p1, "isCancel"    # Z

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->setBackVisible(Z)V

    .line 1238
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->headerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    if-eqz p1, :cond_1

    const/16 v0, 0x11

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->setTitle(I)V

    .line 1239
    return-void

    .line 1237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1238
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
    .line 1140
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->checkView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCheck(ZLandroid/widget/ImageView;)V

    .line 1141
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
