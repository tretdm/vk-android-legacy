.class public Lcom/vkontakte/android/ui/ClickableLinksDelegate;
.super Ljava/lang/Object;
.source "ClickableLinksDelegate.java"


# instance fields
.field private hlPaint:Landroid/graphics/Paint;

.field private hlPath:Landroid/graphics/Path;

.field private selectedSpan:Lcom/vkontakte/android/LinkSpan;

.field private view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, 0x33000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    if-nez v22, :cond_9

    .line 38
    const/4 v13, -0x1

    .line 39
    .local v13, "line":I
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .local v16, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 41
    .local v10, "l":Landroid/text/Layout;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_0

    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 44
    move v13, v7

    .line 48
    :cond_0
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_2

    .line 49
    const/16 v22, 0x0

    .line 108
    .end local v7    # "i":I
    .end local v10    # "l":Landroid/text/Layout;
    .end local v13    # "line":I
    .end local v16    # "rect":Landroid/graphics/Rect;
    :goto_1
    return v22

    .line 41
    .restart local v7    # "i":I
    .restart local v10    # "l":Landroid/text/Layout;
    .restart local v13    # "line":I
    .restart local v16    # "rect":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 51
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    .line 52
    .local v21, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v17, v21

    .line 53
    check-cast v17, Landroid/text/Spanned;

    .line 54
    .local v17, "s":Landroid/text/Spanned;
    const/16 v22, 0x0

    invoke-interface/range {v17 .. v17}, Landroid/text/Spanned;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    const-class v24, Lcom/vkontakte/android/LinkSpan;

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/vkontakte/android/LinkSpan;

    .line 55
    .local v19, "spans":[Lcom/vkontakte/android/LinkSpan;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_9

    .line 56
    move-object/from16 v4, v19

    .local v4, "arr$":[Lcom/vkontakte/android/LinkSpan;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v11, :cond_9

    aget-object v18, v4, v8

    .line 57
    .local v18, "span":Lcom/vkontakte/android/LinkSpan;
    invoke-interface/range {v17 .. v18}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 58
    .local v20, "start":I
    invoke-interface/range {v17 .. v18}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 59
    .local v6, "end":I
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 60
    .local v15, "lstart":I
    invoke-virtual {v10, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 61
    .local v12, "lend":I
    if-lt v13, v15, :cond_3

    if-gt v13, v12, :cond_3

    .line 62
    if-ne v13, v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v23

    cmpg-float v22, v22, v23

    if-gez v22, :cond_4

    .line 56
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 65
    :cond_4
    if-ne v13, v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual {v10, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v23

    cmpl-float v22, v22, v23

    if-gtz v22, :cond_3

    .line 68
    :cond_5
    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    .line 69
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkontakte/android/LinkSpan;

    .line 71
    move v9, v15

    .local v9, "j":I
    :goto_3
    if-gt v9, v12, :cond_8

    .line 72
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v10, v9, v5}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 75
    if-ne v9, v15, :cond_6

    .line 76
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 78
    :cond_6
    if-ne v9, v12, :cond_7

    .line 79
    invoke-virtual {v10, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 84
    :goto_4
    const/high16 v22, -0x40000000    # -2.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/high16 v23, -0x40000000    # -2.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    move-object/from16 v22, v0

    new-instance v23, Landroid/graphics/RectF;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 71
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 81
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual {v10, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v23

    invoke-virtual {v10, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v24

    invoke-interface/range {v22 .. v24}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    .line 82
    .local v14, "lineChars":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v22

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 87
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v14    # "lineChars":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->offset(FF)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->invalidate()V

    .line 89
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 95
    .end local v4    # "arr$":[Lcom/vkontakte/android/LinkSpan;
    .end local v6    # "end":I
    .end local v7    # "i":I
    .end local v8    # "i$":I
    .end local v9    # "j":I
    .end local v10    # "l":Landroid/text/Layout;
    .end local v11    # "len$":I
    .end local v12    # "lend":I
    .end local v13    # "line":I
    .end local v15    # "lstart":I
    .end local v16    # "rect":Landroid/graphics/Rect;
    .end local v17    # "s":Landroid/text/Spanned;
    .end local v18    # "span":Lcom/vkontakte/android/LinkSpan;
    .end local v19    # "spans":[Lcom/vkontakte/android/LinkSpan;
    .end local v20    # "start":I
    .end local v21    # "text":Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkontakte/android/LinkSpan;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkontakte/android/LinkSpan;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/vkontakte/android/LinkSpan;->onClick(Landroid/content/Context;)V

    .line 97
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    .line 98
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkontakte/android/LinkSpan;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->invalidate()V

    .line 100
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 102
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 103
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    .line 104
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkontakte/android/LinkSpan;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->invalidate()V

    .line 106
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 108
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_1
.end method
