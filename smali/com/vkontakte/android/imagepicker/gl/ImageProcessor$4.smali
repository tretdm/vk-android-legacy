.class Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;->this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    iput-boolean p2, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;->val$sync:Z

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    .line 246
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;->val$sync:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
