.class public Lcom/vkontakte/android/ZhukovLayout;
.super Ljava/lang/Object;
.source "ZhukovLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
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
    .line 255
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

    .line 237
    sparse-switch p0, :sswitch_data_0

    .line 245
    :goto_0
    :sswitch_0
    return v0

    .line 241
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_1
        0x71 -> :sswitch_2
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method public static processThumbs(IILjava/util/ArrayList;)V
    .locals 70
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
    .line 17
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v56, "thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 19
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v64, v0

    if-eqz v64, :cond_0

    check-cast v6, Lcom/vkontakte/android/ThumbAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v64

    if-nez v64, :cond_3

    .line 234
    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 22
    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v45, ""

    .line 23
    .local v45, "orients":Ljava/lang/String;
    const/16 v64, 0x3

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v46, v0

    .line 24
    .local v46, "orients_cnt":[I
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v48, "ratios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 26
    .local v11, "cnt":I
    const/4 v8, 0x0

    .line 28
    .local v8, "bad":Z
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/vkontakte/android/ThumbAttachment;

    .line 29
    .local v54, "thumb":Lcom/vkontakte/android/ThumbAttachment;
    invoke-interface/range {v54 .. v54}, Lcom/vkontakte/android/ThumbAttachment;->getRatio()F

    move-result v47

    .line 30
    .local v47, "ratio":F
    const/high16 v64, -0x40800000    # -1.0f

    cmpl-float v64, v47, v64

    if-nez v64, :cond_4

    .line 31
    const/4 v8, 0x1

    .line 33
    :cond_4
    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x3ff3333333333333L    # 1.2

    cmpl-double v64, v64, v66

    if-lez v64, :cond_5

    const/16 v44, 0x77

    .line 34
    .local v44, "orient":C
    :goto_3
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 35
    invoke-static/range {v44 .. v44}, Lcom/vkontakte/android/ZhukovLayout;->oi(C)I

    move-result v64

    aget v65, v46, v64

    add-int/lit8 v65, v65, 0x1

    aput v65, v46, v64

    .line 36
    invoke-static/range {v47 .. v47}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v64

    move-object/from16 v0, v48

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    .end local v44    # "orient":C
    :cond_5
    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x3fe999999999999aL    # 0.8

    cmpg-double v64, v64, v66

    if-gez v64, :cond_6

    const/16 v44, 0x6e

    goto :goto_3

    :cond_6
    const/16 v44, 0x71

    goto :goto_3

    .line 38
    .end local v47    # "ratio":F
    .end local v54    # "thumb":Lcom/vkontakte/android/ThumbAttachment;
    :cond_7
    if-eqz v8, :cond_9

    .line 39
    const-string v64, "vk"

    const-string v65, "BAD!"

    invoke-static/range {v64 .. v65}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/vkontakte/android/ThumbAttachment;

    .line 41
    .local v52, "t":Lcom/vkontakte/android/ThumbAttachment;
    const/high16 v64, 0x43070000    # 135.0f

    invoke-static/range {v64 .. v64}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    const/high16 v65, 0x42c80000    # 100.0f

    invoke-static/range {v65 .. v65}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto :goto_4

    .line 42
    .end local v52    # "t":Lcom/vkontakte/android/ThumbAttachment;
    :cond_8
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v64

    add-int/lit8 v64, v64, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/vkontakte/android/ThumbAttachment;->setPaddingAfter(Z)V

    goto/16 :goto_1

    .line 46
    :cond_9
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/vkontakte/android/ThumbAttachment;

    .line 47
    .restart local v52    # "t":Lcom/vkontakte/android/ThumbAttachment;
    const/16 v64, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ThumbAttachment;->setPaddingAfter(Z)V

    goto :goto_5

    .line 48
    .end local v52    # "t":Lcom/vkontakte/android/ThumbAttachment;
    :cond_a
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v64

    add-int/lit8 v64, v64, -0x1

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/vkontakte/android/ThumbAttachment;->setPaddingAfter(Z)V

    .line 50
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_b

    invoke-static/range {v48 .. v48}, Lcom/vkontakte/android/ZhukovLayout;->sum(Ljava/util/List;)F

    move-result v64

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    div-float v7, v64, v65

    .line 52
    .local v7, "avg_ratio":F
    :goto_6
    const/high16 v64, 0x40000000    # 2.0f

    invoke-static/range {v64 .. v64}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v36, v0

    .local v36, "margin_w":F
    const/high16 v64, 0x40000000    # 2.0f

    invoke-static/range {v64 .. v64}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v35, v0

    .line 53
    .local v35, "margin_h":F
    if-lez p0, :cond_c

    .line 54
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 v39, v0

    .line 55
    .local v39, "max_w":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v37, v0

    .line 61
    .local v37, "max_h":F
    :goto_7
    div-float v38, v39, v37

    .line 63
    .local v38, "max_ratio":F
    const/16 v64, 0x1

    move/from16 v0, v64

    if-ne v11, v0, :cond_e

    .line 64
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x78

    invoke-interface/range {v64 .. v65}, Lcom/vkontakte/android/ThumbAttachment;->getWidth(C)I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    move/from16 v0, v39

    move/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v39

    .line 65
    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    move/from16 v0, v64

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide/high16 v66, 0x3fe0000000000000L    # 0.5

    cmpl-double v64, v64, v66

    if-lez v64, :cond_d

    .line 66
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/lang/Float;

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Float;->floatValue()F

    move-result v65

    div-float v65, v39, v65

    const/16 v66, 0x1

    const/16 v67, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v39

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 50
    .end local v7    # "avg_ratio":F
    .end local v35    # "margin_h":F
    .end local v36    # "margin_w":F
    .end local v37    # "max_h":F
    .end local v38    # "max_ratio":F
    .end local v39    # "max_w":F
    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 57
    .restart local v7    # "avg_ratio":F
    .restart local v35    # "margin_h":F
    .restart local v36    # "margin_w":F
    :cond_c
    const/high16 v39, 0x43a00000    # 320.0f

    .line 58
    .restart local v39    # "max_w":F
    const/high16 v37, 0x43520000    # 210.0f

    .restart local v37    # "max_h":F
    goto/16 :goto_7

    .line 68
    .restart local v38    # "max_ratio":F
    :cond_d
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/high16 v65, 0x40000000    # 2.0f

    mul-float v65, v65, v39

    const/16 v66, 0x1

    const/16 v67, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v39

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 72
    :cond_e
    const/16 v64, 0x2

    move/from16 v0, v64

    if-ne v11, v0, :cond_12

    .line 73
    const-string v64, "ww"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_f

    float-to-double v0, v7

    move-wide/from16 v64, v0

    const-wide v66, 0x3ff6666666666666L    # 1.4

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v68, v0

    mul-double v66, v66, v68

    cmpl-double v64, v64, v66

    if-lez v64, :cond_f

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v65

    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    sub-float v64, v65, v64

    move/from16 v0, v64

    float-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x3fc999999999999aL    # 0.2

    cmpg-double v64, v64, v66

    if-gez v64, :cond_f

    .line 74
    move/from16 v59, v39

    .line 75
    .local v59, "w":F
    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v65, v59, v64

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v59, v64

    sub-float v66, v37, v35

    const/high16 v67, 0x40000000    # 2.0f

    div-float v66, v66, v67

    move/from16 v0, v64

    move/from16 v1, v66

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v64

    move/from16 v0, v65

    move/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 76
    .local v17, "h":F
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x1

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v59

    move/from16 v2, v17

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 77
    const/16 v64, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v59

    move/from16 v2, v17

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 78
    .end local v17    # "h":F
    .end local v59    # "w":F
    :cond_f
    const-string v64, "ww"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-nez v64, :cond_10

    const-string v64, "qq"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_11

    .line 79
    :cond_10
    sub-float v64, v39, v36

    const/high16 v65, 0x40000000    # 2.0f

    div-float v59, v64, v65

    .line 80
    .restart local v59    # "w":F
    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v65, v59, v64

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v59, v64

    move/from16 v0, v64

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v64

    move/from16 v0, v65

    move/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 81
    .restart local v17    # "h":F
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v59

    move/from16 v2, v17

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 82
    const/16 v64, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v59

    move/from16 v2, v17

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 84
    .end local v17    # "h":F
    .end local v59    # "w":F
    :cond_11
    sub-float v65, v39, v36

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v65, v65, v64

    const/high16 v66, 0x3f800000    # 1.0f

    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v66, v66, v64

    const/high16 v67, 0x3f800000    # 1.0f

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v67, v64

    add-float v64, v64, v66

    div-float v60, v65, v64

    .line 85
    .local v60, "w0":F
    sub-float v64, v39, v60

    sub-float v61, v64, v36

    .line 86
    .local v61, "w1":F
    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v65, v60, v64

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v61, v64

    move/from16 v0, v65

    move/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v64

    move/from16 v0, v37

    move/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 87
    .restart local v17    # "h":F
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v60

    move/from16 v2, v17

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 88
    const/16 v64, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v61

    move/from16 v2, v17

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 92
    .end local v17    # "h":F
    .end local v60    # "w0":F
    .end local v61    # "w1":F
    :cond_12
    const/16 v64, 0x3

    move/from16 v0, v64

    if-ne v11, v0, :cond_14

    .line 93
    const-string v64, "www"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_13

    .line 94
    move/from16 v59, v39

    .line 95
    .restart local v59    # "w":F
    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v59, v64

    sub-float v65, v37, v35

    const v66, 0x3f28f5c3    # 0.66f

    mul-float v65, v65, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 96
    .local v21, "h_cover":F
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x1

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v59

    move/from16 v2, v21

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 98
    sub-float v64, v39, v36

    const/high16 v65, 0x40000000    # 2.0f

    div-float v59, v64, v65

    .line 99
    sub-float v64, v37, v21

    sub-float v65, v64, v35

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v66, v59, v64

    const/16 v64, 0x2

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v59, v64

    move/from16 v0, v66

    move/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v64

    move/from16 v0, v65

    move/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 100
    .restart local v17    # "h":F
    const/16 v64, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v59

    move/from16 v2, v17

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 101
    const/16 v64, 0x2

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v59

    move/from16 v2, v17

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 103
    .end local v17    # "h":F
    .end local v21    # "h_cover":F
    .end local v59    # "w":F
    :cond_13
    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v17, v0

    .line 104
    .local v17, "h":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-double v0, v0

    move-wide/from16 v64, v0

    sub-float v66, v39, v36

    move/from16 v0, v66

    float-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide/high16 v68, 0x3fe8000000000000L    # 0.75

    mul-double v66, v66, v68

    invoke-static/range {v64 .. v67}, Ljava/lang/Math;->min(DD)D

    move-result-wide v64

    move-wide/from16 v0, v64

    double-to-int v0, v0

    move/from16 v63, v0

    .line 105
    .local v63, "w_cover":I
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v66, v0

    const/16 v67, 0x0

    const/16 v68, 0x0

    invoke-interface/range {v64 .. v68}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 107
    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    sub-float v65, v37, v35

    mul-float v65, v65, v64

    const/16 v64, 0x2

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v66

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    add-float v64, v64, v66

    div-float v19, v65, v64

    .line 108
    .local v19, "h1":F
    sub-float v64, v37, v19

    sub-float v18, v64, v35

    .line 109
    .local v18, "h0":F
    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v64, v39, v64

    sub-float v65, v64, v36

    const/16 v64, 0x2

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    mul-float v66, v19, v64

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    mul-float v64, v64, v18

    move/from16 v0, v66

    move/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v64

    move/from16 v0, v65

    move/from16 v1, v64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v59

    .line 111
    .restart local v59    # "w":F
    const/16 v64, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    const/16 v66, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v59

    move/from16 v2, v18

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 112
    const/16 v64, 0x2

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    const/16 v65, 0x0

    const/16 v66, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v59

    move/from16 v2, v19

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 116
    .end local v17    # "h":I
    .end local v18    # "h0":F
    .end local v19    # "h1":F
    .end local v59    # "w":F
    .end local v63    # "w_cover":I
    :cond_14
    const/16 v64, 0x4

    move/from16 v0, v64

    if-ne v11, v0, :cond_16

    .line 117
    const-string v64, "wwww"

    move-object/from16 v0, v45

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_15

    .line 118
    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v59, v0

    .line 119
    .local v59, "w":I
    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v65, v64

    move/from16 v0, v64

    float-to-double v0, v0

    move-wide/from16 v64, v0

    sub-float v66, v37, v35

    move/from16 v0, v66

    float-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fe51eb851eb851fL    # 0.66

    mul-double v66, v66, v68

    invoke-static/range {v64 .. v67}, Ljava/lang/Math;->min(DD)D

    move-result-wide v64

    move-wide/from16 v0, v64

    double-to-int v0, v0

    move/from16 v21, v0

    .line 120
    .local v21, "h_cover":I
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v66, v0

    const/16 v67, 0x1

    const/16 v68, 0x0

    invoke-interface/range {v64 .. v68}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 122
    const/high16 v64, 0x40000000    # 2.0f

    mul-float v64, v64, v36

    sub-float v65, v39, v64

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v66

    const/16 v64, 0x2

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    add-float v66, v66, v64

    const/16 v64, 0x3

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    add-float v64, v64, v66

    div-float v64, v65, v64

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v17, v0

    .line 123
    .restart local v17    # "h":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v60, v0

    .line 124
    .local v60, "w0":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v64, 0x2

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v61, v0

    .line 125
    .local v61, "w1":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v64, 0x3

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v62, v0

    .line 126
    .local v62, "w2":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v64, v37, v64

    sub-float v64, v64, v35

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->min(FF)F

    move-result v64

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v17, v0

    .line 128
    const/16 v64, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v60

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v66, v0

    const/16 v67, 0x0

    const/16 v68, 0x0

    invoke-interface/range {v64 .. v68}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 129
    const/16 v64, 0x2

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v66, v0

    const/16 v67, 0x0

    const/16 v68, 0x0

    invoke-interface/range {v64 .. v68}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 130
    const/16 v64, 0x3

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v66, v0

    const/16 v67, 0x0

    const/16 v68, 0x0

    invoke-interface/range {v64 .. v68}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 132
    .end local v17    # "h":I
    .end local v21    # "h_cover":I
    .end local v59    # "w":I
    .end local v60    # "w0":I
    .end local v61    # "w1":I
    .end local v62    # "w2":I
    :cond_15
    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v17, v0

    .line 133
    .restart local v17    # "h":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v64, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-double v0, v0

    move-wide/from16 v64, v0

    sub-float v66, v39, v36

    move/from16 v0, v66

    float-to-double v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0x3fe51eb851eb851fL    # 0.66

    mul-double v66, v66, v68

    invoke-static/range {v64 .. v67}, Ljava/lang/Math;->min(DD)D

    move-result-wide v64

    move-wide/from16 v0, v64

    double-to-int v0, v0

    move/from16 v63, v0

    .line 134
    .restart local v63    # "w_cover":I
    const/16 v64, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v66, v0

    const/16 v67, 0x0

    const/16 v68, 0x0

    invoke-interface/range {v64 .. v68}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 136
    const/high16 v64, 0x40000000    # 2.0f

    mul-float v64, v64, v35

    sub-float v65, v37, v64

    const/high16 v66, 0x3f800000    # 1.0f

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v66, v66, v64

    const/high16 v67, 0x3f800000    # 1.0f

    const/16 v64, 0x2

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v67, v64

    add-float v66, v66, v64

    const/high16 v67, 0x3f800000    # 1.0f

    const/16 v64, 0x3

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v67, v64

    add-float v64, v64, v66

    div-float v64, v65, v64

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v59, v0

    .line 137
    .restart local v59    # "w":I
    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v65, v64

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v18, v0

    .line 138
    .local v18, "h0":I
    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v64, 0x2

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v65, v64

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v19, v0

    .line 139
    .local v19, "h1":I
    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v65, v0

    const/16 v64, 0x3

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v64

    div-float v64, v65, v64

    add-float v64, v64, v35

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v20, v0

    .line 140
    .local v20, "h2":I
    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v64, v39, v64

    sub-float v64, v64, v36

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v65, v0

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->min(FF)F

    move-result v64

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v59, v0

    .line 142
    const/16 v64, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v66, v0

    const/16 v67, 0x0

    const/16 v68, 0x1

    invoke-interface/range {v64 .. v68}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 143
    const/16 v64, 0x2

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v66, v0

    const/16 v67, 0x0

    const/16 v68, 0x1

    invoke-interface/range {v64 .. v68}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 144
    const/16 v64, 0x3

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Lcom/vkontakte/android/ThumbAttachment;

    move/from16 v0, v59

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v66, v0

    const/16 v67, 0x0

    const/16 v68, 0x1

    invoke-interface/range {v64 .. v68}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    goto/16 :goto_1

    .line 149
    .end local v17    # "h":I
    .end local v18    # "h0":I
    .end local v19    # "h1":I
    .end local v20    # "h2":I
    .end local v59    # "w":I
    .end local v63    # "w_cover":I
    :cond_16
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v49, "ratios_cropped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    float-to-double v0, v7

    move-wide/from16 v64, v0

    const-wide v66, 0x3ff199999999999aL    # 1.1

    cmpl-double v64, v64, v66

    if-lez v64, :cond_17

    .line 151
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v47

    .line 152
    .restart local v47    # "ratio":F
    const/high16 v64, 0x3f800000    # 1.0f

    move/from16 v0, v64

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 155
    .end local v47    # "ratio":F
    :cond_17
    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_18

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v47

    .line 156
    .restart local v47    # "ratio":F
    const/high16 v64, 0x3f800000    # 1.0f

    move/from16 v0, v64

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 160
    .end local v47    # "ratio":F
    :cond_18
    new-instance v58, Ljava/util/HashMap;

    invoke-direct/range {v58 .. v58}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v58, "tries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[F>;"
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v11

    .local v16, "first_line":I
    move-object/from16 v0, v64

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ""

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x1

    move/from16 v0, v65

    new-array v0, v0, [F

    move-object/from16 v65, v0

    const/16 v66, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v39

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v67

    aput v67, v65, v66

    move-object/from16 v0, v58

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v16, 0x1

    :goto_a
    add-int/lit8 v64, v11, -0x1

    move/from16 v0, v16

    move/from16 v1, v64

    if-gt v0, v1, :cond_19

    .line 168
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ","

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    sub-int v51, v11, v16

    .local v51, "second_line":I
    move-object/from16 v0, v64

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [F

    move-object/from16 v65, v0

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v67

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v39

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v67

    aput v67, v65, v66

    const/16 v66, 0x1

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v67

    move-object/from16 v0, v49

    move/from16 v1, v16

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v39

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v67

    aput v67, v65, v66

    move-object/from16 v0, v58

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 176
    .end local v51    # "second_line":I
    :cond_19
    const/16 v16, 0x1

    :goto_b
    add-int/lit8 v64, v11, -0x2

    move/from16 v0, v16

    move/from16 v1, v64

    if-gt v0, v1, :cond_1b

    .line 177
    const/16 v51, 0x1

    .restart local v51    # "second_line":I
    :goto_c
    sub-int v64, v11, v16

    add-int/lit8 v64, v64, -0x1

    move/from16 v0, v51

    move/from16 v1, v64

    if-gt v0, v1, :cond_1a

    .line 178
    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ","

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ","

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    sub-int v65, v11, v16

    sub-int v53, v65, v51

    .local v53, "third_line":I
    move-object/from16 v0, v64

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    const/16 v65, 0x3

    move/from16 v0, v65

    new-array v0, v0, [F

    move-object/from16 v65, v0

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v67

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v39

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v67

    aput v67, v65, v66

    const/16 v66, 0x1

    add-int v67, v16, v51

    move-object/from16 v0, v49

    move/from16 v1, v16

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v39

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v67

    aput v67, v65, v66

    const/16 v66, 0x2

    add-int v67, v16, v51

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v68

    move-object/from16 v0, v49

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v39

    move/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->calculateMultiThumbsHeight(Ljava/util/List;FF)F

    move-result v67

    aput v67, v65, v66

    move-object/from16 v0, v58

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_c

    .line 176
    .end local v53    # "third_line":I
    :cond_1a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b

    .line 188
    .end local v51    # "second_line":I
    :cond_1b
    const/16 v40, 0x0

    .line 189
    .local v40, "opt_conf":Ljava/lang/String;
    const/16 v41, 0x0

    .line 190
    .local v41, "opt_diff":F
    const/16 v42, 0x0

    .line 192
    .local v42, "opt_height":F
    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v28

    .line 193
    .local v28, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_21

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 194
    .local v12, "conf":Ljava/lang/String;
    move-object/from16 v0, v58

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [F

    .line 195
    .local v22, "heights":[F
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x1

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    mul-float v14, v35, v64

    .line 196
    .local v14, "conf_h":F
    move-object/from16 v5, v22

    .local v5, "arr$":[F
    array-length v0, v5

    move/from16 v31, v0

    .local v31, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_e
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_1d

    aget v17, v5, v25

    .local v17, "h":F
    add-float v14, v14, v17

    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    .line 197
    .end local v17    # "h":F
    :cond_1d
    sub-float v64, v14, v37

    invoke-static/range {v64 .. v64}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 198
    .local v13, "conf_diff":F
    const/16 v64, 0x2c

    move/from16 v0, v64

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v64

    const/16 v65, -0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_1f

    .line 199
    const-string v64, ","

    move-object/from16 v0, v64

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 200
    .local v15, "conf_nums":[Ljava/lang/String;
    const/16 v64, 0x0

    aget-object v64, v15, v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    const/16 v65, 0x1

    aget-object v65, v15, v65

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    move/from16 v0, v64

    move/from16 v1, v65

    if-gt v0, v1, :cond_1e

    array-length v0, v15

    move/from16 v64, v0

    const/16 v65, 0x2

    move/from16 v0, v64

    move/from16 v1, v65

    if-le v0, v1, :cond_1f

    const/16 v64, 0x1

    aget-object v64, v15, v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    const/16 v65, 0x2

    aget-object v65, v15, v65

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    move/from16 v0, v64

    move/from16 v1, v65

    if-le v0, v1, :cond_1f

    .line 202
    :cond_1e
    float-to-double v0, v13

    move-wide/from16 v64, v0

    const-wide v66, 0x3ff199999999999aL    # 1.1

    mul-double v64, v64, v66

    move-wide/from16 v0, v64

    double-to-float v13, v0

    .line 205
    .end local v15    # "conf_nums":[Ljava/lang/String;
    :cond_1f
    if-eqz v40, :cond_20

    cmpg-float v64, v13, v41

    if-gez v64, :cond_1c

    .line 206
    :cond_20
    move-object/from16 v40, v12

    .line 207
    move/from16 v41, v13

    .line 208
    goto/16 :goto_d

    .line 212
    .end local v5    # "arr$":[F
    .end local v12    # "conf":Ljava/lang/String;
    .end local v13    # "conf_diff":F
    .end local v14    # "conf_h":F
    .end local v22    # "heights":[F
    .end local v25    # "i$":I
    .end local v31    # "len$":I
    :cond_21
    const/4 v9, 0x0

    .line 214
    .local v9, "breakNext":Z
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/util/ArrayList;

    .line 215
    .local v57, "thumbs_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/ArrayList;

    .line 216
    .local v50, "ratios_remain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const-string v64, ","

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "chunks":[Ljava/lang/String;
    move-object/from16 v0, v58

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [F

    .line 218
    .local v43, "opt_heights":[F
    array-length v0, v10

    move/from16 v64, v0

    add-int/lit8 v30, v64, -0x1

    .line 219
    .local v30, "last_row":I
    const/16 v27, 0x0

    .line 220
    .local v27, "k":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_f
    array-length v0, v10

    move/from16 v64, v0

    move/from16 v0, v23

    move/from16 v1, v64

    if-ge v0, v1, :cond_2

    .line 221
    aget-object v64, v10, v23

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 222
    .local v32, "line_chunks_num":I
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v34, "line_thumbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ThumbAttachment;>;"
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_10
    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_22

    const/16 v64, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v64

    move-object/from16 v0, v34

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 224
    :cond_22
    aget v33, v43, v27

    .line 225
    .local v33, "line_height":F
    add-int/lit8 v27, v27, 0x1

    .line 226
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v64

    add-int/lit8 v29, v64, -0x1

    .line 227
    .local v29, "last_column":I
    const/16 v26, 0x0

    :goto_11
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v64

    move/from16 v0, v26

    move/from16 v1, v64

    if-ge v0, v1, :cond_24

    .line 228
    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/vkontakte/android/ThumbAttachment;

    .line 229
    .restart local v54    # "thumb":Lcom/vkontakte/android/ThumbAttachment;
    const/16 v64, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Ljava/lang/Float;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Float;->floatValue()F

    move-result v55

    .line 230
    .local v55, "thumb_ratio":F
    mul-float v64, v55, v33

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v65, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v66, v0

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    const/16 v64, 0x1

    :goto_12
    const/16 v67, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v65

    move/from16 v2, v66

    move/from16 v3, v64

    move/from16 v4, v67

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ThumbAttachment;->setViewSize(FFZZ)V

    .line 227
    add-int/lit8 v26, v26, 0x1

    goto :goto_11

    .line 230
    :cond_23
    const/16 v64, 0x0

    goto :goto_12

    .line 220
    .end local v54    # "thumb":Lcom/vkontakte/android/ThumbAttachment;
    .end local v55    # "thumb_ratio":F
    :cond_24
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_f
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
    .line 249
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v2, 0x0

    .line 250
    .local v2, "sum":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "f":F
    add-float/2addr v2, v0

    goto :goto_0

    .line 251
    .end local v0    # "f":F
    :cond_0
    return v2
.end method
