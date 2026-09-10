.class Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2$1;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;

.field final synthetic val$entry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2$1;->this$1:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2$1;->val$entry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2$1;->val$entry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2$1;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
