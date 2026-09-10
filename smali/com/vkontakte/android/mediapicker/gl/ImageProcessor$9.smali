.class Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->applyStylesForBitmap(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/StyleEntry;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

.field final synthetic val$async:Z

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field final synthetic val$styleEntry:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/StyleEntry;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$styleEntry:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    iput-boolean p4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$async:Z

    iput-object p5, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 618
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$bitmap:Landroid/graphics/Bitmap;

    .line 620
    .local v0, "result":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$styleEntry:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$styleEntry:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getCropData()[F

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->access$600(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 625
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$styleEntry:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    invoke-static {v1, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->access$700(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$styleEntry:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$styleEntry:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getFilterId()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$styleEntry:Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getTextureKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->access$800(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 635
    :cond_2
    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$async:Z

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    .line 639
    :goto_0
    return-void

    .line 638
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    goto :goto_0
.end method
