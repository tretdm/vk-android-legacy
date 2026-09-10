.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18;
.super Landroid/graphics/drawable/Drawable;
.source "ImagePickerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getSelector(I)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;I)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    .line 1290
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1292
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18$1;

    invoke-direct {v0, p0, p2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18$1;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18;I)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1301
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 1308
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1309
    return-void
.end method
