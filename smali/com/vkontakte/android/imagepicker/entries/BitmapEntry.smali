.class public Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
.super Lcom/vkontakte/android/imagepicker/entries/Entry;
.source "BitmapEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/entries/Entry",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private failed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/entries/Entry;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/entries/Entry;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getFailed()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->failed:Z

    return v0
.end method

.method public setFailed()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->failed:Z

    .line 22
    return-void
.end method
