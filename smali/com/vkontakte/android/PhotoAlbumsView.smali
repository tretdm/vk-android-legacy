.class public Lcom/vkontakte/android/PhotoAlbumsView;
.super Landroid/widget/FrameLayout;
.source "PhotoAlbumsView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;,
        Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;,
        Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

.field private albums:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/PhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private loaded:Z

.field private noAlbumsView:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private timer:Ljava/util/Timer;

.field private uid:I

.field private viCount:I

.field private viStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 46
    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    .line 47
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 52
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 57
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->init()V

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->editAlbum(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->deleteAlbum(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoAlbumsView;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->viStart:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PhotoAlbumsView;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->viCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PhotoAlbumsView;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->adapter:Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    return-object v0
.end method

.method private deleteAlbum(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAlbumListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoAlbumListActivity;->confirmDeleteAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 211
    return-void
.end method

.method private editAlbum(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAlbumListActivity;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoAlbumListActivity;->editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 207
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const/16 v6, 0x11

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 61
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoAlbumsView;->setBackgroundColor(I)V

    .line 62
    new-instance v2, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 63
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v3, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    invoke-direct {v3, p0, v8}, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;)V

    iput-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->adapter:Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 65
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 66
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 67
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 68
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 69
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/PhotoAlbumListActivity;

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 73
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->addView(Landroid/view/View;)V

    .line 75
    new-instance v2, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 76
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v3, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-direct {v3, p0, v8}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 78
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    .line 79
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020224

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->addView(Landroid/view/View;)V

    .line 85
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    .line 86
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    const v3, -0x888889

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    const v3, 0x7f090132

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v1, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 95
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->addView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 109
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAlbums;

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;-><init>(I)V

    .line 110
    new-instance v1, Lcom/vkontakte/android/PhotoAlbumsView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoAlbumsView$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 127
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$2;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoAlbumsView;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public addOrReplace(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 3
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    .line 182
    :goto_1
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iget v2, p1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v1, v2, :cond_1

    .line 175
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    goto :goto_1

    .line 173
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public invalidateList()V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$4;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    .line 226
    const-wide/16 v1, 0xa

    .line 224
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void
.end method

.method public onActivate()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->loadData()V

    .line 101
    :cond_0
    return-void
.end method

.method public onDeactivate()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/PhotoListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 141
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    const-string v2, "aid"

    iget v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v2, "title"

    iget-object v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v2, "oid"

    iget v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/WallActivity;

    if-eqz v2, :cond_1

    .line 145
    const-string v3, "username"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/WallActivity;

    iget-object v2, v2, Lcom/vkontakte/android/WallActivity;->userName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v3, "userphoto"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/WallActivity;

    iget-object v2, v2, Lcom/vkontakte/android/WallActivity;->userPhoto:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :goto_0
    iget-boolean v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->canUpload:Z

    if-eqz v2, :cond_0

    const-string v2, "can_add"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void

    .line 148
    :cond_1
    const-string v3, "username"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "username"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v3, "userphoto"

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "userphoto"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "_pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 187
    .local v0, "pos":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Lcom/vkontakte/android/PhotoAlbumsView$3;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/PhotoAlbumsView$3;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 202
    return v6
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 158
    iget v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->viCount:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->viStart:I

    if-ne v0, p2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 160
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->timer:Ljava/util/Timer;

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 162
    iput p3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->viCount:I

    .line 163
    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->viStart:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 170
    return-void
.end method

.method public remove(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 221
    :goto_1
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v1, p1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 217
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    goto :goto_1

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
