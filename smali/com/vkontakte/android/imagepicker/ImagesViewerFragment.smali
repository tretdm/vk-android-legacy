.class public Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;
.super Lcom/vkontakte/android/imagepicker/utils/FragmentClassProvider;
.source "ImagesViewerFragment.java"


# instance fields
.field private adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

.field private callback:Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

.field private closeEnabled:Z

.field private contentView:Landroid/widget/FrameLayout;

.field private cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

.field private currentIndex:I

.field private currentRect:Landroid/graphics/Rect;

.field private currentThumb:Landroid/view/View;

.field private imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private loadIndexes:[I

.field private needAnimate:Z

.field private setOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/FragmentClassProvider;-><init>()V

    .line 39
    new-instance v0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$1;-><init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->images:Ljava/util/List;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->closeEnabled:Z

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->images:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->callback:Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentIndex:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)Lcom/vkontakte/android/imagepicker/ui/CropperView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    return-object v0
.end method

.method private animate()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-boolean v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->needAnimate:Z

    if-eqz v1, :cond_1

    .line 226
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->needAnimate:Z

    .line 228
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    :cond_0
    iget-boolean v3, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setOnly:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateIn(Landroid/graphics/Rect;IZ)V

    .line 231
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setCurrentThumbVisibility(I)V

    .line 233
    :cond_1
    return-void
.end method

.method private getCropperFullSize()I
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getCropperMargin()I
    .locals 1

    .prologue
    .line 386
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    return v0
.end method

.method private getCropperScale(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)F
    .locals 6
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getCropperSize()I

    move-result v4

    int-to-float v0, v4

    .line 393
    .local v0, "cropperSize":F
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 394
    .local v1, "ratio1":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 398
    .local v2, "ratio2":F
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    .line 400
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v3, v0, v4

    .line 407
    .local v3, "scale":F
    :goto_0
    return v3

    .line 404
    .end local v3    # "scale":F
    :cond_0
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v3, v0, v4

    .restart local v3    # "scale":F
    goto :goto_0
.end method

.method private getCropperSize()I
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getCropperMargin()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRectForView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 219
    :goto_0
    return-object v1

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;

    iget-object v2, v3, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    .line 211
    .local v2, "wrap":Landroid/view/View;
    const/high16 v3, 0x41c80000    # 25.0f

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 212
    .local v0, "offset":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 215
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 216
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 217
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private setCurrentThumbVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentThumb:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentThumb:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public animateCrop()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 452
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidateOverlayView()V

    .line 454
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearMinimumScale(Z)V

    .line 455
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$7;-><init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method

.method public animateIn(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/view/View;Z)V
    .locals 2
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "noAnimate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, v1, v1, v1}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 111
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setThumb(Landroid/graphics/Bitmap;)V

    .line 114
    :cond_0
    invoke-direct {p0, p2}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getRectForView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentRect:Landroid/graphics/Rect;

    .line 115
    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentThumb:Landroid/view/View;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->needAnimate:Z

    .line 118
    iput-boolean p3, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setOnly:Z

    .line 119
    return-void
.end method

.method public animateOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 123
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentThumb:Landroid/view/View;

    .end local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getRectForView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 125
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    :goto_0
    invoke-virtual {v2, v0, v1, p2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V

    .line 126
    return-void

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public applyCropDataToViewer([FLcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 5
    .param p1, "coords"    # [F
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x6

    .line 361
    if-nez p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0, v1, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setPseudoTranslate(FF)V

    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setPseudoScale(F)V

    .line 372
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    const/4 v1, 0x7

    aget v1, p1, v1

    aget v2, p1, v4

    mul-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    aget v3, p1, v4

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setPseudoTranslate(FF)V

    .line 369
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    aget v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setPseudoScale(F)V

    .line 370
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    aget v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setCurrentScale(F)V

    goto :goto_0
.end method

.method public applyEmptyCropDataToViewer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, v0, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->applyCropDataToViewer([FLcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 357
    return-void
.end method

.method public clearImage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearImage(I)V

    .line 184
    return-void
.end method

.method public clearImages()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearImages()V

    .line 179
    return-void
.end method

.method public clearNeighborImages(I)V
    .locals 2
    .param p1, "forIndex"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearImage(I)V

    .line 189
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearImage(I)V

    .line 190
    return-void
.end method

.method public dropTouches()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dropTouches()Z

    .line 501
    return-void
.end method

.method public fadeCropper(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->fadeOut(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method public getCropData()[F
    .locals 17

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v15}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getCurrentImage()Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v2

    .line 332
    .local v2, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v15}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getCurrentScale()F

    move-result v5

    .line 334
    .local v5, "sc":F
    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v8

    .line 335
    .local v8, "w":I
    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v1

    .line 336
    .local v1, "h":I
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getCropperSize()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v15, v16

    .line 338
    .local v4, "s":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v15}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getTranslateX()F

    move-result v15

    div-float v6, v15, v5

    .line 339
    .local v6, "tx":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v15}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getTranslateY()F

    move-result v15

    div-float v7, v15, v5

    .line 341
    .local v7, "ty":F
    int-to-float v15, v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v15, v6

    float-to-int v9, v15

    .line 342
    .local v9, "x":I
    int-to-float v15, v1

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v15, v7

    float-to-int v12, v15

    .line 344
    .local v12, "y":I
    int-to-float v15, v9

    sub-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 345
    .local v10, "x1":I
    int-to-float v15, v9

    add-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 346
    .local v11, "x2":I
    int-to-float v15, v12

    sub-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 347
    .local v13, "y1":I
    int-to-float v15, v12

    add-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 349
    .local v14, "y2":I
    const/16 v15, 0x9

    new-array v3, v15, [F

    const/4 v15, 0x0

    int-to-float v0, v10

    move/from16 v16, v0

    aput v16, v3, v15

    const/4 v15, 0x1

    int-to-float v0, v13

    move/from16 v16, v0

    aput v16, v3, v15

    const/4 v15, 0x2

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v3, v15

    const/4 v15, 0x3

    int-to-float v0, v14

    move/from16 v16, v0

    aput v16, v3, v15

    const/4 v15, 0x4

    int-to-float v0, v8

    move/from16 v16, v0

    aput v16, v3, v15

    const/4 v15, 0x5

    int-to-float v0, v1

    move/from16 v16, v0

    aput v16, v3, v15

    const/4 v15, 0x6

    aput v5, v3, v15

    const/4 v15, 0x7

    aput v6, v3, v15

    const/16 v15, 0x8

    aput v7, v3, v15

    .line 351
    .local v3, "result":[F
    return-object v3
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentIndex:I

    return v0
.end method

.method public hasRect()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCropper()V
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearMinimumScale(Z)V

    .line 478
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    new-instance v2, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$8;-><init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V

    .line 485
    const/16 v3, 0xc8

    .line 478
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V

    .line 486
    return-void
.end method

.method public invalidateViewer()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postInvalidate()V

    .line 92
    return-void
.end method

.method public loadImages([I)V
    .locals 2
    .param p1, "indexes"    # [I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->load([IZ)V

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->loadIndexes:[I

    goto :goto_0
.end method

.method public loadNeighborImages(I)V
    .locals 3
    .param p1, "fromIndex"    # I

    .prologue
    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    add-int/lit8 v2, p1, 0x1

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->loadImages([I)V

    .line 195
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->animate()V

    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    .line 319
    :goto_0
    return-object v0

    .line 248
    :cond_1
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-boolean v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->closeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setCloseEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setCurrentIndex(I)V

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$2;-><init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setOnNavigationListener(Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;)V

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$3;-><init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setOnDismissListener(Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;)V

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$4;-><init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setOnZoomListener(Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;)V

    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$5;-><init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setOnBackgroundUpdateListener(Lcom/vkontakte/android/imagepicker/utils/OnBackgroundUpdateListener;)V

    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment$6;-><init>(Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setAdapter(Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;)V

    .line 307
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->loadIndexes:[I

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->loadIndexes:[I

    invoke-virtual {v0, v1, v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->load([IZ)V

    .line 312
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    .line 313
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 317
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->animate()V

    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentIndex:I

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v5

    invoke-virtual {v0, v1, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->load([IZ)V

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->callback:Lcom/vkontakte/android/imagepicker/utils/ImagesViewerCallback;

    .line 37
    return-void
.end method

.method public setCloseEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->closeEnabled:Z

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setCloseEnabled(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentIndex:I

    .line 87
    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
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
    .line 76
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->images:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setPreventInvalidateViewer(Z)V
    .locals 1
    .param p1, "prevent"    # Z

    .prologue
    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setPreventInvalidate(Z)V

    .line 496
    return-void
.end method

.method public setRect(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setCurrentThumbVisibility(I)V

    .line 149
    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentThumb:Landroid/view/View;

    .line 150
    invoke-direct {p0, p2}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getRectForView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentRect:Landroid/graphics/Rect;

    .line 151
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentIndex:I

    .line 153
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setCurrentThumbVisibility(I)V

    .line 154
    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setSwitchEnabled(Z)V

    .line 136
    return-void
.end method

.method public setViewerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setTouchEnabled(Z)V

    .line 131
    return-void
.end method

.method public showCropper(Z)V
    .locals 8
    .param p1, "noFade"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 412
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    if-nez v4, :cond_0

    .line 414
    new-instance v4, Lcom/vkontakte/android/imagepicker/ui/CropperView;

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/imagepicker/ui/CropperView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    .line 416
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 423
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->resetAnimation()V

    .line 425
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getCurrentImage()Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v2

    .line 427
    .local v2, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getCropperSize()I

    move-result v4

    int-to-float v1, v4

    .line 428
    .local v1, "cropperSize":F
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    div-float v5, v1, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 430
    .local v0, "cropperPosition":I
    invoke-direct {p0, v2}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getCropperScale(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)F

    move-result v3

    .line 432
    .local v3, "scale":F
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 433
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getCropperMargin()I

    move-result v5

    float-to-int v6, v1

    float-to-int v7, v1

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->setBounds(IIII)V

    .line 437
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    float-to-int v5, v1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->setSquareMode(I)V

    .line 441
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->imageViewer:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    float-to-int v5, v1

    invoke-virtual {v4, v5, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setMinimumScale(IF)V

    .line 443
    if-eqz p1, :cond_2

    .line 444
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setAlpha(Landroid/view/View;F)V

    .line 447
    :goto_2
    return-void

    .line 420
    .end local v0    # "cropperPosition":I
    .end local v1    # "cropperSize":F
    .end local v2    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v3    # "scale":F
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->setVisibility(I)V

    goto :goto_0

    .line 435
    .restart local v0    # "cropperPosition":I
    .restart local v1    # "cropperSize":F
    .restart local v2    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .restart local v3    # "scale":F
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->getCropperMargin()I

    move-result v5

    float-to-int v6, v1

    float-to-int v7, v1

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/vkontakte/android/imagepicker/ui/CropperView;->setBounds(IIII)V

    goto :goto_1

    .line 446
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->cropperView:Lcom/vkontakte/android/imagepicker/ui/CropperView;

    const/4 v6, 0x0

    const/16 v7, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;I)V

    goto :goto_2
.end method

.method public showThumb()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setCurrentThumbVisibility(I)V

    .line 174
    return-void
.end method

.method public updateRect(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setCurrentThumbVisibility(I)V

    .line 160
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->currentThumb:Landroid/view/View;

    .line 162
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setCurrentThumbVisibility(I)V

    .line 163
    return-void
.end method
