.class Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$6;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filter(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

.field private final synthetic val$bitmapEntry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$6;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$6;->val$bitmapEntry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .line 328
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 2
    .param p1, "result"    # Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$6;->val$bitmapEntry:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 337
    return-void

    .line 333
    :cond_0
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$6;->run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    return-void
.end method
