.class public Lcom/vkontakte/android/ui/PhotoStripView;
.super Landroid/view/View;
.source "PhotoStripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;
    }
.end annotation


# instance fields
.field private bmps:[Landroid/graphics/Bitmap;

.field private gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private listener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

.field private offset:F

.field private padding:I

.field private paint:Landroid/graphics/Paint;

.field private placeholder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    .line 21
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->padding:I

    .line 24
    new-instance v0, Lcom/vkontakte/android/ui/PhotoStripView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/PhotoStripView$1;-><init>(Lcom/vkontakte/android/ui/PhotoStripView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->offset:F

    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoStripView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    .line 21
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->padding:I

    .line 24
    new-instance v0, Lcom/vkontakte/android/ui/PhotoStripView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/PhotoStripView$1;-><init>(Lcom/vkontakte/android/ui/PhotoStripView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->offset:F

    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoStripView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    .line 21
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->padding:I

    .line 24
    new-instance v0, Lcom/vkontakte/android/ui/PhotoStripView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/PhotoStripView$1;-><init>(Lcom/vkontakte/android/ui/PhotoStripView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->offset:F

    .line 51
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoStripView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ui/PhotoStripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoStripView;

    .prologue
    .line 18
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->padding:I

    return v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/PhotoStripView;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoStripView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ui/PhotoStripView;)Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoStripView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->listener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoStripView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 58
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoStripView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoStripView;->gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->gestureDetector:Landroid/view/GestureDetector;

    .line 59
    return-void
.end method


# virtual methods
.method public getOffset()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->offset:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoStripView;->getHeight()I

    move-result v3

    .line 95
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    aget-object v0, v4, v2

    .line 97
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Rect;

    mul-int v4, v3, v2

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoStripView;->padding:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    mul-int v5, v3, v2

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoStripView;->padding:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-direct {v1, v4, v7, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .local v1, "dest":Landroid/graphics/Rect;
    iget v4, p0, Lcom/vkontakte/android/ui/PhotoStripView;->offset:F

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoStripView;->padding:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 95
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 103
    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 106
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "dest":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->listener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    aput-object p2, v0, p1

    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoStripView;->invalidate()V

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 62
    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method

.method public setListener(Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoStripView;->listener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    .line 90
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoStripView;->offset:F

    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoStripView;->invalidate()V

    .line 74
    return-void
.end method
