.class Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->style(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$fromUi:Z

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private final synthetic val$maximumSize:I

.field private final synthetic val$noFilter:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZIZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$noFilter:Z

    iput p5, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$maximumSize:I

    iput-boolean p6, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$fromUi:Z

    iput-object p7, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v13, 0x0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 136
    .local v9, "totalMs":J
    new-instance v7, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    .local v7, "entry":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v8

    .line 142
    .local v8, "style":Lcom/vkontakte/android/imagepicker/entries/StyleEntry;
    new-instance v5, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2$1;

    invoke-direct {v5, p0, v7}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2$1;-><init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 151
    .local v5, "setterCallback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v8}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getCropData()[F

    move-result-object v2

    invoke-virtual {v1, v0, v2, v5}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->crop(Landroid/graphics/Bitmap;[FLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    .line 156
    :cond_0
    invoke-virtual {v8}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$noFilter:Z

    if-nez v0, :cond_1

    .line 158
    const-string v0, "Filtering..."

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->FLWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$maximumSize:I

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->filter(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/imagepicker/utils/ActionCallback;I)V

    .line 162
    :cond_1
    invoke-virtual {v8}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsEnhanced()Z

    .line 167
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->updateStyledThumb(Landroid/graphics/Bitmap;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 174
    .end local v5    # "setterCallback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    .end local v8    # "style":Lcom/vkontakte/android/imagepicker/entries/StyleEntry;
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$fromUi:Z

    if-eqz v0, :cond_3

    .line 175
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    const-string v1, "Styling completed in %dms for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    long-to-int v4, v11

    int-to-long v11, v4

    sub-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v13

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->access$0(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    return-void

    .line 171
    :cond_2
    const-string v0, "not caching styled thumb"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    goto :goto_1
.end method
