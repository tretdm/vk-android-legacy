.class public Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;
.super Lcom/vkontakte/android/mediapicker/providers/FragmentClassProvider;
.source "ImagesGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;

.field private bucketId:I

.field private callback:Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

.field private contentView:Landroid/widget/GridView;

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

.field private mColumnSize:I

.field private mNumColumns:I

.field private mSelectedPosition:I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/FragmentClassProvider;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->images:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$1;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mSelectedPosition:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->images:Ljava/util/List;

    return-object v0
.end method

.method private getContentView()Landroid/widget/GridView;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x1000000

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    .line 137
    :goto_0
    return-object v1

    .line 95
    :cond_0
    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$2;

    sget-object v2, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$2;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    .line 119
    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 121
    .local v0, "contentPadding":I
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 122
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 123
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    const/high16 v2, 0x43120000    # 146.0f

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 125
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 126
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 127
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 128
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 130
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->updateColumnsSize()V

    .line 134
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 135
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    new-instance v2, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;-><init>(Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->adapter:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    goto :goto_0
.end method


# virtual methods
.method public checkAvailable()Z
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBucketId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->bucketId:I

    return v0
.end method

.method public getColumnSize()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mColumnSize:I

    return v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getContentView()Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method public getGridViewAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getContentView()Landroid/widget/GridView;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getContentView()Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    return-object v0
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mNumColumns:I

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    .line 151
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->getContentView()Landroid/widget/GridView;

    move-result-object v0

    goto :goto_0
.end method

.method public openImage(ILcom/vkontakte/android/mediapicker/ui/LocalImageView;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "view"    # Lcom/vkontakte/android/mediapicker/ui/LocalImageView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->callback:Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->callback:Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->images:Ljava/util/List;

    invoke-interface {v1, p1, v0, v2, p2}, Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;->onImageOpened(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/util/List;Lcom/vkontakte/android/mediapicker/ui/LocalImageView;)V

    .line 50
    :cond_0
    return-void
.end method

.method public rememberPosition()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mSelectedPosition:I

    .line 165
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
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "images":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/ImageEntry;>;"
    iput p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->bucketId:I

    .line 61
    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->images:Ljava/util/List;

    .line 62
    return-void
.end method

.method public setCallback(Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->callback:Lcom/vkontakte/android/mediapicker/entries/ImagesGridCallback;

    .line 39
    return-void
.end method

.method public updateColumnsSize()V
    .locals 8

    .prologue
    .line 176
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 177
    .local v5, "width":I
    const/high16 v6, 0x430e0000    # 142.0f

    invoke-static {v6}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 179
    .local v0, "columnSize":I
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getThumbTasksLimit()I

    move-result v6

    if-gtz v6, :cond_0

    .line 181
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getScreenMaxSize()I

    move-result v2

    .line 182
    .local v2, "maxSize":I
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getScreenMinSize()I

    move-result v3

    .line 184
    .local v3, "minSize":I
    int-to-float v6, v2

    int-to-float v7, v0

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 185
    .local v1, "columns":I
    int-to-float v6, v3

    int-to-float v7, v0

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v4, v6, 0x1

    .line 187
    .local v4, "rows":I
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v6

    mul-int v7, v1, v4

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->setThumbTasksLimit(I)V

    .line 190
    .end local v1    # "columns":I
    .end local v2    # "maxSize":I
    .end local v3    # "minSize":I
    .end local v4    # "rows":I
    :cond_0
    int-to-float v6, v5

    int-to-float v7, v0

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mNumColumns:I

    .line 191
    int-to-float v6, v5

    iget v7, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mNumColumns:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mColumnSize:I

    .line 193
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    iget v7, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mNumColumns:I

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 194
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    iget v7, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mColumnSize:I

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 195
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->contentView:Landroid/widget/GridView;

    iget v7, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 196
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->adapter:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment;->adapter:Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImagesGridFragment$ImagesListAdapter;->notifyDataSetChanged()V

    .line 158
    :cond_0
    return-void
.end method
