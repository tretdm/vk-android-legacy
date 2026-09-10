.class Lcom/vkontakte/android/fragments/PhotoListFragment$4;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment;->updateCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 308
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/fragments/PhotoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Lcom/vkontakte/android/api/PhotoAlbum;

    move-result-object v8

    iget-object v8, v8, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-static {v8}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 309
    .local v2, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-lt v8, v0, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v18, 0x82

    move/from16 v0, v18

    if-ge v8, v0, :cond_1

    .line 310
    :cond_0
    const/16 v16, 0x0

    .local v16, "tw":I
    const/4 v15, 0x0

    .line 311
    .local v15, "th":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    if-le v8, v0, :cond_3

    .line 312
    const/16 v15, 0x82

    .line 313
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v8, v8, v18

    const/high16 v18, 0x43020000    # 130.0f

    mul-float v8, v8, v18

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 318
    :goto_0
    const/4 v8, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v15, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 320
    .end local v15    # "th":I
    .end local v16    # "tw":I
    :cond_1
    if-nez v2, :cond_4

    .line 356
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-void

    .line 315
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v15    # "th":I
    .restart local v16    # "tw":I
    :cond_3
    const/16 v16, 0xc8

    .line 316
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v8, v8, v18

    const/high16 v18, 0x43480000    # 200.0f

    mul-float v8, v8, v18

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v15

    goto :goto_0

    .line 322
    .end local v15    # "th":I
    .end local v16    # "tw":I
    :cond_4
    const/16 v14, 0xc8

    .local v14, "targetW":I
    const/16 v13, 0x82

    .line 323
    .local v13, "targetH":I
    const v12, 0x3fc4ec4f

    .line 324
    .local v12, "tRatio":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v8, v18

    .line 327
    .local v10, "bRatio":F
    cmpl-float v8, v10, v12

    if-ltz v8, :cond_5

    .line 328
    const/high16 v8, 0x43020000    # 130.0f

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v8, v18

    .line 329
    .local v11, "scale":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float/2addr v8, v11

    const/high16 v18, 0x42c80000    # 100.0f

    sub-float v8, v8, v18

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 330
    .local v3, "cropX":I
    const/4 v4, 0x0

    .line 331
    .local v4, "cropY":I
    const/high16 v8, 0x43480000    # 200.0f

    div-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 332
    .local v5, "cropW":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 340
    .local v6, "cropH":I
    :goto_2
    const-string v8, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cropping: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " -> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", s="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 342
    .local v7, "m":Landroid/graphics/Matrix;
    invoke-virtual {v7, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 343
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 344
    const/4 v8, 0x5

    invoke-static {v2, v8}, Lcom/vkontakte/android/StackBlur;->blurBitmap(Landroid/graphics/Bitmap;I)V

    .line 345
    move-object v9, v2

    .line 346
    .local v9, "_bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/fragments/PhotoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/fragments/PhotoListFragment$4;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v18, Lcom/vkontakte/android/fragments/PhotoListFragment$4$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/vkontakte/android/fragments/PhotoListFragment$4$1;-><init>(Lcom/vkontakte/android/fragments/PhotoListFragment$4;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 353
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "cropX":I
    .end local v4    # "cropY":I
    .end local v5    # "cropW":I
    .end local v6    # "cropH":I
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v9    # "_bmp":Landroid/graphics/Bitmap;
    .end local v10    # "bRatio":F
    .end local v11    # "scale":F
    .end local v12    # "tRatio":F
    .end local v13    # "targetH":I
    .end local v14    # "targetW":I
    :catch_0
    move-exception v17

    .line 354
    .local v17, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 334
    .end local v17    # "x":Ljava/lang/Exception;
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v10    # "bRatio":F
    .restart local v12    # "tRatio":F
    .restart local v13    # "targetH":I
    .restart local v14    # "targetW":I
    :cond_5
    const/high16 v8, 0x43480000    # 200.0f

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v8, v18

    .line 335
    .restart local v11    # "scale":F
    const/4 v3, 0x0

    .line 336
    .restart local v3    # "cropX":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float/2addr v8, v11

    const/high16 v18, 0x42820000    # 65.0f

    sub-float v8, v8, v18

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 337
    .restart local v4    # "cropY":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 338
    .restart local v5    # "cropW":I
    const/high16 v8, 0x43020000    # 130.0f

    div-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .restart local v6    # "cropH":I
    goto/16 :goto_2
.end method
