.class Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$6;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->filter(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/imagepicker/utils/ActionCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
        "<",
        "Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

.field private final synthetic val$bitmapEntry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$6;->this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$6;->val$bitmapEntry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .line 296
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    .locals 2
    .param p1, "result"    # Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$6;->val$bitmapEntry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 305
    return-void

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$6;->run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    return-void
.end method
