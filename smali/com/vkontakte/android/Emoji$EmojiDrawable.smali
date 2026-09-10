.class public Lcom/vkontakte/android/Emoji$EmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiDrawable"
.end annotation


# static fields
.field private static paint:Landroid/graphics/Paint;


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field customSize:I

.field fullSize:Z

.field page:I

.field rect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->paint:Landroid/graphics/Paint;

    .line 218
    sget-object v0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 219
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/Emoji$DrawableInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/vkontakte/android/Emoji$DrawableInfo;

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 211
    iput-boolean v0, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    .line 214
    iput v0, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->customSize:I

    .line 222
    iget-object v0, p1, Lcom/vkontakte/android/Emoji$DrawableInfo;->rect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    .line 223
    iget v0, p1, Lcom/vkontakte/android/Emoji$DrawableInfo;->page:I

    iput v0, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->page:I

    .line 228
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 232
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$0()[Ljava/lang/ref/WeakReference;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->page:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/vkontakte/android/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$1()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 234
    iget v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->page:I

    invoke-static {v3}, Lcom/vkontakte/android/Emoji;->access$2(I)V

    .line 253
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->bmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 238
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$0()[Ljava/lang/ref/WeakReference;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->page:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->bmp:Landroid/graphics/Bitmap;

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/Emoji$EmojiDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 240
    .local v0, "b":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .local v1, "cX":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 241
    .local v2, "cY":I
    iget v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->customSize:I

    if-lez v3, :cond_6

    .line 242
    iget-boolean v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v3

    :goto_1
    iget v4, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->customSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 243
    iget-boolean v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v3

    :goto_2
    iget v4, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->customSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 244
    iget-boolean v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v3

    :goto_3
    iget v4, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->customSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 245
    iget-boolean v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v3

    :goto_4
    iget v4, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->customSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 252
    :goto_5
    iget-object v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    sget-object v5, Lcom/vkontakte/android/Emoji$EmojiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 242
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$4()I

    move-result v3

    goto :goto_1

    .line 243
    :cond_3
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$4()I

    move-result v3

    goto :goto_2

    .line 244
    :cond_4
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$4()I

    move-result v3

    goto :goto_3

    .line 245
    :cond_5
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$4()I

    move-result v3

    goto :goto_4

    .line 247
    :cond_6
    iget-boolean v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v3

    :goto_6
    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 248
    iget-boolean v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v3

    :goto_7
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 249
    iget-boolean v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v3

    :goto_8
    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 250
    iget-boolean v3, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->fullSize:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$3()I

    move-result v3

    :goto_9
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 247
    :cond_7
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$4()I

    move-result v3

    goto :goto_6

    .line 248
    :cond_8
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$4()I

    move-result v3

    goto :goto_7

    .line 249
    :cond_9
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$4()I

    move-result v3

    goto :goto_8

    .line 250
    :cond_a
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$4()I

    move-result v3

    goto :goto_9
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 261
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 264
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "s"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->customSize:I

    .line 268
    return-void
.end method
