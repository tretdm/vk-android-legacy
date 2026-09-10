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
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    .line 332
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

    .line 347
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
    .line 370
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 371
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    .line 372
    const/4 v8, 0x0

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthLastLine:F

    .line 373
    const/4 v8, 0x0

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsis:F

    .line 374
    const/4 v8, 0x0

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsisMore:F

    .line 378
    const/4 v8, -0x1

    move/from16 v0, p5

    if-ne v0, v8, :cond_0

    .line 379
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    aput v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    .line 487
    :goto_0
    return v8

    .line 385
    :cond_0
    if-eqz p2, :cond_1

    .line 386
    move-object/from16 v0, p6

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsis:F

    .line 388
    :cond_1
    if-eqz p3, :cond_2

    .line 389
    move-object/from16 v0, p6

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsisMore:F

    .line 394
    :cond_2
    const/4 v6, -0x1

    .line 395
    .local v6, "posStartThisLine":I
    const/4 v2, 0x0

    .line 396
    .local v2, "lengthThisLine":F
    const/4 v1, 0x1

    .line 397
    .local v1, "breakWords":Z
    const/4 v5, 0x0

    .line 398
    .local v5, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v5, v8, :cond_4

    .line 473
    :goto_2
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    if-eqz v8, :cond_3

    .line 474
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 475
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

    .line 480
    .end local v4    # "pairLast":[I
    :cond_3
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_e

    .line 481
    const/4 v8, 0x0

    goto :goto_0

    .line 400
    :cond_4
    const/4 v8, -0x1

    if-ne v6, v8, :cond_5

    .line 401
    move v6, v5

    .line 404
    :cond_5
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v0, p4

    if-ne v8, v0, :cond_6

    .line 405
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    goto :goto_2

    .line 409
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 410
    .local v7, "widthOfChar":F
    const/4 v3, 0x0

    .line 413
    .local v3, "newLineRequired":Z
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_9

    .line 414
    const/4 v3, 0x1

    .line 419
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, v5, -0x1

    aput v11, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_7
    :goto_3
    if-eqz v3, :cond_d

    .line 446
    const/4 v6, -0x1

    .line 449
    const/4 v2, 0x0

    .line 452
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, p4, -0x1

    if-ne v8, v9, :cond_8

    .line 453
    move/from16 v0, p5

    int-to-float v8, v0

    iget v9, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsis:F

    iget v10, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsisMore:F

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v0, v8

    move/from16 p5, v0

    .line 457
    const/4 v1, 0x0

    .line 469
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 421
    :cond_9
    add-float v8, v2, v7

    move/from16 v0, p5

    int-to-float v9, v0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_7

    .line 422
    const/4 v3, 0x1

    .line 424
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_a

    if-nez v1, :cond_c

    .line 426
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 430
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 435
    :cond_b
    add-int/lit8 v5, v5, -0x1

    .line 436
    if-gez v5, :cond_c

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 434
    :cond_c
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_b

    .line 440
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 461
    :cond_d
    add-float/2addr v2, v7

    .line 464
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_8

    .line 465
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 483
    .end local v3    # "newLineRequired":Z
    .end local v7    # "widthOfChar":F
    :cond_e
    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 484
    move-object/from16 v0, p6

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    goto/16 :goto_0

    :cond_f
    move/from16 v8, p5

    .line 487
    goto/16 :goto_0
.end method

.method public getLengthEllipsis()F
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsis:F

    return v0
.end method

.method public getLengthEllipsisMore()F
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthEllipsisMore:F

    return v0
.end method

.method public getLengthLastEllipsizedLine()F
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLengthLastLine:F

    return v0
.end method

.method public getLengthLastEllipsizedLinePlusEllipsis()F
    .locals 2

    .prologue
    .line 504
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
    .line 496
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mLines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequiredEllipsis()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->mRequiredEllipsis:Z

    return v0
.end method
