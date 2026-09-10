.class Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;
.super Landroid/graphics/drawable/Drawable;
.source "GalleryPickerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getSelector(I)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;I)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;->this$0:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    .line 558
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 560
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7$1;

    invoke-direct {v0, p0, p2}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7$1;-><init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;I)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 569
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 576
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 577
    return-void
.end method
