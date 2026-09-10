.class public Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;
.super Ljava/lang/Object;
.source "ImageGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field bindedTouchListener:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

.field cellSize:I

.field checkBound:I

.field checkCoords:[I

.field coords:[I

.field index:I

.field item:I

.field lastIndex:I

.field mode:Z

.field numColumns:I

.field postedLongPress:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->mode:Z

    .line 21
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->coords:[I

    .line 22
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->checkCoords:[I

    .line 25
    iput v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->checkBound:I

    .line 26
    iput v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->index:I

    iput v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->item:I

    iput v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->lastIndex:I

    .line 18
    return-void
.end method

.method private dropBindedTouch()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->bindedTouchListener:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->bindedTouchListener:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->dropTouch()Z

    .line 196
    :cond_0
    return-void
.end method

.method private getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->bindedTouchListener:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->bindedTouchListener:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->getCurrentView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentWrapper()Landroid/view/View;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private select(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->bindedTouchListener:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->mode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(ILjava/lang/Boolean;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->playSoundEffect(Landroid/view/View;IZ)Z

    .line 132
    return-void
.end method


# virtual methods
.method public bindTouchListener(Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;)Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->bindedTouchListener:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    .line 204
    return-object p0
.end method

.method cancelLongPress()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->postedLongPress:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->postedLongPress:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->cancel()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->postedLongPress:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .line 161
    :cond_0
    return-void
.end method

.method public onCanceled()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->cancelLongPress()V

    .line 179
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setScrollEnabled(Z)V

    .line 180
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 39
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    iget-object v0, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentAlbumFragment:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;

    .line 40
    .local v0, "fragment":Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->bindedTouchListener:Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getImageHolderFromView(Landroid/view/View;)Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    .local v1, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v3, v5

    .line 68
    :goto_1
    return v3

    .line 42
    .end local v0    # "fragment":Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;
    .end local v1    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    :catch_0
    move-exception v2

    .line 44
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "Error in onDown"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v6}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 46
    const/4 v1, 0x0

    .line 47
    .restart local v1    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    const/4 v0, 0x0

    .restart local v0    # "fragment":Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;
    goto :goto_0

    .line 53
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_1
    iget-object v3, v1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->coords:[I

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 55
    iget-object v3, v1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->image:Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsCheckedFromView(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->mode:Z

    .line 56
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getNumColumns()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->numColumns:I

    .line 57
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getColumnSize()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->cellSize:I

    .line 58
    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->index:I

    .line 59
    iget v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->index:I

    iput v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->lastIndex:I

    .line 60
    iget v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->index:I

    iget v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->numColumns:I

    rem-int/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->item:I

    .line 61
    iget v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->cellSize:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    iput v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->checkBound:I

    .line 63
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->checkCoords:[I

    iget-object v6, v1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    invoke-virtual {v6}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->getLeft()I

    move-result v6

    aput v6, v3, v5

    .line 64
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->checkCoords:[I

    iget-object v5, v1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->getBottom()I

    move-result v5

    aput v5, v3, v4

    .line 66
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->postLongPress()V

    move v3, v4

    .line 68
    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v2"    # F

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->onCanceled()V

    .line 168
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->mode:Z

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->enterSelectionMode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->dropBindedTouch()V

    .line 172
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->getCurrentWrapper()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSelectionMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(Landroid/view/View;Ljava/lang/Boolean;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->playSoundEffect(Landroid/view/View;IZ)Z

    .line 174
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "downEvent"    # Landroid/view/MotionEvent;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v2"    # F

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->cancelLongPress()V

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 98
    .local v4, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 100
    .local v5, "y":I
    int-to-float v6, v5

    iget v7, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->cellSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 101
    .local v3, "row":I
    int-to-float v6, v4

    iget v7, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->cellSize:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 103
    .local v1, "col":I
    iget v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->index:I

    iget v7, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->numColumns:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int v2, v6, v1

    .line 105
    .local v2, "result":I
    iget v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->index:I

    if-eq v2, v6, :cond_0

    iget v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->lastIndex:I

    if-eq v2, v6, :cond_0

    .line 107
    iget v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->item:I

    add-int v0, v6, v1

    .line 109
    .local v0, "citem":I
    if-ltz v0, :cond_0

    iget v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->numColumns:I

    if-ge v0, v6, :cond_0

    .line 111
    iput v2, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->lastIndex:I

    .line 113
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->mode:Z

    invoke-static {v6}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->enterSelectionMode(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 115
    iget v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->index:I

    invoke-direct {p0, v6}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->select(I)V

    .line 116
    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->mode:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(ILjava/lang/Boolean;)I

    .line 123
    .end local v0    # "citem":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsInSelectionMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 124
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->setScrollEnabled(Z)V

    .line 126
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getIsInSelectionMode()Z

    move-result v6

    return v6

    .line 119
    .restart local v0    # "citem":I
    :cond_2
    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->select(I)V

    goto :goto_0

    .line 124
    .end local v0    # "citem":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->onCanceled()V

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 79
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 81
    .local v2, "y":I
    iget v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->checkBound:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->checkCoords:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lt v1, v3, :cond_0

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->checkCoords:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-gt v2, v3, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->dropBindedTouch()V

    .line 84
    iget v3, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->index:I

    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->select(I)V

    .line 86
    const/4 v0, 0x1

    .line 89
    :cond_0
    return v0
.end method

.method postLongPress()V
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->cancelLongPress()V

    .line 140
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener$1;-><init>(Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->postedLongPress:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .line 150
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->postedLongPress:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->toOnceRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :cond_0
    return-void
.end method
