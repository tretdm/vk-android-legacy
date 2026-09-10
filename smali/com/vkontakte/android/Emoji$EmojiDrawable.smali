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


# instance fields
.field rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 973
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 974
    iput-object p1, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    .line 979
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 983
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$0()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/vkontakte/android/Emoji$EmojiDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$1()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 989
    :goto_0
    return-void

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/Emoji$EmojiDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 988
    .local v0, "b":Landroid/graphics/Rect;
    invoke-static {}, Lcom/vkontakte/android/Emoji;->access$0()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/Emoji$EmojiDrawable;->rect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 997
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1000
    return-void
.end method
