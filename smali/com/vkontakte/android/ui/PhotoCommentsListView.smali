.class public Lcom/vkontakte/android/ui/PhotoCommentsListView;
.super Lcom/vkontakte/android/ui/RefreshableListView;
.source "PhotoCommentsListView.java"


# instance fields
.field private prevCanScrollDown:Z

.field private scrollDir:I

.field private scrollStartX:F

.field private scrollStartY:F

.field private touchslop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->prevCanScrollDown:Z

    .line 21
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->touchslop:F

    .line 22
    iput v1, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollDir:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->prevCanScrollDown:Z

    .line 21
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->touchslop:F

    .line 22
    iput v1, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollDir:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->prevCanScrollDown:Z

    .line 21
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->touchslop:F

    .line 22
    iput v1, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollDir:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fromTop"    # Z

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;Z)V

    .line 19
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->prevCanScrollDown:Z

    .line 21
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->touchslop:F

    .line 22
    iput v1, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollDir:I

    .line 32
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const v10, 0x7f0600da

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollStartX:F

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollStartY:F

    .line 54
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 101
    :cond_0
    :goto_0
    return v5

    .line 56
    :cond_1
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 57
    .local v4, "v":Landroid/view/View;
    const/4 v0, 0x1

    .line 58
    .local v0, "csd":Z
    if-eqz v4, :cond_7

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 59
    new-array v3, v12, [I

    .line 60
    .local v3, "loc":[I
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 61
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    aget v7, v3, v6

    int-to-float v7, v7

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    aput v7, v3, v6

    .line 62
    :cond_2
    iget v7, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollStartX:F

    aget v8, v3, v5

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollStartX:F

    aget v8, v3, v5

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_7

    .line 63
    iget v7, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollStartY:F

    aget v8, v3, v6

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollStartY:F

    aget v8, v3, v6

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_7

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "dy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v12, :cond_7

    .line 66
    iget v7, p0, Lcom/vkontakte/android/ui/PhotoCommentsListView;->scrollStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float v1, v7, v8

    .line 78
    cmpl-float v7, v1, v11

    if-lez v7, :cond_3

    .line 79
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ZoomableImageView;

    .line 80
    .local v2, "iv":Lcom/vkontakte/android/ZoomableImageView;
    invoke-virtual {v2}, Lcom/vkontakte/android/ZoomableImageView;->canScrollDown()Z

    move-result v0

    .line 81
    iget-boolean v7, v2, Lcom/vkontakte/android/ZoomableImageView;->shouldInterceptNextTouchEvent:Z

    if-eqz v7, :cond_3

    .line 82
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 83
    iput-boolean v5, v2, Lcom/vkontakte/android/ZoomableImageView;->shouldInterceptNextTouchEvent:Z

    move v5, v6

    .line 85
    goto/16 :goto_0

    .line 88
    .end local v2    # "iv":Lcom/vkontakte/android/ZoomableImageView;
    :cond_3
    cmpg-float v7, v1, v11

    if-gez v7, :cond_5

    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz v6, :cond_0

    :cond_4
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 93
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-le v7, v6, :cond_7

    .line 94
    :cond_6
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/ui/PhotoCommentsListView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 101
    .end local v1    # "dy":F
    .end local v3    # "loc":[I
    :cond_7
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/RefreshableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
