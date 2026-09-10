.class public Lcom/vkontakte/android/imagepicker/entries/CropEntry;
.super Ljava/lang/Object;
.source "CropEntry.java"


# instance fields
.field private height:I

.field private sourceHeight:I

.field private sourceWidth:I

.field private sourceX:I

.field private sourceY:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "sourceX"    # I
    .param p4, "sourceY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "sourceWidth"    # I
    .param p8, "sourceHeight"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->x:I

    .line 16
    iput p2, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->y:I

    .line 17
    iput p3, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->sourceX:I

    .line 18
    iput p4, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->sourceY:I

    .line 19
    iput p5, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->width:I

    .line 20
    iput p6, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->height:I

    .line 21
    iput p7, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->sourceWidth:I

    .line 22
    iput p8, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->sourceHeight:I

    .line 23
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->height:I

    return v0
.end method

.method public getSourceHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->sourceHeight:I

    return v0
.end method

.method public getSourceWidth()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->sourceWidth:I

    return v0
.end method

.method public getSourceX()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->x:I

    return v0
.end method

.method public getSourceY()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->y:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/CropEntry;->y:I

    return v0
.end method
