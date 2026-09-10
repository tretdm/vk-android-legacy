.class public Lcom/vkontakte/android/ZhukovLayout;
.super Ljava/lang/Object;
.source "ZhukovLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMultiThumbsHeight(Ljava/util/List;FF)F
    .locals 2
    .param p1, "width"    # F
    .param p2, "margin"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "ratios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sub-float v0, p1, v0

    invoke-static {p0}, Lcom/vkontakte/android/ZhukovLayout;->sum(Ljava/util/List;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static oi(C)I
    .locals 1
    .param p0, "o"    # C

    .prologue
    const/4 v0, 0x0

    .line 240
    sparse-switch p0, :sswitch_data_0

    .line 248
    :goto_0
    :sswitch_0
    return v0

    .line 244
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_1
        0x71 -> :sswitch_2
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method public static processThumbs(IILjava/util/ArrayList;)V
    .locals 66
    .param p0, "maxW"    # I
    .param p1, "maxH"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v52, "thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :cond_0
    :goto_0
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-nez v61, :cond_2

    .line 23
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v60

    if-nez v60, :cond_3

    .line 237
    :cond_1
    :goto_1
    return-void

    .line 21
    :cond_2
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Attachment;

    .line 22
    .local v5, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v5, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v61, v0

    if-eqz v61, :cond_0

    check-cast v5, Lcom/vkontakte/android/ThumbAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_3
    const-string v41, ""

    .line 26
    .local v41, "orients":Ljava/lang/String;
    const/16 v60, 0x3

    move/from16 v0, v60

    new-array v0, v0, [I

    move-object/from16 v42, v0

    .line 27
    .local v42, "orients_cnt":[I
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v44, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 29
    .local v10, "cnt":I
    const/4 v7, 0x0

    .line 31
    .local v7, "bad":Z
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :goto_2
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-nez v61, :cond_4

    .line 41
    if-eqz v7, :cond_9

    .line 42
    const-string v60, "vk"

    const-string v61, "BAD!"

    invoke-static/range {v60 .. v61}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :goto_3
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-nez v61, :cond_8

    .line 45
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v60

    add-int/lit8 v60, v60, -0x1

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x1

    invoke-interface/range {v60 .. v61}, Lcom/vkontakte/android/ThumbAttachment;->setPaddingAfter(Z)V

    goto :goto_1

    .line 31
    :cond_4
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/vkontakte/android/ThumbAttachment;

    .line 32
    .local v50, "thumb":Lcom/vkontakte/android/ThumbAttachment;
    invoke-interface/range {v50 .. v50}, Lcom/vkontakte/android/ThumbAttachment;->getRatio()F

    move-result v43

    .line 33
    .local v43, "ratio":F
    const/high16 v61, -0x40800000    # -1.0f

    cmpl-float v61, v43, v61

    if-nez v61, :cond_5

    .line 34
    const/4 v7, 0x1

    .line 36
    :cond_5
    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v61, v0

    const-wide v63, 0x3ff3333333333333L    # 1.2

    cmpl-double v61, v61, v63

    if-lez v61, :cond_6

    const/16 v40, 0x77

    .line 37
    .local v40, "orient":C
    :goto_4
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-static/range {v41 .. v41}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v61

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 38
    invoke-static/range {v40 .. v40}, Lcom/vkontakte/android/ZhukovLayout;->oi(C)I

    move-result v61

    aget v62, v42, v61

    add-int/lit8 v62, v62, 0x1

    aput v62, v42, v61

    .line 39
    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v61

    move-object/from16 v0, v44

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 36
    .end local v40    # "orient":C
    :cond_6
    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v61, v0

    const-wide v63, 0x3fe999999999999aL    # 0.8

    cmpg-double v61, v61, v63

    if-gez v61, :cond_7

    const/16 v40, 0x6e

    goto :goto_4

    :cond_7
    const/16 v40, 0x71

    goto :goto_4

    .line 43
    .end local v43    # "ratio":F
    .end local v50    # "thumb":Lcom/vkontakte/android/ThumbAttachment;
    :cond_8
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/vkontakte/android/ThumbAttachment;

    .line 44
    .local v48, "t":Lcom/vkontakte/android/ThumbAttachment;
    const/high16 v61, 0x43070000    # 135.0f

    invoke-static/range {v61 .. v61}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    const/high16 v62, 0x42c80000    # 100.0f

    invoke-static/range {v62 .. v62}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v62

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v61

    move/from16 v2, v62

    move/from16 v3, v63

    move/from16 v4, v64

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_3

    .line 49
    .end local v48    # "t":Lcom/vkontakte/android/ThumbAttachment;
    :cond_9
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v60

    :goto_5
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-nez v61, :cond_a

    .line 51
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v60

    add-int/lit8 v60, v60, -0x1

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x1

    invoke-interface/range {v60 .. v61}, Lcom/vkontakte/android/ThumbAttachment;->setPaddingAfter(Z)V

    .line 53
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v60

    if-nez v60, :cond_b

    invoke-static/range {v44 .. v44}, Lcom/vkontakte/android/ZhukovLayout;->sum(Ljava/util/List;)F

    move-result v60

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v61

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    div-float v6, v60, v61

    .line 55
    .local v6, "avg_ratio":F
    :goto_6
    const/high16 v60, 0x40000000    # 2.0f

    invoke-static/range {v60 .. v60}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v60

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v32, v0

    .local v32, "margin_w":F
    const/high16 v60, 0x40000000    # 2.0f

    invoke-static/range {v60 .. v60}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v60

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v31, v0

    .line 56
    .local v31, "margin_h":F
    if-lez p0, :cond_c

    .line 57
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 v35, v0

    .line 58
    .local v35, "max_w":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v33, v0

    .line 64
    .local v33, "max_h":F
    :goto_7
    div-float v34, v35, v33

    .line 66
    .local v34, "max_ratio":F
    const/16 v60, 0x1

    move/from16 v0, v60

    if-ne v10, v0, :cond_e

    .line 67
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x78

    invoke-interface/range {v60 .. v61}, Lcom/vkontakte/android/ThumbAttachment;->getWidth(C)I

    move-result v60

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v60, v0

    invoke-static/range {v60 .. v60}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v60

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v60, v0

    move/from16 v0, v35

    move/from16 v1, v60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v35

    .line 68
    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    move/from16 v0, v60

    float-to-double v0, v0

    move-wide/from16 v60, v0

    const-wide/high16 v62, 0x3fe0000000000000L    # 0.5

    cmpl-double v60, v60, v62

    if-lez v60, :cond_d

    .line 69
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/Float;

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Float;->floatValue()F

    move-result v61

    div-float v61, v35, v61

    const/16 v62, 0x1

    const/16 v63, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v35

    move/from16 v2, v61

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 49
    .end local v6    # "avg_ratio":F
    .end local v31    # "margin_h":F
    .end local v32    # "margin_w":F
    .end local v33    # "max_h":F
    .end local v34    # "max_ratio":F
    .end local v35    # "max_w":F
    :cond_a
    invoke-interface/range {v60 .. v60}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/vkontakte/android/ThumbAttachment;

    .line 50
    .restart local v48    # "t":Lcom/vkontakte/android/ThumbAttachment;
    const/16 v61, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v61

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ThumbAttachment;->setPaddingAfter(Z)V

    goto/16 :goto_5

    .line 53
    .end local v48    # "t":Lcom/vkontakte/android/ThumbAttachment;
    :cond_b
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 60
    .restart local v6    # "avg_ratio":F
    .restart local v31    # "margin_h":F
    .restart local v32    # "margin_w":F
    :cond_c
    const/high16 v35, 0x43a00000    # 320.0f

    .line 61
    .restart local v35    # "max_w":F
    const/high16 v33, 0x43520000    # 210.0f

    .restart local v33    # "max_h":F
    goto/16 :goto_7

    .line 71
    .restart local v34    # "max_ratio":F
    :cond_d
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/high16 v61, 0x40000000    # 2.0f

    mul-float v61, v61, v35

    const/16 v62, 0x1

    const/16 v63, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v35

    move/from16 v2, v61

    move/from16 v3, v62

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 75
    :cond_e
    const/16 v60, 0x2

    move/from16 v0, v60

    if-ne v10, v0, :cond_12

    .line 76
    const-string v60, "ww"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_f

    float-to-double v0, v6

    move-wide/from16 v60, v0

    const-wide v62, 0x3ff6666666666666L    # 1.4

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v64, v0

    mul-double v62, v62, v64

    cmpl-double v60, v60, v62

    if-lez v60, :cond_f

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v61

    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    sub-float v60, v61, v60

    move/from16 v0, v60

    float-to-double v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0x3fc999999999999aL    # 0.2

    cmpg-double v60, v60, v62

    if-gez v60, :cond_f

    .line 77
    move/from16 v55, v35

    .line 78
    .local v55, "w":F
    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v61, v55, v60

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v55, v60

    sub-float v62, v33, v31

    const/high16 v63, 0x40000000    # 2.0f

    div-float v62, v62, v63

    move/from16 v0, v60

    move/from16 v1, v62

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v60

    move/from16 v0, v61

    move/from16 v1, v60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 79
    .local v16, "h":F
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x1

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v55

    move/from16 v2, v16

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 80
    const/16 v60, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v55

    move/from16 v2, v16

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 81
    .end local v16    # "h":F
    .end local v55    # "w":F
    :cond_f
    const-string v60, "ww"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-nez v60, :cond_10

    const-string v60, "qq"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_11

    .line 82
    :cond_10
    sub-float v60, v35, v32

    const/high16 v61, 0x40000000    # 2.0f

    div-float v55, v60, v61

    .line 83
    .restart local v55    # "w":F
    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v61, v55, v60

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v55, v60

    move/from16 v0, v60

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v60

    move/from16 v0, v61

    move/from16 v1, v60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 84
    .restart local v16    # "h":F
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v55

    move/from16 v2, v16

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 85
    const/16 v60, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v55

    move/from16 v2, v16

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 87
    .end local v16    # "h":F
    .end local v55    # "w":F
    :cond_11
    sub-float v61, v35, v32

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v61, v61, v60

    const/high16 v62, 0x3f800000    # 1.0f

    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v62, v62, v60

    const/high16 v63, 0x3f800000    # 1.0f

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v63, v60

    add-float v60, v60, v62

    div-float v56, v61, v60

    .line 88
    .local v56, "w0":F
    sub-float v60, v35, v56

    sub-float v57, v60, v32

    .line 89
    .local v57, "w1":F
    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v61, v56, v60

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v57, v60

    move/from16 v0, v61

    move/from16 v1, v60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v60

    move/from16 v0, v33

    move/from16 v1, v60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 90
    .restart local v16    # "h":F
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v56

    move/from16 v2, v16

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 91
    const/16 v60, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v57

    move/from16 v2, v16

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 95
    .end local v16    # "h":F
    .end local v56    # "w0":F
    .end local v57    # "w1":F
    :cond_12
    const/16 v60, 0x3

    move/from16 v0, v60

    if-ne v10, v0, :cond_14

    .line 96
    const-string v60, "www"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_13

    .line 97
    move/from16 v55, v35

    .line 98
    .restart local v55    # "w":F
    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v55, v60

    sub-float v61, v33, v31

    const v62, 0x3f28f5c3    # 0.66f

    mul-float v61, v61, v62

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 99
    .local v20, "h_cover":F
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x1

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v55

    move/from16 v2, v20

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 101
    sub-float v60, v35, v32

    const/high16 v61, 0x40000000    # 2.0f

    div-float v55, v60, v61

    .line 102
    sub-float v60, v33, v20

    sub-float v61, v60, v31

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v62, v55, v60

    const/16 v60, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v55, v60

    move/from16 v0, v62

    move/from16 v1, v60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v60

    move/from16 v0, v61

    move/from16 v1, v60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 103
    .restart local v16    # "h":F
    const/16 v60, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v55

    move/from16 v2, v16

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 104
    const/16 v60, 0x2

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v55

    move/from16 v2, v16

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 106
    .end local v16    # "h":F
    .end local v20    # "h_cover":F
    .end local v55    # "w":F
    :cond_13
    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v16, v0

    .line 107
    .local v16, "h":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    mul-float v60, v60, v61

    move/from16 v0, v60

    float-to-double v0, v0

    move-wide/from16 v60, v0

    sub-float v62, v35, v32

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide/high16 v64, 0x3fe8000000000000L    # 0.75

    mul-double v62, v62, v64

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v59, v0

    .line 108
    .local v59, "w_cover":I
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-interface/range {v60 .. v64}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 110
    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    sub-float v61, v33, v31

    mul-float v61, v61, v60

    const/16 v60, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v62

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    add-float v60, v60, v62

    div-float v18, v61, v60

    .line 111
    .local v18, "h1":F
    sub-float v60, v33, v18

    sub-float v17, v60, v31

    .line 112
    .local v17, "h0":F
    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v60, v0

    sub-float v60, v35, v60

    sub-float v61, v60, v32

    const/16 v60, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    mul-float v62, v18, v60

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    mul-float v60, v60, v17

    move/from16 v0, v62

    move/from16 v1, v60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v60

    move/from16 v0, v61

    move/from16 v1, v60

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v55

    .line 114
    .restart local v55    # "w":F
    const/16 v60, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    const/16 v62, 0x1

    move-object/from16 v0, v60

    move/from16 v1, v55

    move/from16 v2, v17

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 115
    const/16 v60, 0x2

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v61, 0x0

    const/16 v62, 0x1

    move-object/from16 v0, v60

    move/from16 v1, v55

    move/from16 v2, v18

    move/from16 v3, v61

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 119
    .end local v16    # "h":I
    .end local v17    # "h0":F
    .end local v18    # "h1":F
    .end local v55    # "w":F
    .end local v59    # "w_cover":I
    :cond_14
    const/16 v60, 0x4

    move/from16 v0, v60

    if-ne v10, v0, :cond_16

    .line 120
    const-string v60, "wwww"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_15

    .line 121
    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v55, v0

    .line 122
    .local v55, "w":I
    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v61, v60

    move/from16 v0, v60

    float-to-double v0, v0

    move-wide/from16 v60, v0

    sub-float v62, v33, v31

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0x3fe51eb851eb851fL    # 0.66

    mul-double v62, v62, v64

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v20, v0

    .line 123
    .local v20, "h_cover":I
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x1

    const/16 v64, 0x0

    invoke-interface/range {v60 .. v64}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 125
    const/high16 v60, 0x40000000    # 2.0f

    mul-float v60, v60, v32

    sub-float v61, v35, v60

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v62

    const/16 v60, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    add-float v62, v62, v60

    const/16 v60, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    add-float v60, v60, v62

    div-float v60, v61, v60

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v16, v0

    .line 126
    .restart local v16    # "h":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    mul-float v60, v60, v61

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v56, v0

    .line 127
    .local v56, "w0":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v60, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    mul-float v60, v60, v61

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v57, v0

    .line 128
    .local v57, "w1":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v60, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    mul-float v60, v60, v61

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v58, v0

    .line 129
    .local v58, "w2":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v60, v0

    sub-float v60, v33, v60

    sub-float v60, v60, v31

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->min(FF)F

    move-result v60

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v16, v0

    .line 131
    const/16 v60, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-interface/range {v60 .. v64}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 132
    const/16 v60, 0x2

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v57

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-interface/range {v60 .. v64}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 133
    const/16 v60, 0x3

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v58

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-interface/range {v60 .. v64}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 135
    .end local v16    # "h":I
    .end local v20    # "h_cover":I
    .end local v55    # "w":I
    .end local v56    # "w0":I
    .end local v57    # "w1":I
    .end local v58    # "w2":I
    :cond_15
    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v16, v0

    .line 136
    .restart local v16    # "h":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v60, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    mul-float v60, v60, v61

    move/from16 v0, v60

    float-to-double v0, v0

    move-wide/from16 v60, v0

    sub-float v62, v35, v32

    move/from16 v0, v62

    float-to-double v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0x3fe51eb851eb851fL    # 0.66

    mul-double v62, v62, v64

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->min(DD)D

    move-result-wide v60

    move-wide/from16 v0, v60

    double-to-int v0, v0

    move/from16 v59, v0

    .line 137
    .restart local v59    # "w_cover":I
    const/16 v60, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-interface/range {v60 .. v64}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 139
    const/high16 v60, 0x40000000    # 2.0f

    mul-float v60, v60, v31

    sub-float v61, v33, v60

    const/high16 v62, 0x3f800000    # 1.0f

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v62, v62, v60

    const/high16 v63, 0x3f800000    # 1.0f

    const/16 v60, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v63, v60

    add-float v62, v62, v60

    const/high16 v63, 0x3f800000    # 1.0f

    const/16 v60, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v63, v60

    add-float v60, v60, v62

    div-float v60, v61, v60

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v55, v0

    .line 140
    .restart local v55    # "w":I
    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v60, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v61, v60

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v17, v0

    .line 141
    .local v17, "h0":I
    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v60, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v61, v60

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v18, v0

    .line 142
    .local v18, "h1":I
    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v61, v0

    const/16 v60, 0x3

    move-object/from16 v0, v44

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v60

    div-float v60, v61, v60

    add-float v60, v60, v31

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v19, v0

    .line 143
    .local v19, "h2":I
    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v60, v0

    sub-float v60, v35, v60

    sub-float v60, v60, v32

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v61, v0

    invoke-static/range {v60 .. v61}, Ljava/lang/Math;->min(FF)F

    move-result v60

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v55, v0

    .line 145
    const/16 v60, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x1

    invoke-interface/range {v60 .. v64}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 146
    const/16 v60, 0x2

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x1

    invoke-interface/range {v60 .. v64}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 147
    const/16 v60, 0x3

    move-object/from16 v0, v52

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v62, v0

    const/16 v63, 0x0

    const/16 v64, 0x1

    invoke-interface/range {v60 .. v64}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 152
    .end local v16    # "h":I
    .end local v17    # "h0":I
    .end local v18    # "h1":I
    .end local v19    # "h2":I
    .end local v55    # "w":I
    .end local v59    # "w_cover":I
    :cond_16
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v45, "ratios_cropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    float-to-double v0, v6

    move-wide/from16 v60, v0

    const-wide v62, 0x3ff199999999999aL    # 1.1

    cmpl-double v60, v60, v62

    if-lez v60, :cond_1a

    .line 154
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v61

    :goto_8
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-nez v60, :cond_19

    .line 163
    :cond_17
    new-instance v54, Ljava/util/HashMap;

    invoke-direct/range {v54 .. v54}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v54, "tries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    new-instance v60, Ljava/lang/StringBuilder;

    move v15, v10

    .local v15, "first_line":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v63

    aput v63, v61, v62

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v15, 0x1

    :goto_9
    add-int/lit8 v60, v10, -0x1

    move/from16 v0, v60

    if-le v15, v0, :cond_1b

    .line 179
    const/4 v15, 0x1

    :goto_a
    add-int/lit8 v60, v10, -0x2

    move/from16 v0, v60

    if-le v15, v0, :cond_1c

    .line 191
    const/16 v36, 0x0

    .line 192
    .local v36, "opt_conf":Ljava/lang/String;
    const/16 v37, 0x0

    .line 193
    .local v37, "opt_diff":F
    const/16 v38, 0x0

    .line 195
    .local v38, "opt_height":F
    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    .line 196
    .local v25, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v61

    :cond_18
    :goto_b
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-nez v60, :cond_1e

    .line 215
    const/4 v8, 0x0

    .line 217
    .local v8, "breakNext":Z
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/util/ArrayList;

    .line 218
    .local v53, "thumbs_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/ArrayList;

    .line 219
    .local v46, "ratios_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const-string v60, ","

    move-object/from16 v0, v36

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, "chunks":[Ljava/lang/String;
    move-object/from16 v0, v54

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [F

    .line 221
    .local v39, "opt_heights":[F
    array-length v0, v9

    move/from16 v60, v0

    add-int/lit8 v27, v60, -0x1

    .line 222
    .local v27, "last_row":I
    const/16 v24, 0x0

    .line 223
    .local v24, "k":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_c
    array-length v0, v9

    move/from16 v60, v0

    move/from16 v0, v22

    move/from16 v1, v60

    if-ge v0, v1, :cond_1

    .line 224
    aget-object v60, v9, v22

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 225
    .local v28, "line_chunks_num":I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v30, "line_thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_d
    move/from16 v0, v23

    move/from16 v1, v28

    if-lt v0, v1, :cond_23

    .line 227
    aget v29, v39, v24

    .line 228
    .local v29, "line_height":F
    add-int/lit8 v24, v24, 0x1

    .line 229
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v60

    add-int/lit8 v26, v60, -0x1

    .line 230
    .local v26, "last_column":I
    const/16 v23, 0x0

    :goto_e
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v23

    move/from16 v1, v60

    if-lt v0, v1, :cond_24

    .line 223
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 154
    .end local v8    # "breakNext":Z
    .end local v9    # "chunks":[Ljava/lang/String;
    .end local v15    # "first_line":I
    .end local v22    # "i":I
    .end local v23    # "j":I
    .end local v24    # "k":I
    .end local v25    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "last_column":I
    .end local v27    # "last_row":I
    .end local v28    # "line_chunks_num":I
    .end local v29    # "line_height":F
    .end local v30    # "line_thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    .end local v36    # "opt_conf":Ljava/lang/String;
    .end local v37    # "opt_diff":F
    .end local v38    # "opt_height":F
    .end local v39    # "opt_heights":[F
    .end local v46    # "ratios_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v53    # "thumbs_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    .end local v54    # "tries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    :cond_19
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v43

    .line 155
    .restart local v43    # "ratio":F
    const/high16 v60, 0x3f800000    # 1.0f

    move/from16 v0, v60

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v60

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 158
    .end local v43    # "ratio":F
    :cond_1a
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v61

    :goto_f
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_17

    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v43

    .line 159
    .restart local v43    # "ratio":F
    const/high16 v60, 0x3f800000    # 1.0f

    move/from16 v0, v60

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v60

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 171
    .end local v43    # "ratio":F
    .restart local v15    # "first_line":I
    .restart local v54    # "tries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    :cond_1b
    new-instance v60, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v61, ","

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    sub-int v47, v10, v15

    .local v47, "second_line":I
    move-object/from16 v0, v60

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    .line 172
    const/16 v63, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v63

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v63

    aput v63, v61, v62

    const/16 v62, 0x1

    .line 173
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v63

    move-object/from16 v0, v45

    move/from16 v1, v63

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v63

    aput v63, v61, v62

    .line 171
    move-object/from16 v0, v54

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_9

    .line 180
    .end local v47    # "second_line":I
    :cond_1c
    const/16 v47, 0x1

    .restart local v47    # "second_line":I
    :goto_10
    sub-int v60, v10, v15

    add-int/lit8 v60, v60, -0x1

    move/from16 v0, v47

    move/from16 v1, v60

    if-le v0, v1, :cond_1d

    .line 179
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    .line 181
    :cond_1d
    new-instance v60, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v61

    invoke-direct/range {v60 .. v61}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v61, ","

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    const-string v61, ","

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    sub-int v61, v10, v15

    sub-int v49, v61, v47

    .local v49, "third_line":I
    move-object/from16 v0, v60

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    const/16 v61, 0x3

    move/from16 v0, v61

    new-array v0, v0, [F

    move-object/from16 v61, v0

    const/16 v62, 0x0

    .line 182
    const/16 v63, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v63

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v63

    aput v63, v61, v62

    const/16 v62, 0x1

    .line 183
    add-int v63, v15, v47

    move-object/from16 v0, v45

    move/from16 v1, v63

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v63

    aput v63, v61, v62

    const/16 v62, 0x2

    .line 184
    add-int v63, v15, v47

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v64

    move-object/from16 v0, v45

    move/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v35

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v63

    aput v63, v61, v62

    .line 181
    move-object/from16 v0, v54

    move-object/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_10

    .line 196
    .end local v47    # "second_line":I
    .end local v49    # "third_line":I
    .restart local v25    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v36    # "opt_conf":Ljava/lang/String;
    .restart local v37    # "opt_diff":F
    .restart local v38    # "opt_height":F
    :cond_1e
    invoke-interface/range {v61 .. v61}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 197
    .local v11, "conf":Ljava/lang/String;
    move-object/from16 v0, v54

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [F

    .line 198
    .local v21, "heights":[F
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v60, v0

    add-int/lit8 v60, v60, -0x1

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v60, v0

    mul-float v13, v31, v60

    .line 199
    .local v13, "conf_h":F
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v62, v0

    const/16 v60, 0x0

    :goto_11
    move/from16 v0, v60

    move/from16 v1, v62

    if-lt v0, v1, :cond_22

    .line 200
    sub-float v60, v13, v33

    invoke-static/range {v60 .. v60}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 201
    .local v12, "conf_diff":F
    const/16 v60, 0x2c

    move/from16 v0, v60

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v60

    const/16 v62, -0x1

    move/from16 v0, v60

    move/from16 v1, v62

    if-eq v0, v1, :cond_20

    .line 202
    const-string v60, ","

    move-object/from16 v0, v60

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 203
    .local v14, "conf_nums":[Ljava/lang/String;
    const/16 v60, 0x0

    aget-object v60, v14, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    const/16 v62, 0x1

    aget-object v62, v14, v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    move/from16 v0, v60

    move/from16 v1, v62

    if-gt v0, v1, :cond_1f

    .line 204
    array-length v0, v14

    move/from16 v60, v0

    const/16 v62, 0x2

    move/from16 v0, v60

    move/from16 v1, v62

    if-le v0, v1, :cond_20

    const/16 v60, 0x1

    aget-object v60, v14, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    const/16 v62, 0x2

    aget-object v62, v14, v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    move/from16 v0, v60

    move/from16 v1, v62

    if-le v0, v1, :cond_20

    .line 205
    :cond_1f
    float-to-double v0, v12

    move-wide/from16 v62, v0

    const-wide v64, 0x3ff199999999999aL    # 1.1

    mul-double v62, v62, v64

    move-wide/from16 v0, v62

    double-to-float v12, v0

    .line 208
    .end local v14    # "conf_nums":[Ljava/lang/String;
    :cond_20
    if-eqz v36, :cond_21

    cmpg-float v60, v12, v37

    if-gez v60, :cond_18

    .line 209
    :cond_21
    move-object/from16 v36, v11

    .line 210
    move/from16 v37, v12

    .line 211
    goto/16 :goto_b

    .line 199
    .end local v12    # "conf_diff":F
    :cond_22
    aget v16, v21, v60

    .local v16, "h":F
    add-float v13, v13, v16

    add-int/lit8 v60, v60, 0x1

    goto :goto_11

    .line 226
    .end local v11    # "conf":Ljava/lang/String;
    .end local v13    # "conf_h":F
    .end local v16    # "h":F
    .end local v21    # "heights":[F
    .restart local v8    # "breakNext":Z
    .restart local v9    # "chunks":[Ljava/lang/String;
    .restart local v22    # "i":I
    .restart local v23    # "j":I
    .restart local v24    # "k":I
    .restart local v27    # "last_row":I
    .restart local v28    # "line_chunks_num":I
    .restart local v30    # "line_thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    .restart local v39    # "opt_heights":[F
    .restart local v46    # "ratios_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v53    # "thumbs_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    :cond_23
    const/16 v60, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/vkontakte/android/ThumbAttachment;

    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_d

    .line 231
    .restart local v26    # "last_column":I
    .restart local v29    # "line_height":F
    :cond_24
    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/vkontakte/android/ThumbAttachment;

    .line 232
    .restart local v50    # "thumb":Lcom/vkontakte/android/ThumbAttachment;
    const/16 v60, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Float;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Float;->floatValue()F

    move-result v51

    .line 233
    .local v51, "thumb_ratio":F
    mul-float v60, v51, v29

    move/from16 v0, v60

    float-to-int v0, v0

    move/from16 v60, v0

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v60, v0

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_25

    const/16 v60, 0x1

    :goto_12
    const/16 v63, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v61

    move/from16 v2, v62

    move/from16 v3, v60

    move/from16 v4, v63

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 230
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_e

    .line 233
    :cond_25
    const/16 v60, 0x0

    goto :goto_12
.end method

.method private static sum(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 253
    .local v1, "sum":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    return v1

    .line 253
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "f":F
    add-float/2addr v1, v0

    goto :goto_0
.end method
