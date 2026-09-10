.class public Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;
.super Landroid/view/View;
.source "ViewWithClipping.java"


# static fields
.field private static paint:Landroid/graphics/Paint;

.field private static paint_inited:Z


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private clipBottom:I

.field private clipLeft:I

.field private clipRight:I

.field private clipTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->paint_inited:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->paint_inited:Z

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->paint:Landroid/graphics/Paint;

    .line 36
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 38
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->paint_inited:Z

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public getClipBottom()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipBottom:I

    return v0
.end method

.method public getClipHorizontal()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipRight:I

    return v0
.end method

.method public getClipLeft()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipLeft:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipRight:I

    return v0
.end method

.method public getClipTop()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipTop:I

    return v0
.end method

.method public getClipVertical()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipTop:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipLeft:I

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipTop:I

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipRight:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipBottom:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 131
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const-string v1, "U OR NO PASSING RECYCLED THUMB?"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 140
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->bmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v4, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setClipBottom(I)V
    .locals 0
    .param p1, "clipBottom"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipBottom:I

    .line 74
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->invalidate()V

    .line 75
    return-void
.end method

.method public setClipHorizontal(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipRight:I

    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipLeft:I

    .line 105
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->invalidate()V

    .line 106
    return-void
.end method

.method public setClipLeft(I)V
    .locals 0
    .param p1, "clipLeft"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipLeft:I

    .line 62
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->invalidate()V

    .line 63
    return-void
.end method

.method public setClipRight(I)V
    .locals 0
    .param p1, "clipRight"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipRight:I

    .line 86
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->invalidate()V

    .line 87
    return-void
.end method

.method public setClipTop(I)V
    .locals 0
    .param p1, "clipTop"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipTop:I

    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->invalidate()V

    .line 51
    return-void
.end method

.method public setClipVertical(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipBottom:I

    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clipTop:I

    .line 93
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->invalidate()V

    .line 94
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->bmp:Landroid/graphics/Bitmap;

    .line 117
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->invalidate()V

    .line 118
    return-void
.end method
