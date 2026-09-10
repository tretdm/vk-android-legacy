.class Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;
.super Ljava/lang/Object;
.source "DialogEntryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/DialogEntryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineBreaker"
.end annotation


# instance fields
.field private mLengthEllipsis:F

.field private mLengthEllipsisMore:F

.field private mLengthLastLine:F

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mRequiredEllipsis:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    .line 347
    return-void
.end method


# virtual methods
.method public breakText(Ljava/lang/String;ILandroid/text/TextPaint;)I
    .locals 7
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "tp"    # Landroid/text/TextPaint;

    .prologue
    const/4 v2, 0x0

    .line 362
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->breakText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/text/TextPaint;)I

    move-result v0

    return v0
.end method

.method public breakText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/text/TextPaint;)I
    .locals 12
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "ellipsis"    # Ljava/lang/String;
    .param p3, "ellipsisMore"    # Ljava/lang/String;
    .param p4, "maxLines"    # I
    .param p5, "maxWidth"    # I
    .param p6, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 385
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 386
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    .line 387
    const/4 v8, 0x0

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthLastLine:F

    .line 388
    const/4 v8, 0x0

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsis:F

    .line 389
    const/4 v8, 0x0

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsisMore:F

    .line 393
    const/4 v8, -0x1

    move/from16 v0, p5

    if-ne v0, v8, :cond_0

    .line 394
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    aput v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 502
    :goto_0
    return v8

    .line 400
    :cond_0
    if-eqz p2, :cond_1

    .line 401
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsis:F

    .line 403
    :cond_1
    if-eqz p3, :cond_2

    .line 404
    move-object/from16 v0, p6

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsisMore:F

    .line 409
    :cond_2
    const/4 v6, -0x1

    .line 410
    .local v6, "posStartThisLine":I
    const/4 v2, 0x0

    .line 411
    .local v2, "lengthThisLine":F
    const/4 v1, 0x1

    .line 412
    .local v1, "breakWords":Z
    const/4 v5, 0x0

    .line 413
    .local v5, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 415
    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    .line 416
    move v6, v5

    .line 419
    :cond_3
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v0, p4

    if-ne v8, v0, :cond_6

    .line 420
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    .line 488
    :cond_4
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    if-eqz v8, :cond_5

    .line 489
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 490
    .local v4, "pairLast":[I
    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v9, v4, v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthLastLine:F

    .line 495
    .end local v4    # "pairLast":[I
    :cond_5
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_e

    .line 496
    const/4 v8, 0x0

    goto :goto_0

    .line 424
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 425
    .local v7, "widthOfChar":F
    const/4 v3, 0x0

    .line 428
    .local v3, "newLineRequired":Z
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_9

    .line 429
    const/4 v3, 0x1

    .line 434
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, v5, -0x1

    aput v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    .line 461
    const/4 v6, -0x1

    .line 464
    const/4 v2, 0x0

    .line 467
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, p4, -0x1

    if-ne v8, v9, :cond_8

    .line 468
    move/from16 v0, p5

    int-to-float v8, v0

    iget v9, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsis:F

    iget v10, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsisMore:F

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v0, v8

    move/from16 p5, v0

    .line 472
    const/4 v1, 0x0

    .line 484
    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 485
    goto/16 :goto_1

    .line 436
    :cond_9
    add-float v8, v2, v7

    move/from16 v0, p5

    int-to-float v9, v0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7

    .line 437
    const/4 v3, 0x1

    .line 439
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_a

    if-nez v1, :cond_b

    .line 441
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 445
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 449
    :cond_b
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_c

    .line 450
    add-int/lit8 v5, v5, -0x1

    .line 451
    if-gez v5, :cond_b

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 455
    :cond_c
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 476
    :cond_d
    add-float/2addr v2, v7

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_8

    .line 480
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 498
    .end local v3    # "newLineRequired":Z
    .end local v7    # "widthOfChar":F
    :cond_e
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 499
    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    goto/16 :goto_0

    :cond_f
    move/from16 v8, p5

    .line 502
    goto/16 :goto_0
.end method

.method public getLengthEllipsis()F
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsis:F

    return v0
.end method

.method public getLengthEllipsisMore()F
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsisMore:F

    return v0
.end method

.method public getLengthLastEllipsizedLine()F
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthLastLine:F

    return v0
.end method

.method public getLengthLastEllipsizedLinePlusEllipsis()F
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthLastLine:F

    iget v1, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsis:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequiredEllipsis()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    return v0
.end method
