.class public Lcom/vkontakte/android/ui/PhotoFeedView;
.super Landroid/widget/FrameLayout;
.source "PhotoFeedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/PhotoFeedView$FixedImageView;,
        Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;,
        Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;,
        Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
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

.field private moreAvailable:Z

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
    .line 53
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/vkontakte/android/ui/PhotoFeedView;->touchslop:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    .line 44
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 45
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    .line 46
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pageWidth:I

    .line 49
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 55
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 58
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->moreAvailable:Z

    .line 65
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    .line 44
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 45
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    .line 46
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pageWidth:I

    .line 49
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 55
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 58
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->moreAvailable:Z

    .line 70
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    .line 44
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 45
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    .line 46
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pageWidth:I

    .line 49
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 55
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 58
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->moreAvailable:Z

    .line 75
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init()V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vkontakte/android/ui/PhotoFeedView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    return v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->adapter:Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1512(Lcom/vkontakte/android/ui/PhotoFeedView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    return v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/HorizontalListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->oid:I

    return v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    return v0
.end method

.method static synthetic access$302(Lcom/vkontakte/android/ui/PhotoFeedView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    return p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/ui/PhotoFeedView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    return v0
.end method

.method static synthetic access$502(Lcom/vkontakte/android/ui/PhotoFeedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->dataLoading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vkontakte/android/ui/PhotoFeedView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/ui/PhotoFeedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->moreAvailable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->preloadMorePhotos()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoFeedView;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoFeedView;->makePages(I)V

    return-void
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

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->placeholderPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->placeholderPaint:Landroid/graphics/Paint;

    const v1, -0xe0e0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->setFocusable(Z)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->setFocusableInTouchMode(Z)V

    .line 86
    new-instance v0, Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;

    invoke-direct {v1, p0, v5}, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$1;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->adapter:Lcom/vkontakte/android/ui/PhotoFeedView$PhotoViewsAdapter;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/vkontakte/android/ui/HorizontalListView;->setPadding(IIII)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/HorizontalListView;->setClipToPadding(Z)V

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;->setDividerHeight(I)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/vkontakte/android/ui/HorizontalListView;->setPadding(IIII)V

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/HorizontalListView;->setCacheColorHint(I)V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/HorizontalListView;->setBackgroundColor(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->addView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$1;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;

    invoke-direct {v1, p0, v5}, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$1;)V

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->list:Lcom/vkontakte/android/ui/HorizontalListView;

    invoke-direct {v0, v1, v2, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$2;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 142
    return-void
.end method

.method private makePages(I)V
    .locals 28
    .param p1, "viewWidth"    # I

    .prologue
    .line 154
    const-string v24, "vk"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ViewWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", unsorted size="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v24

    check-cast v24, Landroid/app/Activity;

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v22

    .line 157
    .local v22, "v":Landroid/view/View;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 158
    .local v20, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 159
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 160
    const-string v24, "vk"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "NEW ViewWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v24, Lcom/vkontakte/android/ui/PhotoFeedView$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView$3;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->post(Ljava/lang/Runnable;)Z

    .line 240
    .end local v20    # "rect":Landroid/graphics/Rect;
    .end local v22    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 168
    :cond_0
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3f99999a    # 1.2f

    mul-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 169
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ui/PhotoFeedView;->pageWidth:I

    .line 170
    const/high16 v24, 0x42a00000    # 80.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    div-int v24, p1, v24

    move/from16 v0, v24

    int-to-float v3, v0

    .line 171
    .local v3, "avgNphotos":F
    sget-boolean v24, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v24, :cond_1

    const v24, 0x3f59999a    # 0.85f

    mul-float v3, v3, v24

    .line 172
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    float-to-int v0, v3

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 173
    :cond_2
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v18, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v19, "ratiosCropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v15, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Photo;

    .line 178
    .local v14, "p":Lcom/vkontakte/android/Photo;
    const/16 v24, 0x78

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v6

    .line 179
    .local v6, "im":Lcom/vkontakte/android/Photo$Image;
    if-nez v6, :cond_3

    .line 180
    const-string v24, "vk"

    const-string v25, "x image is null"

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 184
    :cond_3
    iget v0, v6, Lcom/vkontakte/android/Photo$Image;->width:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    iget v0, v6, Lcom/vkontakte/android/Photo$Image;->height:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    .line 185
    iget v0, v6, Lcom/vkontakte/android/Photo$Image;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v6, Lcom/vkontakte/android/Photo$Image;->height:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 186
    :cond_4
    const v24, 0x3f99999a    # 1.2f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    .end local v6    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v14    # "p":Lcom/vkontakte/android/Photo;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_7

    .line 238
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v15    # "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;>;"
    .end local v18    # "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v19    # "ratiosCropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_6
    const-string v24, "vk"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "photos : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->updateEverything()V

    goto/16 :goto_0

    .line 192
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v15    # "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;>;"
    .restart local v18    # "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v19    # "ratiosCropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .local v17, "ratio":F
    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 194
    .end local v17    # "ratio":F
    :cond_8
    const/high16 v24, 0x40400000    # 3.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    sub-int v24, p1, v24

    move/from16 v0, v24

    int-to-float v11, v0

    .line 195
    .local v11, "max_w":F
    const/high16 v24, 0x40800000    # 4.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    move/from16 v0, v24

    int-to-float v10, v0

    .line 196
    .local v10, "margin_w":F
    const/high16 v24, 0x42a00000    # 80.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    div-int v24, p1, v24

    move/from16 v0, v24

    int-to-float v13, v0

    .line 197
    .local v13, "nphotos":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    int-to-float v0, v4

    move/from16 v24, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    cmpg-float v24, v24, v25

    if-gez v24, :cond_b

    .line 198
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v16

    .line 199
    .local v16, "r":F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3feccccccccccccdL    # 0.9

    cmpg-double v24, v24, v26

    if-gez v24, :cond_9

    .line 200
    float-to-double v0, v13

    move-wide/from16 v24, v0

    const-wide v26, 0x3fd3333333333333L    # 0.3

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v13, v0

    .line 202
    :cond_9
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3ff199999999999aL    # 1.1

    cmpg-double v24, v24, v26

    if-gtz v24, :cond_a

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3feccccccccccccdL    # 0.9

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_a

    .line 203
    float-to-double v0, v13

    move-wide/from16 v24, v0

    const-wide v26, 0x3fc999999999999aL    # 0.2

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v13, v0

    .line 197
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 206
    .end local v16    # "r":F
    :cond_b
    const/high16 v24, 0x44480000    # 800.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v11, v24

    if-lez v24, :cond_c

    const v24, 0x3f59999a    # 0.85f

    mul-float v13, v13, v24

    .line 207
    :cond_c
    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v11, v10}, Lcom/vkontakte/android/ui/PhotoFeedView;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v9

    .line 208
    .local v9, "line_height_real":F
    const/high16 v24, 0x428c0000    # 70.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    move/from16 v0, v24

    int-to-float v8, v0

    .line 209
    .local v8, "line_height":F
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 211
    .local v12, "maxphotos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_6

    .line 215
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-eqz v24, :cond_6

    .line 218
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_e

    .line 219
    const/high16 v24, 0x42a00000    # 80.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    mul-int v24, v24, v12

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    int-to-float v11, v0

    .line 220
    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v11, v10}, Lcom/vkontakte/android/ui/PhotoFeedView;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v9

    .line 224
    :cond_e
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v12, :cond_10

    .line 225
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .line 226
    .local v21, "thumb_ratio":F
    mul-float v24, v21, v9

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 227
    .local v23, "width":I
    new-instance v7, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$1;)V

    .line 228
    .local v7, "layout":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    move/from16 v0, v23

    iput v0, v7, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    .line 229
    float-to-int v0, v8

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v7, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->height:I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, v24

    iput-object v0, v7, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    .line 231
    iget-object v0, v7, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    .line 232
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 235
    .end local v7    # "layout":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    .end local v21    # "thumb_ratio":F
    .end local v23    # "width":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->photos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 236
    const-string v24, "vk"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Add page, size="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
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

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$5;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 292
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
    const/4 v2, 0x0

    .line 247
    .local v2, "sum":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "f":F
    add-float/2addr v2, v0

    goto :goto_0

    .line 248
    .end local v0    # "f":F
    :cond_0
    return v2
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
    .line 145
    .local p1, "firstPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Photo;>;"
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    iput p2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->oid:I

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    iput p3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 150
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->makePages(I)V

    .line 151
    return-void
.end method

.method public onClick([I)V
    .locals 0
    .param p1, "item"    # [I

    .prologue
    .line 416
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

    .line 295
    sub-int v1, p4, p2

    .line 296
    .local v1, "w":I
    sub-int v0, p5, p3

    .line 297
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

    .line 298
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 419
    const/high16 v0, 0x42aa0000    # 85.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 420
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 302
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 306
    return-void
.end method
