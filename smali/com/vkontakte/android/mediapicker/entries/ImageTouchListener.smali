.class public Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;
.super Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
.source "ImageTouchListener.java"


# instance fields
.field private gestureListener:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;-><init>()V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;->setUseDelayBeforeDown(Z)Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    .line 23
    return-void
.end method


# virtual methods
.method protected onCanceled(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;->onCanceled(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;->gestureListener:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->onCanceled()V

    .line 36
    return-void
.end method

.method public onTapCanceled(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "beforeCompleted"    # Z

    .prologue
    .line 53
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;->gestureListener:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->cancelLongPress()V

    .line 55
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    .line 60
    .local v0, "wrap":Lcom/vkontakte/android/mediapicker/ui/LocalImageView;
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->hideOverlayView(Z)V

    goto :goto_0
.end method

.method public onTapCompleted(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    move-object v2, p1

    check-cast v2, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    .line 69
    .local v2, "wrap":Lcom/vkontakte/android/mediapicker/ui/LocalImageView;
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    .line 72
    .local v6, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    invoke-virtual {v6}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->getPosition()I

    move-result v3

    .line 74
    .local v3, "index":I
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->displayOverlayView()V

    .line 77
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->playSoundEffect(I)V

    .line 78
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-nez v6, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 80
    .end local v3    # "index":I
    .end local v6    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    :cond_1
    return-void

    .line 78
    .restart local v3    # "index":I
    .restart local v6    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;
    :cond_2
    iget-object v1, v6, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    goto :goto_0
.end method

.method public onTapStarted(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getSingleMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 44
    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    .line 46
    .local v0, "wrap":Lcom/vkontakte/android/mediapicker/ui/LocalImageView;
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->displayOverlayView()V

    goto :goto_0
.end method

.method public setImageGestureListener(Landroid/view/GestureDetector;Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/GestureDetector;
    .param p2, "listener"    # Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;->setGestureDetector(Landroid/view/GestureDetector;)Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;

    .line 28
    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/entries/ImageTouchListener;->gestureListener:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    .line 29
    return-void
.end method
