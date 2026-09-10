.class public Lcom/vkontakte/android/imagepicker/ui/FiltersListView;
.super Landroid/widget/FrameLayout;
.source "FiltersListView.java"


# instance fields
.field filled:Z

.field private filtersList:Landroid/widget/LinearLayout;

.field private filtersScrollView:Landroid/widget/HorizontalScrollView;

.field private last_filter_id:I

.field public mIsShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->last_filter_id:I

    .line 63
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filled:Z

    .line 98
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private fillFiltersScrollView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 66
    iget-boolean v4, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filled:Z

    if-eqz v4, :cond_0

    .line 96
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filled:Z

    .line 71
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    .line 75
    .local v2, "listPadding":I
    new-instance v3, Landroid/view/View;

    sget-object v4, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    array-length v4, v4

    if-lt v1, v4, :cond_1

    .line 92
    new-instance v3, Landroid/view/View;

    .end local v3    # "view":Landroid/view/View;
    sget-object v4, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 93
    .restart local v3    # "view":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;-><init>()V

    .line 85
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;
    sget-object v4, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/4 v5, 0x0

    sget-object v6, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/vkontakte/android/imagepicker/ui/holders/FilterViewHolder;->getView(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 89
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private hideAnimated()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->setTranslationY(F)V

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->setAlpha(F)V

    .line 206
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42e80000    # 116.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x87

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 207
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 37
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 38
    .local v0, "listPadding":I
    const v1, 0x7f0201f0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->setBackgroundResource(I)V

    .line 40
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    .line 41
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    .line 45
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {p0, v4, v0, v4, v0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->setPadding(IIII)V

    .line 49
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 52
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 55
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->addView(Landroid/view/View;)V

    .line 59
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->setVisibility(I)V

    .line 60
    return-void
.end method

.method private scrollToPosition(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 233
    .local v1, "parent":Landroid/view/View;
    const/high16 v8, 0x42aa0000    # 85.0f

    invoke-static {v8}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v5

    .line 234
    .local v5, "wrap":I
    mul-int v3, v5, p1

    .line 235
    .local v3, "targetX":I
    int-to-float v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 237
    .local v0, "offsetX":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 239
    .local v4, "width":I
    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v6

    .line 240
    .local v6, "x1":I
    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v8

    add-int v7, v8, v4

    .line 244
    .local v7, "x2":I
    sub-int v8, v3, v0

    if-ge v8, v6, :cond_1

    .line 246
    sub-int v2, v3, v0

    .line 257
    .local v2, "result":I
    :goto_0
    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v8, v9, v10}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 258
    .end local v2    # "result":I
    :cond_0
    return-void

    .line 248
    :cond_1
    add-int v8, v3, v5

    add-int/2addr v8, v0

    if-le v8, v7, :cond_0

    .line 250
    sub-int v8, v3, v4

    add-int/2addr v8, v5

    add-int/2addr v8, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    add-int v2, v8, v9

    .line 251
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private showAnimated()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 166
    const/high16 v0, 0x42e80000    # 116.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->setTranslationY(F)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->setAlpha(F)V

    .line 168
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x87

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 169
    return-void
.end method

.method private updateVisibilityOnPosition(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 211
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "item":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 215
    const/16 v2, 0x150

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 217
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 218
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 218
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method


# virtual methods
.method public getIsShowing()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    return v0
.end method

.method public hide(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->hideAnimated()V

    .line 199
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/imagepicker/ui/FiltersListView$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/FiltersListView;)V

    .line 197
    if-eqz p1, :cond_1

    const/16 v0, 0x87

    .line 190
    :goto_1
    invoke-virtual {v1, p0, v2, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailAnimationDuration()I

    move-result v0

    goto :goto_1
.end method

.method public hideIfShown(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    if-eqz v0, :cond_1

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->hide(Z)V

    .line 180
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public show(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->fillFiltersScrollView()V

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->setVisibility(I)V

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->showAnimated()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/16 v0, 0x87

    :goto_1
    invoke-virtual {v1, p0, v2, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailAnimationDuration()I

    move-result v0

    goto :goto_1
.end method

.method public showIfHidden(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    if-nez v0, :cond_1

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->show(Z)V

    .line 146
    :cond_1
    return-void
.end method

.method public toggle(Z)Z
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    .line 125
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->show(Z)V

    .line 134
    :goto_1
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->mIsShowing:Z

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->hide(Z)V

    goto :goto_1
.end method

.method public toggleForce(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->show(Z)V

    .line 119
    return-void
.end method

.method public update(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 224
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->last_filter_id:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->updateVisibilityOnPosition(IZ)V

    .line 225
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->last_filter_id:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->updateVisibilityOnPosition(IZ)V

    .line 226
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->scrollToPosition(I)V

    .line 227
    return-void
.end method

.method public updateForImageViewer(Z)V
    .locals 2
    .param p1, "isViewerShowing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->show(Z)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/FiltersListView;->hide(Z)V

    goto :goto_0
.end method
