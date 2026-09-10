.class public Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;
.super Landroid/view/View;
.source "ImageCheckView.java"


# static fields
.field private static bitmap_checked:Landroid/graphics/Bitmap;

.field private static bitmap_unchecked:Landroid/graphics/Bitmap;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private isChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->isChecked:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 45
    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->paint:Landroid/graphics/Paint;

    .line 48
    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 49
    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 50
    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    :cond_0
    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 55
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 57
    .local v0, "size":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->bitmap_unchecked:Landroid/graphics/Bitmap;

    .line 58
    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->bitmap_unchecked:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->bitmap_unchecked:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    .line 61
    sget-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    .line 63
    .end local v0    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getIsChecked()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->isChecked:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->isChecked:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->bitmap_unchecked:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setIsChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageCheckView;->isChecked:Z

    .line 36
    return-void
.end method
