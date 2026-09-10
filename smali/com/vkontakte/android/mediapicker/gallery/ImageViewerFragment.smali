.class public Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;
.super Lcom/vkontakte/android/mediapicker/providers/FragmentClassProvider;
.source "ImageViewerFragment.java"


# instance fields
.field private adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

.field private callback:Lcom/vkontakte/android/mediapicker/entries/IVCallback;

.field private closeEnabled:Z

.field private contentView:Landroid/widget/FrameLayout;

.field private cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

.field private currentIndex:I

.field private currentRect:Landroid/graphics/Rect;

.field private currentThumb:Landroid/view/View;

.field private imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
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
    .line 73
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/FragmentClassProvider;-><init>()V

    .line 41
    new-instance v0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$1;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->images:Ljava/util/List;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->closeEnabled:Z

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->images:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->callback:Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentIndex:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/ui/CropperView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    return-object v0
.end method

.method private animate()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->needAnimate:Z

    if-eqz v1, :cond_1

    .line 250
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->needAnimate:Z

    .line 252
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    :cond_0
    iget-boolean v3, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setOnly:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateIn(Landroid/graphics/Rect;IZ)V

    .line 255
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCurrentThumbVisibility(I)V

    .line 257
    :cond_1
    return-void
.end method

.method private getCropperFullSize()I
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getCropperMargin()I
    .locals 1

    .prologue
    .line 415
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    return v0
.end method

.method private getCropperScale(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)F
    .locals 6
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCropperSize()I

    move-result v4

    int-to-float v0, v4

    .line 422
    .local v0, "cropperSize":F
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 423
    .local v1, "ratio1":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 427
    .local v2, "ratio2":F
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    .line 429
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v3, v0, v4

    .line 436
    .local v3, "scale":F
    :goto_0
    return v3

    .line 433
    .end local v3    # "scale":F
    :cond_0
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v3, v0, v4

    .restart local v3    # "scale":F
    goto :goto_0
.end method

.method private getCropperSize()I
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCropperMargin()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRectForView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 243
    :goto_0
    return-object v1

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    iget-object v2, v3, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    .line 235
    .local v2, "wrap":Landroid/view/View;
    const/high16 v3, 0x41c80000    # 25.0f

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 236
    .local v0, "offset":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 238
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 239
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 240
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private setCurrentThumbVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentThumb:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentThumb:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public animateCrop()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidate()V

    .line 481
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidateOverlayView()V

    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearMinimumScale(Z)V

    .line 484
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$7;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->post(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method public animateIn(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/view/View;Z)V
    .locals 2
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "noAnimate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v1, v1, v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 118
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setThumb(Landroid/graphics/Bitmap;)V

    .line 121
    :cond_0
    invoke-direct {p0, p2}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getRectForView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentRect:Landroid/graphics/Rect;

    .line 122
    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentThumb:Landroid/view/View;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->needAnimate:Z

    .line 125
    iput-boolean p3, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setOnly:Z

    .line 126
    return-void
.end method

.method public animateOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 130
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentThumb:Landroid/view/View;

    .end local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getRectForView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 132
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    :goto_0
    invoke-virtual {v2, v0, v1, p2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V

    .line 133
    return-void

    .line 132
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public applyCropDataToViewer([FLcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 5
    .param p1, "coords"    # [F
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x6

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Coords: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    if-nez p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0, v2, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setPseudoTranslate(FF)V

    .line 393
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setPseudoScale(F)V

    .line 401
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v1, 0x7

    aget v1, p1, v1

    aget v2, p1, v4

    mul-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    aget v3, p1, v4

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setPseudoTranslate(FF)V

    .line 398
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    aget v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setPseudoScale(F)V

    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    aget v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setCurrentScale(F)V

    goto :goto_0
.end method

.method public applyEmptyCropDataToViewer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, v0, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->applyCropDataToViewer([FLcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 383
    return-void
.end method

.method public clearImage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearImage(I)V

    .line 208
    return-void
.end method

.method public clearImages()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearImages()V

    .line 203
    return-void
.end method

.method public clearNeighborImages(I)V
    .locals 2
    .param p1, "forIndex"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearImage(I)V

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearImage(I)V

    .line 214
    return-void
.end method

.method public clearRect()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentRect:Landroid/graphics/Rect;

    .line 160
    return-void
.end method

.method public clearThumb()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->clearRect()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentThumb:Landroid/view/View;

    .line 166
    return-void
.end method

.method public dropTouches()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dropTouches()Z

    .line 530
    return-void
.end method

.method public fadeCropper(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->fadeOut(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method public getCropData()[F
    .locals 17

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getCurrentImage()Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v2

    .line 358
    .local v2, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getCurrentScale()F

    move-result v5

    .line 360
    .local v5, "sc":F
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v8

    .line 361
    .local v8, "w":I
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v1

    .line 362
    .local v1, "h":I
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCropperSize()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v15, v16

    .line 364
    .local v4, "s":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getTranslateX()F

    move-result v15

    div-float v6, v15, v5

    .line 365
    .local v6, "tx":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getTranslateY()F

    move-result v15

    div-float v7, v15, v5

    .line 367
    .local v7, "ty":F
    int-to-float v15, v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v15, v6

    float-to-int v9, v15

    .line 368
    .local v9, "x":I
    int-to-float v15, v1

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    sub-float/2addr v15, v7

    float-to-int v12, v15

    .line 370
    .local v12, "y":I
    int-to-float v15, v9

    sub-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 371
    .local v10, "x1":I
    int-to-float v15, v9

    add-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 372
    .local v11, "x2":I
    int-to-float v15, v12

    sub-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 373
    .local v13, "y1":I
    int-to-float v15, v12

    add-float/2addr v15, v4

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 375
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

    .line 377
    .local v3, "result":[F
    return-object v3
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentIndex:I

    return v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->images:Ljava/util/List;

    return-object v0
.end method

.method public hasRect()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentRect:Landroid/graphics/Rect;

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
    .line 505
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearMinimumScale(Z)V

    .line 507
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    new-instance v2, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$8;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V

    .line 514
    const/16 v3, 0xc8

    .line 507
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V

    .line 515
    return-void
.end method

.method public invalidateViewer()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postInvalidate()V

    .line 99
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImages([I)V
    .locals 2
    .param p1, "indexes"    # [I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->load([IZ)V

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->loadIndexes:[I

    goto :goto_0
.end method

.method public loadNeighborImages(I)V
    .locals 3
    .param p1, "fromIndex"    # I

    .prologue
    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    add-int/lit8 v2, p1, 0x1

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->loadImages([I)V

    .line 219
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

    .line 264
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->animate()V

    .line 271
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    .line 345
    :goto_0
    return-object v0

    .line 274
    :cond_1
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->closeEnabled:Z

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setCloseEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setCurrentIndex(I)V

    .line 277
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$2;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setOnNavigationListener(Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;)V

    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$3;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setOnDismissListener(Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;)V

    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$4;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setOnZoomListener(Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;)V

    .line 313
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$5;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setOnBackgroundUpdateListener(Lcom/vkontakte/android/mediapicker/entries/IVBackgroundListener;)V

    .line 322
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$6;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setAdapter(Lcom/vkontakte/android/mediapicker/entries/IVAdapter;)V

    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->loadIndexes:[I

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->loadIndexes:[I

    invoke-virtual {v0, v1, v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->load([IZ)V

    .line 338
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 343
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->animate()V

    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    iget v2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentIndex:I

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v5

    invoke-virtual {v0, v1, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->load([IZ)V

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/mediapicker/entries/IVCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->callback:Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    .line 39
    return-void
.end method

.method public setCloseEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->closeEnabled:Z

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setCloseEnabled(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentIndex:I

    .line 94
    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
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
    .line 78
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->images:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setPreventInvalidateViewer(Z)V
    .locals 1
    .param p1, "prevent"    # Z

    .prologue
    .line 524
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setPreventInvalidate(Z)V

    .line 525
    return-void
.end method

.method public setRect(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCurrentThumbVisibility(I)V

    .line 172
    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentThumb:Landroid/view/View;

    .line 174
    invoke-direct {p0, p2}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getRectForView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentRect:Landroid/graphics/Rect;

    .line 175
    iput p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentIndex:I

    .line 177
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCurrentThumbVisibility(I)V

    .line 178
    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setSwitchEnabled(Z)V

    .line 148
    return-void
.end method

.method public setViewerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setTouchEnabled(Z)V

    .line 143
    return-void
.end method

.method public showCropper(Z)V
    .locals 8
    .param p1, "noFade"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 441
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    if-nez v4, :cond_0

    .line 443
    new-instance v4, Lcom/vkontakte/android/mediapicker/ui/CropperView;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/mediapicker/ui/CropperView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    .line 445
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 452
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->resetAnimation()V

    .line 454
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getCurrentImage()Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v2

    .line 456
    .local v2, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCropperSize()I

    move-result v4

    int-to-float v1, v4

    .line 457
    .local v1, "cropperSize":F
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    div-float v5, v1, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 459
    .local v0, "cropperPosition":I
    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCropperScale(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)F

    move-result v3

    .line 461
    .local v3, "scale":F
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 462
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCropperMargin()I

    move-result v5

    float-to-int v6, v1

    float-to-int v7, v1

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->setBounds(IIII)V

    .line 466
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    float-to-int v5, v1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->setSquareMode(I)V

    .line 470
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->imageViewer:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    float-to-int v5, v1

    invoke-virtual {v4, v5, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setMinimumScale(IF)V

    .line 472
    if-eqz p1, :cond_2

    .line 473
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setAlpha(Landroid/view/View;F)V

    .line 476
    :goto_2
    return-void

    .line 449
    .end local v0    # "cropperPosition":I
    .end local v1    # "cropperSize":F
    .end local v2    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v3    # "scale":F
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->setVisibility(I)V

    goto :goto_0

    .line 464
    .restart local v0    # "cropperPosition":I
    .restart local v1    # "cropperSize":F
    .restart local v2    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .restart local v3    # "scale":F
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCropperMargin()I

    move-result v5

    float-to-int v6, v1

    float-to-int v7, v1

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/vkontakte/android/mediapicker/ui/CropperView;->setBounds(IIII)V

    goto :goto_1

    .line 475
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->cropperView:Lcom/vkontakte/android/mediapicker/ui/CropperView;

    const/4 v6, 0x0

    const/16 v7, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;I)V

    goto :goto_2
.end method

.method public showThumb()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCurrentThumbVisibility(I)V

    .line 198
    return-void
.end method

.method public updateRect(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCurrentThumbVisibility(I)V

    .line 184
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->currentThumb:Landroid/view/View;

    .line 186
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setCurrentThumbVisibility(I)V

    .line 187
    return-void
.end method
