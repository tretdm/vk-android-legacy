.class public Lcom/vkontakte/android/imagepicker/ImagesGridFragment;
.super Lcom/vkontakte/android/imagepicker/utils/FragmentClassProvider;
.source "ImagesGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;

.field private bucketId:I

.field private callback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

.field private contentView:Landroid/widget/GridView;

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

.field private mFirstVisiblePosition:I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/FragmentClassProvider;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->images:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$1;-><init>(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->mFirstVisiblePosition:I

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->images:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private getContentView()Landroid/widget/GridView;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/high16 v6, -0x1000000

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    .line 123
    :goto_0
    return-object v1

    .line 100
    :cond_0
    new-instance v1, Landroid/widget/GridView;

    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v1, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    .line 102
    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 104
    .local v0, "contentPadding":I
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 105
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 106
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    const/high16 v2, 0x43120000    # 146.0f

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 108
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 109
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 110
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 111
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 113
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 115
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 116
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOverScrollMode(I)V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->updateColumnsSize()V

    .line 120
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 121
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    new-instance v2, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;-><init>(Lcom/vkontakte/android/imagepicker/ImagesGridFragment;Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->adapter:Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    goto/16 :goto_0
.end method


# virtual methods
.method public chooseImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z
    .locals 1
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->callback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->callback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

    invoke-interface {v0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;->onImageChosen(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->bucketId:I

    return v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getContentView()Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method public getGridViewAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getContentView()Landroid/widget/GridView;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getContentView()Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    .line 137
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getContentView()Landroid/widget/GridView;

    move-result-object v0

    goto :goto_0
.end method

.method public openImage(ILcom/vkontakte/android/imagepicker/ui/LocalImageView;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "view"    # Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->callback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->callback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->images:Ljava/util/List;

    invoke-interface {v1, p1, v0, v2, p2}, Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;->onImageOpened(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/util/List;Lcom/vkontakte/android/imagepicker/ui/LocalImageView;)V

    .line 57
    :cond_0
    return-void
.end method

.method public rememberPosition()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->mFirstVisiblePosition:I

    .line 151
    return-void
.end method

.method public setAlbumData(ILjava/util/List;)V
    .locals 0
    .param p1, "bucketId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/ImageEntry;>;"
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->bucketId:I

    .line 68
    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->images:Ljava/util/List;

    .line 69
    return-void
.end method

.method public setCallback(Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->callback:Lcom/vkontakte/android/imagepicker/utils/ImagesGridCallback;

    .line 38
    return-void
.end method

.method public update(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->getGridViewAt(I)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 184
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 186
    .local v0, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    :goto_0
    if-eqz v0, :cond_1

    .line 188
    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->check:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;

    invoke-static {p2, v2}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->updateCheck(ZLcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;)V

    .line 189
    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->overlay:Landroid/view/View;

    invoke-static {p2, v2}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->updateBorder(ZLandroid/view/View;)V

    .line 192
    .end local v0    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    :cond_1
    return-void

    .line 184
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;

    move-object v0, v2

    goto :goto_0
.end method

.method public updateColumnsSize()V
    .locals 9

    .prologue
    .line 155
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 156
    .local v6, "width":I
    const/high16 v7, 0x430e0000    # 142.0f

    invoke-static {v7}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 158
    .local v0, "columnSize":I
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailTasksLimit()I

    move-result v7

    if-gtz v7, :cond_0

    .line 160
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getScreenMaxSize()I

    move-result v2

    .line 161
    .local v2, "maxSize":I
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getScreenMinSize()I

    move-result v3

    .line 163
    .local v3, "minSize":I
    int-to-float v7, v2

    int-to-float v8, v0

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v1, v7

    .line 164
    .local v1, "columns":I
    int-to-float v7, v3

    int-to-float v8, v0

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/lit8 v4, v7, 0x1

    .line 166
    .local v4, "rows":I
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v7

    mul-int v8, v1, v4

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setThumbnailTasksLimit(I)V

    .line 169
    .end local v1    # "columns":I
    .end local v2    # "maxSize":I
    .end local v3    # "minSize":I
    .end local v4    # "rows":I
    :cond_0
    int-to-float v7, v6

    int-to-float v8, v0

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v1, v7

    .line 171
    .restart local v1    # "columns":I
    int-to-float v7, v6

    int-to-float v8, v1

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v5, v7, -0x2

    .line 173
    .local v5, "size":I
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v7, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 174
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v7, v5}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 175
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->mFirstVisiblePosition:I

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setSelection(I)V

    .line 176
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->adapter:Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ImagesGridFragment;->adapter:Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesGridFragment$ImagesListAdapter;->notifyDataSetChanged()V

    .line 144
    :cond_0
    return-void
.end method
