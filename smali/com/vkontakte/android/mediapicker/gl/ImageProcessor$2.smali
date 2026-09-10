.class Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->style(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field final synthetic val$context:I

.field final synthetic val$fromUi:Z

.field final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field final synthetic val$maximumSize:I

.field final synthetic val$noEnhance:Z

.field final synthetic val$noFilter:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZIIZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$noEnhance:Z

    iput-boolean p5, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$noFilter:Z

    iput p6, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$context:I

    iput p7, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$maximumSize:I

    iput-boolean p8, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$fromUi:Z

    iput-object p9, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v4, 0x1

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    const-string v1, "STYLING STARTED - %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->access$000(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 152
    .local v10, "totalMs":J
    new-instance v8, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    .local v8, "entry":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v9

    .line 158
    .local v9, "style":Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    new-instance v6, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2$1;

    invoke-direct {v6, p0, v8}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2$1;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 167
    .local v6, "setterCallback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getCropData()[F

    move-result-object v2

    invoke-virtual {v1, v0, v2, v6}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->crop(Landroid/graphics/Bitmap;[FLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$noEnhance:Z

    if-nez v0, :cond_1

    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 177
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$noFilter:Z

    if-nez v0, :cond_2

    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$context:I

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$maximumSize:I

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filter(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;I)V

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->updateStyledThumb(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 190
    .end local v6    # "setterCallback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    .end local v9    # "style":Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$fromUi:Z

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    const-string v1, "Styling completed in %dms for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v3, v12

    int-to-long v12, v3

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v14

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->access$000(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-void

    .line 187
    :cond_3
    const-string v0, "not caching styled thumb"

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    goto :goto_1
.end method
