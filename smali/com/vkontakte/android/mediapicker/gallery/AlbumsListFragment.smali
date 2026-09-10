.class public Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;
.super Lcom/vkontakte/android/mediapicker/providers/FragmentClassProvider;
.source "AlbumsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;
    }
.end annotation


# instance fields
.field private albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

.field private albumsListView:Landroid/widget/ListView;

.field private callback:Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;

.field private contentView:Landroid/widget/FrameLayout;

.field private errorText:Landroid/widget/TextView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/FragmentClassProvider;-><init>()V

    .line 147
    new-instance v0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$1;-><init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->callback:Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;Z)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->updateError(Z)V

    return-void
.end method

.method private updateError(Z)V
    .locals 3
    .param p1, "internal"    # Z

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_0
    return-void

    .line 266
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->isExternalStorageMounted(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const/16 v2, 0x21

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Error reading environment state"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 278
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const/16 v2, 0x22

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addAlbum(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V
    .locals 2
    .param p1, "album"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->updateList()V

    .line 140
    return-void
.end method

.method public getAlbumByBucketId(I)Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    .locals 2
    .param p1, "bucketId"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->getAlbumByIndex(I)Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumByIndex(I)Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    goto :goto_0
.end method

.method public getAlbumIndex(Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;)I
    .locals 2
    .param p1, "album"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

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
    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x1

    const v7, -0xe5e5e6

    const/4 v6, 0x0

    .line 162
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->updateSomethingNotNecessary()V

    .line 167
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 252
    :goto_0
    return-object v3

    .line 173
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout;

    sget-object v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 174
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 176
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setViewNotFocusable(Landroid/view/View;)V

    .line 178
    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v2

    .line 179
    .local v2, "offsetSize":I
    sget-object v3, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getListPadding()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 180
    .local v0, "doubledOffset":I
    add-int v1, v2, v0

    .line 182
    .local v1, "listPaddingVert":I
    new-instance v3, Landroid/widget/TextView;

    sget-object v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    .line 183
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 185
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 186
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const v4, -0xd0d0e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v2, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 188
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 191
    new-instance v3, Landroid/widget/ListView;

    sget-object v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    .line 192
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6, v1, v6, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 195
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setViewNotFocusable(Landroid/view/View;)V

    .line 197
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 200
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 201
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 202
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 203
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 205
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    new-instance v4, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;-><init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)V

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v3

    sget-object v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$2;-><init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)V

    .line 229
    new-instance v6, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$3;-><init>(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;)V

    .line 209
    invoke-virtual {v3, v4, v5, v6}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->invokeGetAlbums(Landroid/content/ContentResolver;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    .line 246
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    if-eqz v3, :cond_2

    .line 247
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->prepareListViewAnimation()V

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->contentView:Landroid/widget/FrameLayout;

    goto/16 :goto_0
.end method

.method public onItemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const-wide/16 v4, 0x0

    move-object v2, v1

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 145
    return-void
.end method

.method public setCallback(Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->callback:Lcom/vkontakte/android/mediapicker/entries/AlbumsListCallback;

    .line 51
    return-void
.end method

.method public updateAlbumSelectedCount(IZ)V
    .locals 4
    .param p1, "bucketId"    # I
    .param p2, "increment"    # Z

    .prologue
    .line 55
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->access$0(Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 59
    .local v1, "index":I
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->getAlbumByIndex(I)Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    move-result-object v0

    .line 61
    .local v0, "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->incrementSelectedCount(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->updateList()V

    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->updateItem(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    goto :goto_0
.end method

.method public updateItem(ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "album"    # Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .prologue
    .line 90
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 98
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;

    .line 102
    .local v0, "holder":Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getStaticLocalContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p2}, Lcom/vkontakte/android/mediapicker/ui/holders/AlbumViewHolder;->update(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/AlbumEntry;)V

    goto :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->notifyDataSetChanged()V

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListAdapter:Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment$AlbumsListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->errorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public updateSomethingNotNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/AlbumsListFragment;->albumsListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v1    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v2, "Something wrong, but who cares"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
