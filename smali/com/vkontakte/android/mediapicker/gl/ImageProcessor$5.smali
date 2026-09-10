.class Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filter(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

.field private final synthetic val$bitmapCallback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field private final synthetic val$bitmapEntry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

.field private final synthetic val$context:I

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$image_key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;Ljava/lang/String;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$bitmapCallback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$bitmapEntry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$image_key:Ljava/lang/String;

    iput-object p5, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput p6, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$context:I

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 297
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$bitmapCallback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$bitmapEntry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$image_key:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getFilterId()I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$bitmapEntry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$bitmapCallback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->access$1(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Ljava/lang/String;ILcom/vkontakte/android/mediapicker/entries/BitmapEntry;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->val$context:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 314
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->access$2(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "I don\'t know, how it has happened"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
