.class public Lcom/vkontakte/android/ui/PhotoFeedView;
.super Landroid/widget/FrameLayout;
.source "PhotoFeedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;,
        Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;,
        Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;,
        Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;
    }
.end annotation


# static fields
.field private static final FIRST_PADDING:I = 0x8

.field private static final touchslop:F


# instance fields
.field private adapter:Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;

.field private allPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapPaint:Landroid/graphics/Paint;

.field private dataLoading:Z

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private imgLoaderPage:I

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private list:Lcom/vkontakte/android/ui/HorizontalListView;

.field private offset:I

.field private oid:I

.field private page:I

.field private pageWidth:I

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;",
            ">;"
        }
    .end annotation
.end field

.field private placeholderPaint:Landroid/graphics/Paint;

.field private startOffset:I

.field private totalPhotos:I

.field private tracker:Landroid/view/VelocityTracker;

.field private unsortedPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/vkontakte/android/ui/PhotoFeedView;->touchslop:F

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    .line 46
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 47
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    .line 48
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pageWidth:I

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 57
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 60
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    .line 66
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    .line 46
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 47
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    .line 48
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pageWidth:I

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 57
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 60
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    .line 46
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 47
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    .line 48
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pageWidth:I

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 57
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 60
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    .line 76
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init()V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->adapter:Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/PhotoFeedView;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/HorizontalListView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->oid:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/PhotoFeedView;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->preloadMorePhotos()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoFeedView;->makePages(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    return v0
.end method

.method private calculateMultiThumbsHeight(Ljava/util/List;FF)F
    .locals 2
    .param p2, "width"    # F
    .param p3, "margin"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "ratios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float v0, p2, v0

    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoFeedView;->sum(Ljava/util/List;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 7

    .prologue
    const v6, -0xcec8bd

    const/4 v5, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->placeholderPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->placeholderPaint:Landroid/graphics/Paint;

    const v1, -0xe0e0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->setFocusable(Z)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->setFocusableInTouchMode(Z)V

    .line 87
    new-instance v0, Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;

    invoke-direct {v1, p0, v5}, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->adapter:Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/vkontakte/android/ui/HorizontalListView;->setPadding(IIII)V

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/HorizontalListView;->setClipToPadding(Z)V

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;->setDividerHeight(I)V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/vkontakte/android/ui/HorizontalListView;->setPadding(IIII)V

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/HorizontalListView;->setCacheColorHint(I)V

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/HorizontalListView;->setBackgroundColor(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$1;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;

    invoke-direct {v1, p0, v5}, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;)V

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-direct {v0, v1, v2, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$2;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 143
    return-void
.end method

.method private makePages(I)V
    .locals 27
    .param p1, "viewWidth"    # I

    .prologue
    .line 155
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "ViewWidth="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", unsorted size="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-nez p1, :cond_0

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v23

    check-cast v23, Landroid/app/Activity;

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v21

    .line 158
    .local v21, "v":Landroid/view/View;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v19, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 160
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 161
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "NEW ViewWidth="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v23, Lcom/vkontakte/android/ui/PhotoFeedView$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView$3;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->post(Ljava/lang/Runnable;)Z

    .line 240
    .end local v19    # "rect":Landroid/graphics/Rect;
    .end local v21    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 169
    :cond_0
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3f99999a    # 1.2f

    mul-float v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 170
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ui/PhotoFeedView;->pageWidth:I

    .line 171
    const/high16 v23, 0x42a00000    # 80.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    div-int v23, p1, v23

    move/from16 v0, v23

    int-to-float v3, v0

    .line 172
    .local v3, "avgNphotos":F
    sget-boolean v23, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v23, :cond_1

    const v23, 0x3f59999a    # 0.85f

    mul-float v3, v3, v23

    .line 173
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    float-to-int v0, v3

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 238
    :cond_2
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "photos : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->updateEverything()V

    goto :goto_0

    .line 174
    :cond_3
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v17, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v18, "ratiosCropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v14, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_7

    .line 189
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-eqz v23, :cond_2

    .line 193
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_a

    .line 195
    const/high16 v23, 0x40400000    # 3.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    sub-int v23, p1, v23

    move/from16 v0, v23

    int-to-float v10, v0

    .line 196
    .local v10, "max_w":F
    const/high16 v23, 0x40800000    # 4.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v9, v0

    .line 197
    .local v9, "margin_w":F
    const/high16 v23, 0x42a00000    # 80.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    div-int v23, p1, v23

    move/from16 v0, v23

    int-to-float v12, v0

    .line 198
    .local v12, "nphotos":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    int-to-float v0, v4

    move/from16 v23, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v24

    cmpg-float v23, v23, v24

    if-ltz v23, :cond_b

    .line 207
    const/high16 v23, 0x44480000    # 800.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v10, v23

    if-lez v23, :cond_4

    const v23, 0x3f59999a    # 0.85f

    mul-float v12, v12, v23

    .line 208
    :cond_4
    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v9}, Lcom/vkontakte/android/ui/PhotoFeedView;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v8

    .line 209
    .local v8, "line_height_real":F
    const/high16 v23, 0x428c0000    # 70.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v7, v0

    .line 210
    .local v7, "line_height":F
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 212
    .local v11, "maxphotos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 216
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-eqz v23, :cond_2

    .line 219
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 220
    const/high16 v23, 0x42a00000    # 80.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    mul-int v23, v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v10, v0

    .line 221
    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v9}, Lcom/vkontakte/android/ui/PhotoFeedView;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v8

    .line 225
    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-lt v4, v11, :cond_e

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 236
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Add page, size="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    .end local v4    # "i":I
    .end local v7    # "line_height":F
    .end local v8    # "line_height_real":F
    .end local v9    # "margin_w":F
    .end local v10    # "max_w":F
    .end local v11    # "maxphotos":I
    .end local v12    # "nphotos":F
    :cond_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/Photo;

    .line 179
    .local v13, "p":Lcom/vkontakte/android/Photo;
    const/16 v24, 0x78

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    .line 180
    .local v5, "im":Lcom/vkontakte/android/Photo$Image;
    if-nez v5, :cond_8

    .line 181
    const-string v24, "vk"

    const-string v25, "x image is null"

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 185
    :cond_8
    iget v0, v5, Lcom/vkontakte/android/Photo$Image;->width:I

    move/from16 v24, v0

    if-lez v24, :cond_9

    iget v0, v5, Lcom/vkontakte/android/Photo$Image;->height:I

    move/from16 v24, v0

    if-lez v24, :cond_9

    .line 186
    iget v0, v5, Lcom/vkontakte/android/Photo$Image;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v5, Lcom/vkontakte/android/Photo$Image;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 187
    :cond_9
    const v24, 0x3f99999a    # 1.2f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 193
    .end local v5    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v13    # "p":Lcom/vkontakte/android/Photo;
    :cond_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v16

    .local v16, "ratio":F
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 199
    .end local v16    # "ratio":F
    .restart local v4    # "i":I
    .restart local v9    # "margin_w":F
    .restart local v10    # "max_w":F
    .restart local v12    # "nphotos":F
    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 200
    .local v15, "r":F
    float-to-double v0, v15

    move-wide/from16 v23, v0

    const-wide v25, 0x3feccccccccccccdL    # 0.9

    cmpg-double v23, v23, v25

    if-gez v23, :cond_c

    .line 201
    float-to-double v0, v12

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd3333333333333L    # 0.3

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v12, v0

    .line 203
    :cond_c
    float-to-double v0, v15

    move-wide/from16 v23, v0

    const-wide v25, 0x3ff199999999999aL    # 1.1

    cmpg-double v23, v23, v25

    if-gtz v23, :cond_d

    float-to-double v0, v15

    move-wide/from16 v23, v0

    const-wide v25, 0x3feccccccccccccdL    # 0.9

    cmpl-double v23, v23, v25

    if-ltz v23, :cond_d

    .line 204
    float-to-double v0, v12

    move-wide/from16 v23, v0

    const-wide v25, 0x3fc999999999999aL    # 0.2

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v12, v0

    .line 198
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 226
    .end local v15    # "r":F
    .restart local v7    # "line_height":F
    .restart local v8    # "line_height_real":F
    .restart local v11    # "maxphotos":I
    :cond_e
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .line 227
    .local v20, "thumb_ratio":F
    mul-float v23, v20, v8

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    .line 228
    .local v22, "width":I
    new-instance v6, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;)V

    .line 229
    .local v6, "layout":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    move/from16 v0, v22

    iput v0, v6, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    .line 230
    float-to-int v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->height:I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    .line 232
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5
.end method

.method private preloadMorePhotos()V
    .locals 4

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    .line 269
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 270
    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$5;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 291
    return-void
.end method

.method private sum(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 247
    .local v1, "sum":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    return v1

    .line 247
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "f":F
    add-float/2addr v1, v0

    goto :goto_0
.end method

.method private updateEverything()V
    .locals 3

    .prologue
    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/vkontakte/android/ui/PhotoFeedView$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$4;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public init(Ljava/util/List;II)V
    .locals 1
    .param p2, "oid"    # I
    .param p3, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "firstPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Photo;>;"
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    iput p2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->oid:I

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    iput p3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 151
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->makePages(I)V

    .line 152
    return-void
.end method

.method public onClick([I)V
    .locals 0
    .param p1, "item"    # [I

    .prologue
    .line 435
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v6, 0x40a00000    # 5.0f

    .line 294
    sub-int v1, p4, p2

    .line 295
    .local v1, "w":I
    sub-int v0, p5, p3

    .line 296
    .local v0, "h":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    const/4 v3, 0x0

    neg-int v4, v1

    add-int/2addr v4, v0

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/vkontakte/android/ui/HorizontalListView;->layout(IIII)V

    .line 297
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 438
    const/high16 v0, 0x42aa0000    # 85.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 439
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 301
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 305
    return-void
.end method
