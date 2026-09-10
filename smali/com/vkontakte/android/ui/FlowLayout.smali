.class public Lcom/vkontakte/android/ui/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private lineHeights:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public pwidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vkontakte/android/ui/FlowLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    .line 46
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 125
    instance-of v0, p1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 120
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v4

    .line 134
    .local v4, "count":I
    sub-int v10, p4, p2

    .line 135
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v11

    .line 136
    .local v11, "xpos":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingTop()I

    move-result v12

    .line 137
    .local v12, "ypos":I
    const/4 v7, 0x0

    .line 140
    .local v7, "line":I
    const/4 v0, 0x0

    .line 141
    .local v0, "breakNext":Z
    const/4 v9, 0x0

    .line 142
    .local v9, "prevFloat":Z
    const/4 v5, 0x0

    .line 144
    .local v5, "floatY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v4, :cond_0

    .line 177
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 146
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_5

    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 148
    .local v3, "childw":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 149
    .local v2, "childh":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 151
    .local v8, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    if-nez v13, :cond_1

    if-eqz v9, :cond_1

    .line 152
    move v12, v5

    .line 154
    :cond_1
    if-nez v0, :cond_2

    add-int v13, v11, v3

    iget v14, p0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    add-int/2addr v14, v10

    if-le v13, v14, :cond_3

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v11

    .line 156
    iget-object v13, p0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v12, v13

    .line 157
    add-int/lit8 v7, v7, 0x1

    .line 158
    const/4 v0, 0x0

    .line 162
    :cond_3
    add-int v13, v11, v3

    add-int v14, v12, v2

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 163
    iget-boolean v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    if-eqz v13, :cond_6

    .line 164
    if-nez v9, :cond_4

    .line 165
    move v5, v12

    .line 166
    const/4 v9, 0x1

    .line 168
    :cond_4
    iget v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    add-int/2addr v13, v2

    add-int/2addr v12, v13

    .line 173
    :goto_1
    iget-boolean v0, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 144
    .end local v2    # "childh":I
    .end local v3    # "childw":I
    .end local v8    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 170
    .restart local v2    # "childh":I
    .restart local v3    # "childw":I
    .restart local v8    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_6
    const/4 v9, 0x0

    .line 171
    iget v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    add-int/2addr v13, v3

    add-int/2addr v11, v13

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 50
    sget-boolean v17, Lcom/vkontakte/android/ui/FlowLayout;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 52
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingRight()I

    move-result v18

    sub-int v14, v17, v18

    .line 53
    .local v14, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingBottom()I

    move-result v18

    sub-int v9, v17, v18

    .line 54
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v7

    .line 55
    .local v7, "count":I
    const/4 v11, 0x0

    .line 57
    .local v11, "line_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v15

    .line 58
    .local v15, "xpos":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingTop()I

    move-result v16

    .line 59
    .local v16, "ypos":I
    const/4 v13, 0x0

    .line 62
    .local v13, "maxw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 63
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 68
    .local v4, "childHeightMeasureSpec":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->clear()V

    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, "breakNext":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-lt v10, v7, :cond_3

    .line 101
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    if-nez v17, :cond_9

    .line 102
    move v9, v11

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_8

    .line 112
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/vkontakte/android/ui/FlowLayout;->setMeasuredDimension(II)V

    .line 116
    :goto_3
    return-void

    .line 65
    .end local v2    # "breakNext":Z
    .end local v4    # "childHeightMeasureSpec":I
    .end local v10    # "i":I
    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childHeightMeasureSpec":I
    goto :goto_0

    .line 73
    .restart local v2    # "breakNext":Z
    .restart local v10    # "i":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 74
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 75
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 76
    .local v12, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    .line 77
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 78
    .local v6, "childw":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 80
    .local v5, "childh":I
    if-nez v2, :cond_4

    add-int v17, v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 81
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v15

    .line 82
    add-int v16, v16, v11

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v2, 0x0

    .line 88
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    iget v0, v12, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 90
    iget-boolean v0, v12, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 91
    iget v0, v12, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v17, v0

    add-int v17, v17, v5

    add-int v16, v16, v17

    .line 95
    :goto_4
    iget-boolean v2, v12, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 96
    iget v0, v12, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v17, v0

    sub-int v17, v15, v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 72
    .end local v5    # "childh":I
    .end local v6    # "childw":I
    .end local v12    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 93
    .restart local v5    # "childh":I
    .restart local v6    # "childw":I
    .restart local v12    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_7
    iget v0, v12, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v17, v0

    add-int v17, v17, v6

    add-int v15, v15, v17

    goto :goto_4

    .line 103
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childh":I
    .end local v6    # "childw":I
    .end local v12    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "h":I
    add-int/2addr v9, v8

    goto/16 :goto_2

    .line 105
    .end local v8    # "h":I
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    const/high16 v18, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 106
    add-int v17, v16, v11

    move/from16 v0, v17

    if-ge v0, v9, :cond_1

    .line 107
    move v9, v11

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .restart local v8    # "h":I
    add-int/2addr v9, v8

    goto :goto_5

    .line 115
    .end local v8    # "h":I
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9}, Lcom/vkontakte/android/ui/FlowLayout;->setMeasuredDimension(II)V

    goto/16 :goto_3
.end method
