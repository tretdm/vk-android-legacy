.class public Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;
.super Ljava/lang/Object;
.source "ImageDataEntry.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private imageId:I

.field private ms:I

.field private temp:B


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "imageId"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->imageId:I

    .line 18
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->imageId:I

    return v0
.end method

.method public getLoadedIn()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->ms:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->bitmap:Landroid/graphics/Bitmap;

    .line 38
    return-void
.end method

.method public setImageId(I)V
    .locals 0
    .param p1, "imageId"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->imageId:I

    .line 28
    return-void
.end method

.method public setIsTemp(Z)V
    .locals 1
    .param p1, "isTemp"    # Z

    .prologue
    .line 22
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->temp:B

    .line 23
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoadedIn(I)V
    .locals 0
    .param p1, "ms"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->ms:I

    .line 48
    return-void
.end method
