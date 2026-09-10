.class public Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;
.super Landroid/widget/TextView;
.source "CorrectlyMeasuringTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 22
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 33
    invoke-super/range {p0 .. p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    .line 35
    .local v8, "l":Landroid/text/Layout;
    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v10, 0x0

    .line 37
    .local v10, "maxw":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    .line 38
    .local v17, "txt":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v8}, Landroid/text/Layout;->getLineCount()I

    move-result v19

    move/from16 v0, v19

    if-lt v5, v0, :cond_1

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getPaddingLeft()I

    move-result v19

    add-int v19, v19, v10

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getPaddingRight()I

    move-result v20

    add-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->getMeasuredHeight()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/CorrectlyMeasuringTextView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    .local v3, "emojiCount":I
    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v19

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 41
    .local v9, "line":Ljava/lang/CharSequence;
    instance-of v0, v9, Landroid/text/Spanned;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object v12, v9

    .line 42
    check-cast v12, Landroid/text/Spanned;

    .line 43
    .local v12, "sp":Landroid/text/Spanned;
    const/16 v19, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v20

    const-class v21, Lcom/vkontakte/android/ui/XImageSpan;

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v12, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    .line 44
    .local v14, "sps":[Ljava/lang/Object;
    if-eqz v14, :cond_2

    array-length v0, v14

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 45
    array-length v3, v14

    .line 46
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, "spans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v4, "ends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v0, v14

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 51
    const/4 v6, 0x0

    .line 52
    .local v6, "in":Z
    const-string v16, ""

    .local v16, "str":Ljava/lang/String;
    invoke-interface {v12}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v15

    .line 53
    .local v15, "sstr":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_4

    .line 61
    move-object/from16 v9, v16

    .line 64
    .end local v4    # "ends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "in":Z
    .end local v7    # "j":I
    .end local v12    # "sp":Landroid/text/Spanned;
    .end local v13    # "spans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "sps":[Ljava/lang/Object;
    .end local v15    # "sstr":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v19

    const/high16 v20, 0x41a00000    # 20.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    mul-int v20, v20, v3

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 66
    .local v18, "w":I
    move/from16 v0, v18

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 38
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 47
    .end local v18    # "w":I
    .restart local v4    # "ends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "sp":Landroid/text/Spanned;
    .restart local v13    # "spans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "sps":[Ljava/lang/Object;
    :cond_3
    aget-object v11, v14, v19

    .line 48
    .local v11, "s":Ljava/lang/Object;
    invoke-interface {v12, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v12, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 54
    .end local v11    # "s":Ljava/lang/Object;
    .restart local v6    # "in":Z
    .restart local v7    # "j":I
    .restart local v15    # "sstr":Ljava/lang/String;
    .restart local v16    # "str":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    if-eqz v6, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 55
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 56
    const/4 v6, 0x0

    .line 53
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 58
    :cond_6
    const/4 v6, 0x1

    goto :goto_4
.end method
