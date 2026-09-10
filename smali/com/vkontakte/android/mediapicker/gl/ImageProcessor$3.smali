.class Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$3;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->updateStyledThumbAsync(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$3;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$3;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$3;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$3;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$3;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$3;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->updateStyledThumb(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 216
    return-void
.end method
