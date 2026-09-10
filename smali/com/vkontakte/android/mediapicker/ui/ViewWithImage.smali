.class public Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;
.super Landroid/view/View;
.source "ViewWithImage.java"


# static fields
.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->ratio:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->ratio:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->bitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->bitmap:Landroid/graphics/Bitmap;

    .line 28
    if-nez p1, :cond_0

    .line 30
    const/4 v3, 0x0

    iput v3, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->ratio:F

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->postInvalidate()V

    .line 42
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 35
    .local v1, "size":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 36
    .local v2, "width":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 38
    .local v0, "height":F
    div-float v3, v1, v2

    div-float v4, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/mediapicker/ui/ViewWithImage;->ratio:F

    goto :goto_0
.end method
