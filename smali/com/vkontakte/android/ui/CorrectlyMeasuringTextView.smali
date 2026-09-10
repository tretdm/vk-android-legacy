.class public Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;
.super Lcom/vkontakte/android/ui/LinkedTextView;
.source "CorrectlyMeasuringTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/LinkedTextView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/LinkedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/ui/LinkedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 25
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 32
    invoke-super/range {p0 .. p2}, Lcom/vkontakte/android/ui/LinkedTextView;->onMeasure(II)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 34
    .local v10, "l":Landroid/text/Layout;
    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v13, 0x0

    .line 36
    .local v13, "maxw":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    .line 37
    .local v20, "txt":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_6

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "emojiCount":I
    invoke-virtual {v10, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v22

    invoke-virtual {v10, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 40
    .local v12, "line":Ljava/lang/CharSequence;
    instance-of v0, v12, Landroid/text/Spanned;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object v15, v12

    .line 41
    check-cast v15, Landroid/text/Spanned;

    .line 42
    .local v15, "sp":Landroid/text/Spanned;
    const/16 v22, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const-class v24, Lcom/vkontakte/android/ui/XImageSpan;

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v15, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    .line 43
    .local v17, "sps":[Ljava/lang/Object;
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_5

    .line 44
    move-object/from16 v0, v17

    array-length v4, v0

    .line 45
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "spans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v5, "ends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v3, v17

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v11, :cond_1

    aget-object v14, v3, v7

    .line 47
    .local v14, "s":Ljava/lang/Object;
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 50
    .end local v14    # "s":Ljava/lang/Object;
    :cond_1
    const/4 v8, 0x0

    .line 51
    .local v8, "in":Z
    const-string v19, ""

    .local v19, "str":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 52
    .local v18, "sstr":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_4

    .line 53
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    if-eqz v8, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 54
    :cond_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 55
    const/4 v8, 0x0

    .line 52
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 57
    :cond_3
    const/4 v8, 0x1

    goto :goto_4

    .line 60
    :cond_4
    move-object/from16 v12, v19

    .line 63
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v5    # "ends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "i$":I
    .end local v8    # "in":Z
    .end local v9    # "j":I
    .end local v11    # "len$":I
    .end local v15    # "sp":Landroid/text/Spanned;
    .end local v16    # "spans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "sps":[Ljava/lang/Object;
    .end local v18    # "sstr":Ljava/lang/String;
    .end local v19    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {v10}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v22

    const/high16 v23, 0x41a00000    # 20.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    mul-int v23, v23, v4

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 65
    .local v21, "w":I
    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 37
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 67
    .end local v4    # "emojiCount":I
    .end local v12    # "line":Ljava/lang/CharSequence;
    .end local v21    # "w":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getPaddingLeft()I

    move-result v22

    add-int v22, v22, v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getPaddingRight()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method
