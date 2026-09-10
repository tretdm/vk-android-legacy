.class Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;
.super Ljava/lang/Object;
.source "LocalImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

.field private final synthetic val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field private final synthetic val$context:I

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$noEnhance:Z

.field private final synthetic val$noFilter:Z

.field private final synthetic val$size:I

.field private final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;IZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZZI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput p3, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$size:I

    iput-boolean p4, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$sync:Z

    iput-object p5, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iput-boolean p6, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$noFilter:Z

    iput-boolean p7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$noEnhance:Z

    iput p8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$context:I

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 423
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 424
    .local v10, "prefix":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 426
    .local v12, "totalMs":J
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getPath()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$size:I

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getBitmapByPath(Ljava/lang/String;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v9

    .line 428
    .local v9, "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->getFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$sync:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 474
    .end local v9    # "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v12    # "totalMs":J
    :goto_0
    return-void

    .line 433
    .restart local v9    # "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .restart local v10    # "prefix":Ljava/lang/String;
    .restart local v12    # "totalMs":J
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v9    # "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v12    # "totalMs":J
    :catch_0
    move-exception v11

    .line 467
    .local v11, "throwable":Ljava/lang/Throwable;
    const-string v0, "Error.. Fuck :("

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v11, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 469
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$sync:Z

    if-eqz v0, :cond_3

    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    goto :goto_0

    .line 440
    .end local v11    # "throwable":Ljava/lang/Throwable;
    .restart local v9    # "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .restart local v10    # "prefix":Ljava/lang/String;
    .restart local v12    # "totalMs":J
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getCropData()[F

    .line 448
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget-boolean v3, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$noFilter:Z

    iget-boolean v4, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$noEnhance:Z

    new-instance v5, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;

    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$sync:Z

    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-direct {v5, p0, v9, v6, v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6$1;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    .line 459
    const/4 v6, 0x0

    iget v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$size:I

    iget v8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$context:I

    .line 448
    invoke-virtual/range {v0 .. v8}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->style(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 472
    .end local v9    # "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v12    # "totalMs":J
    .restart local v11    # "throwable":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
