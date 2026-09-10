.class public Lcom/vkontakte/android/ui/PhotoFeedView;
.super Landroid/view/View;
.source "PhotoFeedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;,
        Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    }
.end annotation


# static fields
.field private static final touchslop:F


# instance fields
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

.field private animDirection:I

.field private animDuration:I

.field private animationStartTime:J

.field private bitmapPaint:Landroid/graphics/Paint;

.field private click:Z

.field private imgLoaderPage:I

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private ldr:Lcom/vkontakte/android/ui/ListImageLoader;

.field private offset:I

.field private oid:I

.field private page:I

.field private pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private placeholderPaint:Landroid/graphics/Paint;

.field private scrollOffset:F

.field private scrollStartX:F

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
    .line 48
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

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    .line 38
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 39
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    .line 41
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->ldr:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 42
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    .line 47
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->click:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animationStartTime:J

    .line 50
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDirection:I

    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 53
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 57
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    .line 38
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 39
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    .line 41
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->ldr:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 42
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    .line 47
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->click:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animationStartTime:J

    .line 50
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDirection:I

    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 53
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 62
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    .line 38
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 39
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    .line 41
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->ldr:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 42
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    .line 47
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->click:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animationStartTime:J

    .line 50
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    .line 51
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDirection:I

    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 53
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 67
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init()V

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/PhotoFeedView;J)V
    .locals 0

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animationStartTime:J

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/PhotoFeedView;F)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->updateEverything()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoFeedView;->makePages(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/PhotoFeedView;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->ldr:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/PhotoFeedView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/PhotoFeedView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/PhotoFeedView;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

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
    .line 196
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

.method private drawPage(Landroid/graphics/Canvas;II)V
    .locals 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "page"    # I
    .param p3, "pOffset"    # I

    .prologue
    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 491
    .local v4, "curPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getHeight()I

    move-result v16

    const/high16 v17, 0x428c0000    # 70.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    sub-int v16, v16, v17

    div-int/lit8 v14, v16, 0x2

    .line 492
    .local v14, "topPadding":I
    const/4 v8, 0x0

    .line 493
    .local v8, "padding":I
    const/4 v13, 0x0

    .line 494
    .local v13, "sum":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_0

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v16

    sub-int v16, v16, v13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    div-int v8, v16, v17

    .line 498
    div-int/lit8 v16, v8, 0x2

    add-int v7, v16, p3

    .line 501
    .local v7, "offset":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1

    .line 523
    return-void

    .line 494
    .end local v7    # "offset":I
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    .line 495
    .local v9, "pl":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    move/from16 v17, v0

    add-int v13, v13, v17

    goto :goto_0

    .line 501
    .end local v9    # "pl":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    .restart local v7    # "offset":I
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    .line 502
    .restart local v9    # "pl":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 503
    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v17, v18

    .line 504
    .local v5, "dRatio":F
    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 506
    .local v11, "sRatio":F
    cmpg-float v17, v11, v5

    if-gez v17, :cond_2

    .line 507
    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v17, v18

    .line 508
    .local v10, "r":F
    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v15, v0

    .line 509
    .local v15, "w":I
    new-instance v12, Landroid/graphics/Rect;

    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    const/16 v18, 0x0

    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    div-int/lit8 v20, v15, 0x2

    sub-int v19, v19, v20

    add-int v19, v19, v15

    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 517
    .end local v15    # "w":I
    .local v12, "srcRect":Landroid/graphics/Rect;
    :goto_2
    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    move/from16 v19, v0

    add-int v19, v19, v7

    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->height:I

    move/from16 v20, v0

    add-int v20, v20, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v7, v14, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 521
    .end local v5    # "dRatio":F
    .end local v10    # "r":F
    .end local v11    # "sRatio":F
    .end local v12    # "srcRect":Landroid/graphics/Rect;
    :goto_3
    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    move/from16 v17, v0

    add-int v17, v17, v8

    add-int v7, v7, v17

    goto/16 :goto_1

    .line 512
    .restart local v5    # "dRatio":F
    .restart local v11    # "sRatio":F
    :cond_2
    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v17, v18

    .line 513
    .restart local v10    # "r":F
    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v6, v0

    .line 514
    .local v6, "h":I
    new-instance v12, Landroid/graphics/Rect;

    const/16 v17, 0x0

    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    div-int/lit8 v19, v6, 0x2

    sub-int v18, v18, v19

    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    iget-object v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    div-int/lit8 v21, v6, 0x2

    sub-int v20, v20, v21

    add-int v20, v20, v6

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v12    # "srcRect":Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 519
    .end local v5    # "dRatio":F
    .end local v6    # "h":I
    .end local v10    # "r":F
    .end local v11    # "sRatio":F
    .end local v12    # "srcRect":Landroid/graphics/Rect;
    :cond_3
    new-instance v17, Landroid/graphics/Rect;

    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    move/from16 v18, v0

    add-int v18, v18, v7

    iget v0, v9, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->height:I

    move/from16 v19, v0

    add-int v19, v19, v14

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v7, v14, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->placeholderPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method private hitTest(I)I
    .locals 11
    .param p1, "x"    # I

    .prologue
    const/4 v8, -0x1

    .line 286
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    move v1, v8

    .line 302
    :cond_0
    :goto_0
    return v1

    .line 287
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 288
    .local v0, "curPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getHeight()I

    move-result v9

    const/high16 v10, 0x428c0000    # 70.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v7, v9, 0x2

    .line 289
    .local v7, "topPadding":I
    const/4 v4, 0x0

    .line 290
    .local v4, "padding":I
    const/4 v6, 0x0

    .line 291
    .local v6, "sum":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    div-int v4, v9, v10

    .line 295
    div-int/lit8 v3, v4, 0x2

    .line 296
    .local v3, "offset":I
    const/4 v1, 0x0

    .line 297
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    move v1, v8

    .line 302
    goto :goto_0

    .line 291
    .end local v1    # "i":I
    .end local v3    # "offset":I
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    .line 292
    .local v5, "pl":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    iget v10, v5, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    add-int/2addr v6, v10

    goto :goto_1

    .line 297
    .end local v5    # "pl":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    .restart local v1    # "i":I
    .restart local v3    # "offset":I
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    .line 298
    .local v2, "l":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    if-lt p1, v3, :cond_4

    iget v10, v2, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    add-int/2addr v10, v3

    if-le p1, v10, :cond_0

    .line 299
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 300
    iget v10, v2, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    add-int/2addr v10, v4

    add-int/2addr v3, v10

    goto :goto_2
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->ldr:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$ImageAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->placeholderPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->placeholderPaint:Landroid/graphics/Paint;

    const v1, -0xe0e0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/PhotoFeedView;->setFocusable(Z)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/PhotoFeedView;->setFocusableInTouchMode(Z)V

    .line 90
    return-void
.end method

.method private makePages(I)V
    .locals 27
    .param p1, "viewWidth"    # I

    .prologue
    .line 118
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "ViewWidth="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-nez p1, :cond_1

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v23

    check-cast v23, Landroid/app/Activity;

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v21

    .line 121
    .local v21, "v":Landroid/view/View;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 122
    .local v19, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 123
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 124
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

    .line 125
    if-nez p1, :cond_1

    .line 126
    new-instance v23, Lcom/vkontakte/android/ui/PhotoFeedView$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView$1;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->post(Ljava/lang/Runnable;)Z

    .line 193
    .end local v19    # "rect":Landroid/graphics/Rect;
    .end local v21    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/high16 v23, 0x42a00000    # 80.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    div-int v23, p1, v23

    move/from16 v0, v23

    int-to-float v3, v0

    .line 133
    .local v3, "avgNphotos":F
    sget-boolean v23, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v23, :cond_2

    const v23, 0x3f59999a    # 0.85f

    mul-float v3, v3, v23

    .line 134
    :cond_2
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

    .line 191
    :goto_2
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

    const-string v25, "; pages "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->updateEverything()V

    goto :goto_0

    .line 135
    :cond_3
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v17, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v18, "ratiosCropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v14, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_5

    .line 150
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-eqz v23, :cond_0

    .line 151
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_8

    .line 153
    const/high16 v23, 0x40400000    # 3.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    sub-int v23, p1, v23

    move/from16 v0, v23

    int-to-float v10, v0

    .line 154
    .local v10, "max_w":F
    const/high16 v23, 0x40800000    # 4.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v9, v0

    .line 155
    .local v9, "margin_w":F
    const/high16 v23, 0x42a00000    # 80.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    div-int v23, p1, v23

    move/from16 v0, v23

    int-to-float v12, v0

    .line 156
    .local v12, "nphotos":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
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

    if-ltz v23, :cond_9

    .line 165
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

    .line 166
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

    .line 167
    .local v8, "line_height_real":F
    const/high16 v23, 0x428c0000    # 70.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v7, v0

    .line 168
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

    .line 169
    .local v11, "maxphotos":I
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "maxphotos="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", pages size="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", unsorted="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", num="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", total="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", all loaded="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

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

    if-ge v0, v1, :cond_c

    .line 171
    const-string v23, "vk"

    const-string v24, "returned"

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 139
    .end local v4    # "i":I
    .end local v7    # "line_height":F
    .end local v8    # "line_height_real":F
    .end local v9    # "margin_w":F
    .end local v10    # "max_w":F
    .end local v11    # "maxphotos":I
    .end local v12    # "nphotos":F
    :cond_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/Photo;

    .line 140
    .local v13, "p":Lcom/vkontakte/android/Photo;
    const/16 v24, 0x78

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/vkontakte/android/Photo;->getImage(C)Lcom/vkontakte/android/Photo$Image;

    move-result-object v5

    .line 141
    .local v5, "im":Lcom/vkontakte/android/Photo$Image;
    if-nez v5, :cond_6

    .line 142
    const-string v23, "vk"

    const-string v24, "x image is null"

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_6
    iget v0, v5, Lcom/vkontakte/android/Photo$Image;->width:I

    move/from16 v24, v0

    if-lez v24, :cond_7

    iget v0, v5, Lcom/vkontakte/android/Photo$Image;->height:I

    move/from16 v24, v0

    if-lez v24, :cond_7

    .line 147
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

    goto/16 :goto_3

    .line 148
    :cond_7
    const v24, 0x3f99999a    # 1.2f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 151
    .end local v5    # "im":Lcom/vkontakte/android/Photo$Image;
    .end local v13    # "p":Lcom/vkontakte/android/Photo;
    :cond_8
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

    goto/16 :goto_4

    .line 157
    .end local v16    # "ratio":F
    .restart local v4    # "i":I
    .restart local v9    # "margin_w":F
    .restart local v10    # "max_w":F
    .restart local v12    # "nphotos":F
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 158
    .local v15, "r":F
    float-to-double v0, v15

    move-wide/from16 v23, v0

    const-wide v25, 0x3feccccccccccccdL    # 0.9

    cmpg-double v23, v23, v25

    if-gez v23, :cond_a

    .line 159
    float-to-double v0, v12

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd3333333333333L    # 0.3

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v12, v0

    .line 161
    :cond_a
    float-to-double v0, v15

    move-wide/from16 v23, v0

    const-wide v25, 0x3ff199999999999aL    # 1.1

    cmpg-double v23, v23, v25

    if-gtz v23, :cond_b

    float-to-double v0, v15

    move-wide/from16 v23, v0

    const-wide v25, 0x3feccccccccccccdL    # 0.9

    cmpl-double v23, v23, v25

    if-ltz v23, :cond_b

    .line 162
    float-to-double v0, v12

    move-wide/from16 v23, v0

    const-wide v25, 0x3fc999999999999aL    # 0.2

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v12, v0

    .line 156
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 174
    .end local v15    # "r":F
    .restart local v7    # "line_height":F
    .restart local v8    # "line_height_real":F
    .restart local v11    # "maxphotos":I
    :cond_c
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_d

    .line 175
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

    .line 176
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

    .line 177
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "max_w is now "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_d
    const/4 v4, 0x0

    :goto_6
    if-lt v4, v11, :cond_e

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 181
    :cond_e
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Float;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v20

    .line 182
    .local v20, "thumb_ratio":F
    mul-float v23, v20, v8

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    .line 183
    .local v22, "width":I
    new-instance v6, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;)V

    .line 184
    .local v6, "layout":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    move/from16 v0, v22

    iput v0, v6, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->width:I

    .line 185
    float-to-int v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->height:I

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/Photo;

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    .line 187
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method

.method private preloadMorePhotos()V
    .locals 4

    .prologue
    .line 233
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 234
    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$3;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 254
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
    .line 199
    .local p1, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 200
    .local v1, "sum":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    return v1

    .line 200
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
    .locals 5

    .prologue
    .line 206
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->ldr:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 218
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->invalidate()V

    .line 219
    new-instance v3, Lcom/vkontakte/android/ui/PhotoFeedView$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$2;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/PhotoFeedView;->post(Ljava/lang/Runnable;)Z

    .line 223
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    if-ge v3, v4, :cond_2

    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->preloadMorePhotos()V

    .line 224
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 225
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 226
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 224
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    .local v1, "l":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->image:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 229
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updatePage(Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p2, "view"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;>;"
    return-void
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
    .line 93
    .local p1, "firstPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Photo;>;"
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->unsortedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    iput p2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->oid:I

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->offset:I

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    iput p3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    .line 108
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->makePages(I)V

    .line 110
    return-void
.end method

.method public loadImages()V
    .locals 3

    .prologue
    .line 113
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->imgLoaderPage:I

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->ldr:Lcom/vkontakte/android/ui/ListImageLoader;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 115
    return-void
.end method

.method public onClick(I)V
    .locals 5
    .param p1, "item"    # I

    .prologue
    .line 453
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Click "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/WallActivity;

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/WallActivity;

    .line 456
    .local v0, "act":Lcom/vkontakte/android/WallActivity;
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;

    .line 458
    .local v1, "l":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    iget-object v2, v1, Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;->photo:Lcom/vkontakte/android/Photo;

    iget v2, v2, Lcom/vkontakte/android/Photo;->id:I

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->allPhotos:Ljava/util/ArrayList;

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->totalPhotos:I

    invoke-virtual {v0, v2, v3, v4, p0}, Lcom/vkontakte/android/WallActivity;->onOpenPhoto(ILjava/util/ArrayList;ILandroid/view/View;)V

    .line 460
    .end local v0    # "act":Lcom/vkontakte/android/WallActivity;
    .end local v1    # "l":Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 463
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 467
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    if-gez v3, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 469
    .local v1, "curPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/PhotoFeedView$PhotoLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "animOffset":I
    iget-wide v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animationStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 472
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animationStartTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 473
    .local v2, "st":F
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDirection:I

    if-nez v3, :cond_4

    .line 474
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    neg-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 477
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->postInvalidate()V

    .line 480
    .end local v2    # "st":F
    :cond_2
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    float-to-int v4, v4

    add-int/2addr v4, v0

    invoke-direct {p0, p1, v3, v4}, Lcom/vkontakte/android/ui/PhotoFeedView;->drawPage(Landroid/graphics/Canvas;II)V

    .line 481
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_3

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 482
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    float-to-int v4, v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, p1, v3, v4}, Lcom/vkontakte/android/ui/PhotoFeedView;->drawPage(Landroid/graphics/Canvas;II)V

    .line 484
    :cond_3
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_0

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 485
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    float-to-int v4, v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, p1, v3, v4}, Lcom/vkontakte/android/ui/PhotoFeedView;->drawPage(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0

    .line 476
    .restart local v2    # "st":F
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDirection:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_1
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 530
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 537
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 538
    new-instance v0, Lcom/vkontakte/android/ui/PhotoFeedView$7;

    invoke-direct {v0, p0, p4, p2}, Lcom/vkontakte/android/ui/PhotoFeedView$7;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;II)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->post(Ljava/lang/Runnable;)Z

    .line 557
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 526
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->setMeasuredDimension(II)V

    .line 527
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x10e

    const/4 v9, -0x1

    const/high16 v8, 0x44160000    # 600.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 307
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->tracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->tracker:Landroid/view/VelocityTracker;

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getScrollX()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->startOffset:I

    .line 311
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollStartX:F

    .line 313
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->click:Z

    .line 314
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 317
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 318
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->click:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/vkontakte/android/ui/PhotoFeedView;->touchslop:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 319
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->click:Z

    .line 320
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->ldr:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 322
    :cond_2
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->click:Z

    if-nez v3, :cond_3

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollStartX:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    .line 324
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->invalidate()V

    .line 328
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 330
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->click:Z

    if-eqz v3, :cond_5

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoFeedView;->hitTest(I)I

    move-result v1

    .line 332
    .local v1, "item":I
    if-eq v1, v9, :cond_4

    .line 333
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/PhotoFeedView;->playSoundEffect(I)V

    .line 334
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->onClick(I)V

    .line 386
    .end local v1    # "item":I
    :cond_4
    :goto_0
    return v6

    .line 339
    :cond_5
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    float-to-int v0, v3

    .line 340
    .local v0, "diff":I
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->tracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 341
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 342
    .local v2, "v":F
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 343
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->tracker:Landroid/view/VelocityTracker;

    .line 345
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->scrollOffset:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    .line 346
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_6

    const/16 v3, 0x1f4

    iput v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    .line 347
    :cond_6
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    if-ge v3, v10, :cond_7

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    .line 350
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-gt v3, v4, :cond_8

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_9

    :cond_8
    if-gez v0, :cond_9

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_9

    .line 353
    iput v9, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDirection:I

    .line 354
    new-instance v3, Lcom/vkontakte/android/ui/PhotoFeedView$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$4;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    .line 360
    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    int-to-long v4, v4

    .line 354
    invoke-virtual {p0, v3, v4, v5}, Lcom/vkontakte/android/ui/PhotoFeedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animationStartTime:J

    .line 383
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->invalidate()V

    goto :goto_0

    .line 361
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoFeedView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-gt v3, v4, :cond_a

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_b

    :cond_a
    if-lez v0, :cond_b

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->page:I

    if-lez v3, :cond_b

    .line 363
    iput v6, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDirection:I

    .line 364
    new-instance v3, Lcom/vkontakte/android/ui/PhotoFeedView$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$5;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    .line 370
    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    int-to-long v4, v4

    .line 364
    invoke-virtual {p0, v3, v4, v5}, Lcom/vkontakte/android/ui/PhotoFeedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 373
    :cond_b
    const/16 v3, 0x12c

    iput v3, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    .line 374
    iput v7, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDirection:I

    .line 375
    new-instance v3, Lcom/vkontakte/android/ui/PhotoFeedView$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/PhotoFeedView$6;-><init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    .line 378
    iget v4, p0, Lcom/vkontakte/android/ui/PhotoFeedView;->animDuration:I

    int-to-long v4, v4

    .line 375
    invoke-virtual {p0, v3, v4, v5}, Lcom/vkontakte/android/ui/PhotoFeedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
