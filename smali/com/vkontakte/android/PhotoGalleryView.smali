.class public Lcom/vkontakte/android/PhotoGalleryView;
.super Landroid/view/View;
.source "PhotoGalleryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;
    }
.end annotation


# static fields
.field private static final NUM_COLUMNS_LANDSCAPE:I = 0x6

.field private static final NUM_COLUMNS_PORTRAIT:I = 0x4


# instance fields
.field private awSB:Ljava/lang/reflect/Method;

.field private dragStartTime:J

.field private dragStartY:F

.field private dragging:Z

.field private highlight:Landroid/graphics/drawable/Drawable;

.field private host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

.field private isClick:Z

.field private isScrolling:Z

.field private lastEventY:F

.field private maxScrollY:I

.field public nColumns:I

.field public nPhotosOnScreen:I

.field private notLoadedFill:Landroid/graphics/Paint;

.field private photoSize:I

.field private scrollDirBottom:Z

.field private scrollY:I

.field private scroller:Landroid/widget/Scroller;

.field private selectedPhoto:I

.field private touchslop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->dragging:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollDirBottom:Z

    .line 32
    iput v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 34
    const/16 v0, 0x2710

    iput v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->maxScrollY:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->isScrolling:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->selectedPhoto:I

    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoGalleryView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->dragging:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollDirBottom:Z

    .line 32
    iput v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 34
    const/16 v0, 0x2710

    iput v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->maxScrollY:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->isScrolling:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->selectedPhoto:I

    .line 50
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoGalleryView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->dragging:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollDirBottom:Z

    .line 32
    iput v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 34
    const/16 v0, 0x2710

    iput v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->maxScrollY:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->isScrolling:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->selectedPhoto:I

    .line 55
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoGalleryView;->init()V

    .line 56
    return-void
.end method

.method private _awakenScrollBars()V
    .locals 4

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->awSB:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCenterRect(II)Landroid/graphics/Rect;
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 270
    if-le p1, p2, :cond_0

    .line 271
    new-instance v0, Landroid/graphics/Rect;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v2, p1, 0x2

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v4, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    :goto_0
    return-object v0

    .line 272
    :cond_0
    if-ge p1, p2, :cond_1

    .line 273
    new-instance v0, Landroid/graphics/Rect;

    div-int/lit8 v1, p2, 0x2

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v4, v1, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoGalleryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 60
    .local v1, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/PhotoGalleryView;->touchslop:I

    .line 61
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoGalleryView;->setWillNotDraw(Z)V

    .line 62
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PhotoGalleryView;->setVerticalScrollBarEnabled(Z)V

    .line 63
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoGalleryView;->notLoadedFill:Landroid/graphics/Paint;

    .line 64
    iget-object v2, p0, Lcom/vkontakte/android/PhotoGalleryView;->notLoadedFill:Landroid/graphics/Paint;

    const v3, -0xddddde

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoGalleryView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoGalleryView;->scroller:Landroid/widget/Scroller;

    .line 67
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "awakenScrollBars"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/PhotoGalleryView;->awSB:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoGalleryView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/R$styleable;->View:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoGalleryView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoGalleryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/PhotoGalleryView;->highlight:Landroid/graphics/drawable/Drawable;

    .line 73
    return-void

    .line 68
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoGalleryView;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->maxScrollY:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 173
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    rem-int v15, v1, v2

    .line 175
    .local v15, "offset":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    sub-int/2addr v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    div-int v11, v1, v2

    .line 176
    .local v11, "firstVisibleRow":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    mul-int v10, v11, v1

    .line 177
    .local v10, "firstVisiblePhoto":I
    move v9, v10

    .line 178
    .local v9, "curPhoto":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v16, v1, 0x2

    .line 180
    .local v16, "xOffset":I
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 181
    .local v8, "bmpPaint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 184
    neg-int v14, v15

    .local v14, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    if-lt v14, v1, :cond_3

    .line 203
    :cond_1
    const/4 v13, 0x0

    .line 205
    .local v13, "isInvalidated":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->_awakenScrollBars()V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->invalidate()V

    .line 209
    const/4 v13, 0x1

    .line 234
    :cond_2
    :goto_1
    return-void

    .line 185
    .end local v13    # "isInvalidated":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v1}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->getCount()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 186
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    if-lt v12, v1, :cond_5

    .line 184
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    add-int/2addr v14, v1

    goto :goto_0

    .line 187
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v1}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->getCount()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-nez v1, :cond_7

    const/4 v7, 0x0

    .line 189
    .local v7, "bmp":Landroid/graphics/Bitmap;
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    mul-int/2addr v1, v12

    add-int v1, v1, v16

    int-to-float v2, v1

    int-to-float v3, v14

    add-int/lit8 v1, v12, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    mul-int/2addr v1, v4

    add-int v1, v1, v16

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    add-int/2addr v1, v14

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/PhotoGalleryView;->notLoadedFill:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 190
    if-eqz v7, :cond_6

    .line 192
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/PhotoGalleryView;->getCenterRect(II)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    mul-int/2addr v3, v12

    add-int v3, v3, v16

    add-int/lit8 v4, v12, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    mul-int/2addr v4, v5

    add-int v4, v4, v16

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    add-int/2addr v5, v14

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v2, v3, v14, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 193
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->selectedPhoto:I

    if-ne v1, v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->isClick:Z

    if-eqz v1, :cond_6

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->highlight:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    mul-int/2addr v3, v12

    add-int v3, v3, v16

    add-int/lit8 v4, v12, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    mul-int/2addr v4, v5

    add-int v4, v4, v16

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    add-int/2addr v5, v14

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v2, v3, v14, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->highlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v1}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->getCount()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 186
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 188
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v1, v9}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->getThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_3

    .line 210
    .end local v12    # "i":I
    .restart local v13    # "isInvalidated":Z
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->isScrolling:Z

    if-eqz v1, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    rem-int v15, v1, v2

    .line 212
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    sub-int/2addr v1, v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    div-int v11, v1, v2

    .line 213
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    mul-int v10, v11, v1

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v1, v10}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->onScrollEnded(I)V

    .line 216
    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->isScrolling:Z

    goto/16 :goto_1
.end method

.method public onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 77
    if-eqz p1, :cond_1

    .line 78
    sub-int v4, p4, p2

    .line 79
    .local v4, "w":I
    sub-int v2, p5, p3

    .line 80
    .local v2, "h":I
    if-ge v4, v2, :cond_2

    .line 81
    div-int/lit8 v5, v4, 0x4

    iput v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    .line 82
    const/4 v5, 0x4

    iput v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    .line 87
    :goto_0
    iget v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    div-int v5, v2, v5

    iget v6, p0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->nPhotosOnScreen:I

    .line 88
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoGalleryView;->update()V

    .line 89
    iget v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    if-gez v5, :cond_0

    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 90
    :cond_0
    iget v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    iget v6, p0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    rem-int v3, v5, v6

    .line 91
    .local v3, "offset":I
    iget v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    sub-int/2addr v5, v3

    iget v6, p0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    div-int v1, v5, v6

    .line 92
    .local v1, "firstVisibleRow":I
    iget v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    mul-int v0, v1, v5

    .line 93
    .local v0, "firstVisiblePhoto":I
    iget-object v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-eqz v5, :cond_1

    .line 94
    iget-object v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v5}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->onScrollStarted()V

    .line 95
    iget-object v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v5, v0}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->onScrollEnded(I)V

    .line 98
    .end local v0    # "firstVisiblePhoto":I
    .end local v1    # "firstVisibleRow":I
    .end local v2    # "h":I
    .end local v3    # "offset":I
    .end local v4    # "w":I
    :cond_1
    return-void

    .line 84
    .restart local v2    # "h":I
    .restart local v4    # "w":I
    :cond_2
    div-int/lit8 v5, v4, 0x6

    iput v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    .line 85
    const/4 v5, 0x6

    iput v5, p0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->lastEventY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragStartY:F

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragStartTime:J

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 106
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    rem-int v14, v1, v2

    .line 107
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    sub-int/2addr v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    div-int v13, v1, v2

    .line 108
    .local v13, "firstVisibleRow":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    mul-int v12, v13, v1

    .line 109
    .local v12, "firstVisiblePhoto":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v1, v12}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->onScrollEnded(I)V

    .line 110
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->isClick:Z

    .line 121
    .end local v12    # "firstVisiblePhoto":I
    .end local v13    # "firstVisibleRow":I
    .end local v14    # "offset":I
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 122
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragging:Z

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragStartY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->touchslop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 123
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragging:Z

    .line 124
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->isClick:Z

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v1}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->onScrollStarted()V

    .line 127
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragging:Z

    if-eqz v1, :cond_5

    .line 128
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->lastEventY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v11, v1, v2

    .line 129
    .local v11, "dy":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    int-to-float v1, v1

    add-float/2addr v1, v11

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 130
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    if-gez v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 131
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->maxScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->maxScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 132
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->lastEventY:F

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->_awakenScrollBars()V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->invalidate()V

    .line 135
    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollDirBottom:Z

    if-eqz v1, :cond_8

    .line 136
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollDirBottom:Z

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragStartY:F

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragStartTime:J

    .line 146
    .end local v11    # "dy":F
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragging:Z

    if-eqz v1, :cond_9

    .line 148
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragging:Z

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v10, v1, v2

    .line 150
    .local v10, "dTime":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragStartY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    div-float v18, v1, v10

    .line 151
    .local v18, "v":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    const/4 v4, 0x0

    move/from16 v0, v18

    float-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/vkontakte/android/PhotoGalleryView;->maxScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->getHeight()I

    move-result v19

    sub-int v9, v9, v19

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 152
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->isScrolling:Z

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->invalidate()V

    .line 168
    .end local v10    # "dTime":F
    .end local v18    # "v":F
    :cond_6
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 112
    :cond_7
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->isClick:Z

    .line 113
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    rem-int v14, v1, v2

    .line 114
    .restart local v14    # "offset":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    sub-int/2addr v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    div-int v13, v1, v2

    .line 115
    .restart local v13    # "firstVisibleRow":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    move/from16 v16, v0

    .line 116
    .local v16, "pX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    int-to-float v2, v14

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v17, v1, v13

    .line 117
    .local v17, "pY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    mul-int v1, v1, v17

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->selectedPhoto:I

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->invalidate()V

    goto/16 :goto_0

    .line 139
    .end local v13    # "firstVisibleRow":I
    .end local v14    # "offset":I
    .end local v16    # "pX":I
    .end local v17    # "pY":I
    .restart local v11    # "dy":F
    :cond_8
    const/4 v1, 0x0

    cmpg-float v1, v11, v1

    if-gez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollDirBottom:Z

    if-nez v1, :cond_5

    .line 140
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollDirBottom:Z

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragStartY:F

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->dragStartTime:J

    goto/16 :goto_1

    .line 155
    .end local v11    # "dy":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->isClick:Z

    if-eqz v1, :cond_6

    .line 156
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    rem-int v14, v1, v2

    .line 157
    .restart local v14    # "offset":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    sub-int/2addr v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    div-int v13, v1, v2

    .line 158
    .restart local v13    # "firstVisibleRow":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v0, v1

    move/from16 v16, v0

    .line 159
    .restart local v16    # "pX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    int-to-float v2, v14

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v17, v1, v13

    .line 160
    .restart local v17    # "pY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    mul-int v1, v1, v17

    add-int v15, v16, v1

    .line 161
    .local v15, "pN":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-eqz v1, :cond_a

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v1, v15}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->onClick(I)V

    .line 163
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/PhotoGalleryView;->isClick:Z

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PhotoGalleryView;->invalidate()V

    goto/16 :goto_2
.end method

.method public setHost(Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;)V
    .locals 0
    .param p1, "ph"    # Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    .line 266
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoGalleryView;->update()V

    .line 267
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v0}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->host:Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;

    invoke-interface {v0}, Lcom/vkontakte/android/PhotoGalleryView$PhotoGalleryHost;->getCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->nColumns:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/vkontakte/android/PhotoGalleryView;->photoSize:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->maxScrollY:I

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/PhotoGalleryView;->scrollY:I

    .line 260
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoGalleryView;->invalidate()V

    .line 262
    :cond_0
    return-void
.end method
