.class public Lcom/vkontakte/android/mediapicker/ui/FiltersListView;
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

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->last_filter_id:I

    .line 66
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filled:Z

    .line 102
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private fillFiltersScrollView()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 70
    iget-boolean v4, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filled:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getPreventStyling()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filled:Z

    .line 75
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    .line 79
    .local v2, "listPadding":I
    new-instance v3, Landroid/view/View;

    sget-object v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 87
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;-><init>()V

    .line 89
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;
    sget-object v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/4 v5, 0x0

    sget-object v6, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;->getView(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 91
    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 93
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "holder":Lcom/vkontakte/android/mediapicker/ui/holders/FilterViewHolder;
    :cond_2
    new-instance v3, Landroid/view/View;

    .end local v3    # "view":Landroid/view/View;
    sget-object v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    .restart local v3    # "view":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private hideAnimated()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 239
    const/high16 v1, 0x42e80000    # 116.0f

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    int-to-float v0, v1

    .line 240
    .local v0, "translation":F
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 241
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x87

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$3;-><init>(Lcom/vkontakte/android/mediapicker/ui/FiltersListView;F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 265
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 40
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 41
    .local v0, "listPadding":I
    const v1, 0x7f0201a0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setBackgroundResource(I)V

    .line 43
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    .line 44
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    .line 48
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {p0, v4, v0, v4, v0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setPadding(IIII)V

    .line 52
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 58
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 60
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->addView(Landroid/view/View;)V

    .line 62
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setVisibility(I)V

    .line 63
    return-void
.end method

.method private scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 290
    return-void
.end method

.method private showAnimated()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setVisibility(I)V

    .line 177
    const/high16 v0, 0x42e80000    # 116.0f

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setTranslationY(F)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setAlpha(F)V

    .line 179
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x87

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/FiltersListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 201
    return-void
.end method

.method private updateVisibilityOnPosition(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 269
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->filtersList:Landroid/widget/LinearLayout;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "item":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 273
    const/16 v2, 0x150

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 276
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 276
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method


# virtual methods
.method public getIsShowing()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    return v0
.end method

.method public hide(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 219
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->hideAnimated()V

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView$2;-><init>(Lcom/vkontakte/android/mediapicker/ui/FiltersListView;)V

    if-eqz p1, :cond_2

    const/16 v0, 0x87

    :goto_1
    invoke-virtual {v1, p0, v2, v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getThumbnailAnimationDuration()I

    move-result v0

    goto :goto_1
.end method

.method public hideIfShown(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    if-eqz v0, :cond_1

    .line 207
    if-eqz p1, :cond_0

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->hide(Z)V

    .line 212
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public show(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 152
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getPreventStyling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->fillFiltersScrollView()V

    .line 157
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->setVisibility(I)V

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->showAnimated()V

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/16 v0, 0x87

    :goto_1
    invoke-virtual {v1, p0, v2, v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getThumbnailAnimationDuration()I

    move-result v0

    goto :goto_1
.end method

.method public showIfHidden(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    if-nez v0, :cond_1

    .line 143
    if-eqz p1, :cond_0

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->show(Z)V

    .line 148
    :cond_1
    return-void
.end method

.method public toggle(Z)Z
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->getPreventStyling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    .line 127
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->show(Z)V

    .line 136
    :goto_1
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->mIsShowing:Z

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->hide(Z)V

    goto :goto_1
.end method

.method public update(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 282
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->last_filter_id:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->updateVisibilityOnPosition(IZ)V

    .line 283
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->last_filter_id:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->updateVisibilityOnPosition(IZ)V

    .line 284
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->scrollToPosition(I)V

    .line 285
    return-void
.end method

.method public updateForImageViewer(Z)V
    .locals 2
    .param p1, "isViewerShowing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->show(Z)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/FiltersListView;->hide(Z)V

    goto :goto_0
.end method
