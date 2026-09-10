.class public Lcom/vkontakte/android/PhotoAlbumsView;
.super Landroid/widget/FrameLayout;
.source "PhotoAlbumsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;,
        Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;,
        Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
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

.field public callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private itemHeight:I

.field private list:Landroid/widget/GridView;

.field private loaded:Z

.field private needSystem:Z

.field private noAlbumsView:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private uid:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "needSystem"    # Z

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 40
    iput v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    .line 48
    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    .line 49
    iput-object p3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->userName:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    .line 51
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 40
    iput v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    .line 56
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 40
    iput v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoAlbumsView;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->adapter:Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->editAlbum(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->deleteAlbum(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->updateSizes(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PhotoAlbumsView;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    return-object v0
.end method

.method private deleteAlbum(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-interface {v1, v0}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;->deleteAlbum(I)V

    .line 218
    :cond_0
    return-void
.end method

.method private editAlbum(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-interface {v1, v0}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;->editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 214
    :cond_0
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x11

    const/4 v6, 0x0

    const v5, -0xe5e5e6

    const/high16 v4, 0x40800000    # 4.0f

    .line 65
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/PhotoAlbumsView;->setBackgroundColor(I)V

    .line 66
    new-instance v2, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    .line 67
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    new-instance v3, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    invoke-direct {v3, p0, v8}, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;)V

    iput-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->adapter:Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 69
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 70
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 73
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 75
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 76
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    const v3, 0x7f020202

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(I)V

    .line 77
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 78
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 79
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 80
    iget v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    if-nez v2, :cond_2

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->addView(Landroid/view/View;)V

    .line 84
    new-instance v2, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v3, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-direct {v3, p0, v8}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)V

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-direct {v2, v3, v4, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 86
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    .line 87
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020220

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->addView(Landroid/view/View;)V

    .line 93
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    const v3, -0x888889

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    const v3, 0x7f0600fc

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 97
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v1, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->addView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method private loadData()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 137
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAlbums;

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosGetAlbums;-><init>(IZ)V

    .line 138
    new-instance v1, Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoAlbumsView$2;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 157
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$3;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoAlbumsView;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method private updateSizes(I)V
    .locals 5
    .param p1, "sw"    # I

    .prologue
    .line 127
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 128
    .local v2, "ratio":F
    const/high16 v3, 0x43af0000    # 350.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v1, v3

    .line 129
    .local v1, "maxW":F
    int-to-float v3, p1

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 131
    .local v0, "colCount":I
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 132
    div-int v3, p1, v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    .line 133
    return-void
.end method


# virtual methods
.method public addOrReplace(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 3
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    .line 187
    :goto_1
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iget v2, p1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v1, v2, :cond_1

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    goto :goto_1

    .line 178
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public invalidateList()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$5;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    .line 233
    const-wide/16 v1, 0xa

    .line 231
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    return-void
.end method

.method public onActivate()V
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->loadData()V

    .line 108
    :cond_0
    return-void
.end method

.method public onDeactivate()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 116
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 173
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 174
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    invoke-interface {v1, v0}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;->openAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 175
    :cond_0
    return-void
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    move v0, p3

    .line 193
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-gez v1, :cond_0

    move v1, v2

    .line 209
    :goto_0
    return v1

    .line 194
    :cond_0
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060062

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    new-instance v2, Lcom/vkontakte/android/PhotoAlbumsView$4;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/PhotoAlbumsView$4;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    invoke-virtual {v1, v4, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v3

    .line 209
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 310
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 314
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 119
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$1;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoAlbumsView;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method public remove(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 228
    :goto_1
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v1, p1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 224
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    goto :goto_1

    .line 221
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
