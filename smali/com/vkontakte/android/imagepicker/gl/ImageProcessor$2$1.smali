.class Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2$1;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->run()V
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
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;

.field private final synthetic val$entry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2$1;->this$1:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2$1;->val$entry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .line 142
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2$1;->val$entry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2$1;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
