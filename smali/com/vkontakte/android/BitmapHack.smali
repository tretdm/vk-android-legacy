.class public Lcom/vkontakte/android/BitmapHack;
.super Ljava/lang/Object;
.source "BitmapHack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;
    }
.end annotation


# static fields
.field private static hackedBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final runtime:Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/BitmapHack;->hackedBitmaps:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;

    invoke-direct {v0}, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;-><init>()V

    sput-object v0, Lcom/vkontakte/android/BitmapHack;->runtime:Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hackBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 76
    sget-object v0, Lcom/vkontakte/android/BitmapHack;->hackedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lcom/vkontakte/android/BitmapHack;->runtime:Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackFree(J)Z

    .line 78
    sget-object v0, Lcom/vkontakte/android/BitmapHack;->hackedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public static unhackBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 83
    sget-object v0, Lcom/vkontakte/android/BitmapHack;->hackedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/vkontakte/android/BitmapHack;->runtime:Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/BitmapHack$VMRuntimeHack;->trackAlloc(J)Z

    .line 86
    sget-object v0, Lcom/vkontakte/android/BitmapHack;->hackedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    return-void
.end method

.method public static unhackList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "bmps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    return-void

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/vkontakte/android/BitmapHack;->unhackBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
