.class public Lcom/vkontakte/android/imagepicker/AlbumsListFragment;
.super Lcom/vkontakte/android/imagepicker/utils/FragmentClassProvider;
.source "AlbumsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;
    }
.end annotation


# instance fields
.field private albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

.field private albumsListView:Landroid/widget/ListView;

.field private callback:Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;

.field private contentView:Landroid/widget/FrameLayout;

.field private errorText:Landroid/widget/TextView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/FragmentClassProvider;-><init>()V

    .line 105
    new-instance v0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$1;-><init>(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->callback:Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;Z)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->updateError(Z)V

    return-void
.end method

.method private updateError(Z)V
    .locals 6
    .param p1, "internal"    # Z

    .prologue
    const/4 v3, 0x0

    .line 196
    if-nez p1, :cond_0

    .line 198
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    sget-object v4, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/16 v4, 0x20

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_0
    return-void

    .line 205
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v3

    .line 209
    .local v0, "mounted":Z
    :goto_1
    if-nez v0, :cond_1

    .line 211
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    sget-object v5, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/16 v5, 0x21

    invoke-static {v5}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v0    # "mounted":Z
    .end local v1    # "state":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v4, "Error reading environment state"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 221
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    sget-object v4, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    const/16 v4, 0x22

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    .restart local v1    # "state":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addAlbum(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)V
    .locals 2
    .param p1, "album"    # Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->updateList()V

    .line 98
    return-void
.end method

.method public getAlbumByBucketId(I)Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    .locals 4
    .param p1, "bucket_id"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 87
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    goto :goto_0
.end method

.method public getAlbumIndex(Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;)I
    .locals 2
    .param p1, "album"    # Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getBucketId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getViewAt(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x11

    const/4 v7, -0x1

    const v6, -0xe5e5e6

    const/4 v5, 0x0

    .line 120
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    .line 191
    :goto_0
    return-object v2

    .line 128
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout;

    sget-object v3, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 130
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    .line 131
    .local v1, "offsetSize":I
    sget-object v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getListPadding()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 133
    .local v0, "listPaddingVert":I
    new-instance v2, Landroid/widget/TextView;

    sget-object v3, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    .line 134
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 136
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const v3, -0xd0d0e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v1, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 142
    new-instance v2, Landroid/widget/ListView;

    sget-object v3, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    .line 143
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5, v0, v5, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 146
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2

    .line 147
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 150
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 151
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 152
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 154
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;-><init>(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)V

    iput-object v3, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    sget-object v4, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$2;-><init>(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)V

    .line 178
    new-instance v6, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$3;-><init>(Lcom/vkontakte/android/imagepicker/AlbumsListFragment;)V

    .line 158
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invokeGetAlbums(Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;Landroid/content/ContentResolver;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    .line 188
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    goto/16 :goto_0
.end method

.method public onItemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const-wide/16 v4, 0x0

    move-object v2, v1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 103
    return-void
.end method

.method public setCallback(Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->callback:Lcom/vkontakte/android/imagepicker/utils/AlbumsListCallback;

    .line 48
    return-void
.end method

.method public updateAlbumSelectedCount(IZ)V
    .locals 1
    .param p1, "bucketId"    # I
    .param p2, "increment"    # Z

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->getAlbumByBucketId(I)Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    move-result-object v0

    .line 54
    .local v0, "album":Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p2}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->incrementSelectedCount(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->updateList()V

    .line 59
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->notifyDataSetChanged()V

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/AlbumsListFragment$AlbumsListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 73
    :cond_0
    return-void
.end method
