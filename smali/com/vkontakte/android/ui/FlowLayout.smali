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

.field private lparams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private measuredHeight:I

.field public pwidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
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
    .line 51
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    .line 24
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->measuredHeight:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    .line 24
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->measuredHeight:I

    .line 56
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 252
    instance-of v0, p1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 255
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

    .line 247
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getFullHeight()I
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "h":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    return v0

    .line 159
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 160
    .local v1, "i":I
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public layoutWithParams(Ljava/util/List;II)Ljava/util/List;
    .locals 24
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/FlowLayout;->lparams:Ljava/util/List;

    .line 61
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v17, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .line 63
    .local v8, "count":I
    move/from16 v18, p2

    .line 64
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    .line 65
    .local v19, "xpos":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingTop()I

    move-result v20

    .line 66
    .local v20, "ypos":I
    const/4 v12, 0x0

    .line 69
    .local v12, "line":I
    const/4 v5, 0x0

    .line 70
    .local v5, "breakNext":Z
    const/16 v16, 0x0

    .line 71
    .local v16, "prevFloat":Z
    const/4 v9, 0x0

    .line 73
    .local v9, "floatY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->clear()V

    .line 75
    const/4 v10, 0x0

    .line 76
    .local v10, "floatingH":I
    const/4 v13, 0x0

    .line 77
    .local v13, "line_height":I
    const/4 v15, 0x0

    .line 79
    .local v15, "maxw":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v8, :cond_1

    .line 107
    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingTop()I

    move-result v20

    .line 111
    const/4 v9, 0x0

    .line 112
    const/16 v16, 0x0

    .line 113
    const/4 v5, 0x0

    .line 114
    const/4 v12, 0x0

    .line 116
    const/4 v11, 0x0

    :goto_1
    if-lt v11, v8, :cond_7

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getFullHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ui/FlowLayout;->measuredHeight:I

    .line 154
    return-object v17

    .line 80
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 81
    .local v14, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v21, v0

    if-gtz v21, :cond_2

    move/from16 v7, p2

    .line 82
    .local v7, "childw":I
    :goto_2
    iget v6, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 83
    .local v6, "childh":I
    if-gez v6, :cond_3

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Height should be constant"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 81
    .end local v6    # "childh":I
    .end local v7    # "childw":I
    :cond_2
    iget v7, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    goto :goto_2

    .line 85
    .restart local v6    # "childh":I
    .restart local v7    # "childw":I
    :cond_3
    if-nez v5, :cond_4

    add-int v21, v19, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    move/from16 v22, v0

    add-int v22, v22, v18

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 86
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    .line 87
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v21

    add-int v20, v20, v21

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 89
    const/4 v13, 0x0

    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v5, 0x0

    .line 93
    :cond_5
    iget v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v6

    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 96
    iget-boolean v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 97
    iget v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v6

    add-int v20, v20, v21

    .line 98
    iget v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v6

    add-int v10, v10, v21

    .line 99
    add-int v21, v19, v7

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 104
    :goto_3
    iget-boolean v5, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 105
    iget v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v21, v0

    sub-int v21, v19, v21

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 79
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 101
    :cond_6
    const/4 v10, 0x0

    .line 102
    iget v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v7

    add-int v19, v19, v21

    goto :goto_3

    .line 119
    .end local v6    # "childh":I
    .end local v7    # "childw":I
    .end local v14    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 120
    .restart local v14    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v21, v0

    if-gtz v21, :cond_8

    move/from16 v7, v18

    .line 121
    .restart local v7    # "childw":I
    :goto_4
    iget v6, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 122
    .restart local v6    # "childh":I
    if-gez v6, :cond_9

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Height should be constant"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 120
    .end local v6    # "childh":I
    .end local v7    # "childw":I
    :cond_8
    iget v7, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    goto :goto_4

    .line 124
    .restart local v6    # "childh":I
    .restart local v7    # "childw":I
    :cond_9
    iget-boolean v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    if-eqz v16, :cond_a

    .line 125
    move/from16 v20, v9

    .line 127
    :cond_a
    if-nez v5, :cond_b

    add-int v21, v19, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    move/from16 v22, v0

    add-int v22, v22, v18

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    .line 128
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int v20, v20, v21

    .line 130
    add-int/lit8 v12, v12, 0x1

    .line 131
    const/4 v5, 0x0

    .line 134
    :cond_c
    iget-boolean v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->center:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    div-int/lit8 v22, v7, 0x2

    sub-int v19, v21, v22

    .line 136
    :cond_d
    const-string v21, "vk"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v21, Landroid/graphics/Rect;

    add-int v22, v19, v7

    add-int v23, v20, v6

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-boolean v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 140
    if-nez v16, :cond_e

    .line 141
    move/from16 v9, v20

    .line 142
    const/16 v16, 0x1

    .line 144
    :cond_e
    iget v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v6

    add-int v20, v20, v21

    .line 149
    :goto_5
    iget-boolean v5, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 116
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 146
    :cond_f
    const/16 v16, 0x0

    .line 147
    iget v0, v14, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v21, v0

    add-int v21, v21, v7

    add-int v19, v19, v21

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v4

    .line 261
    .local v4, "count":I
    sub-int v10, p4, p2

    .line 262
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v11

    .line 263
    .local v11, "xpos":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingTop()I

    move-result v12

    .line 264
    .local v12, "ypos":I
    const/4 v7, 0x0

    .line 267
    .local v7, "line":I
    const/4 v0, 0x0

    .line 268
    .local v0, "breakNext":Z
    const/4 v9, 0x0

    .line 269
    .local v9, "prevFloat":Z
    const/4 v5, 0x0

    .line 271
    .local v5, "floatY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v4, :cond_0

    .line 306
    return-void

    .line 272
    :cond_0
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 273
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_6

    .line 274
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    .line 275
    .local v8, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    if-gtz v13, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 276
    .local v3, "childw":I
    :goto_1
    iget v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    if-gtz v13, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 278
    .local v2, "childh":I
    :goto_2
    iget-boolean v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    if-nez v13, :cond_1

    if-eqz v9, :cond_1

    .line 279
    move v12, v5

    .line 281
    :cond_1
    if-nez v0, :cond_2

    add-int v13, v11, v3

    iget v14, p0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    add-int/2addr v14, v10

    if-le v13, v14, :cond_3

    .line 282
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v11

    .line 283
    iget-object v13, p0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v12, v13

    .line 284
    add-int/lit8 v7, v7, 0x1

    .line 285
    const/4 v0, 0x0

    .line 288
    :cond_3
    iget-boolean v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->center:Z

    if-eqz v13, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/FlowLayout;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    div-int/lit8 v14, v3, 0x2

    sub-int v11, v13, v14

    .line 291
    :cond_4
    add-int v13, v11, v3

    add-int v14, v12, v2

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 292
    iget-boolean v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    if-eqz v13, :cond_9

    .line 293
    if-nez v9, :cond_5

    .line 294
    move v5, v12

    .line 295
    const/4 v9, 0x1

    .line 297
    :cond_5
    iget v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    add-int/2addr v13, v2

    add-int/2addr v12, v13

    .line 302
    :goto_3
    iget-boolean v0, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 271
    .end local v2    # "childh":I
    .end local v3    # "childw":I
    .end local v8    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 275
    .restart local v8    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_7
    iget v3, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    goto :goto_1

    .line 276
    .restart local v3    # "childw":I
    :cond_8
    iget v2, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    goto :goto_2

    .line 299
    .restart local v2    # "childh":I
    :cond_9
    const/4 v9, 0x0

    .line 300
    iget v13, v8, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    add-int/2addr v13, v3

    add-int/2addr v11, v13

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 170
    sget-boolean v18, Lcom/vkontakte/android/ui/FlowLayout;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 172
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingRight()I

    move-result v19

    sub-int v15, v18, v19

    .line 173
    .local v15, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingTop()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingBottom()I

    move-result v19

    sub-int v10, v18, v19

    .line 174
    .local v10, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v7

    .line 175
    .local v7, "count":I
    const/4 v12, 0x0

    .line 177
    .local v12, "line_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v16

    .line 178
    .local v16, "xpos":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingTop()I

    move-result v17

    .line 179
    .local v17, "ypos":I
    const/4 v14, 0x0

    .line 182
    .local v14, "maxw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    const/high16 v19, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 183
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 188
    .local v4, "childHeightMeasureSpec":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "breakNext":Z
    const/4 v8, 0x0

    .line 193
    .local v8, "floatingH":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lparams:Ljava/util/List;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lparams:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    :goto_2
    move/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    if-lt v11, v0, :cond_3

    .line 228
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    if-nez v18, :cond_13

    .line 229
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_12

    .line 239
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 240
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/vkontakte/android/ui/FlowLayout;->setMeasuredDimension(II)V

    .line 243
    :goto_4
    return-void

    .line 185
    .end local v2    # "breakNext":Z
    .end local v4    # "childHeightMeasureSpec":I
    .end local v8    # "floatingH":I
    .end local v11    # "i":I
    :cond_2
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "childHeightMeasureSpec":I
    goto :goto_0

    .line 194
    .restart local v2    # "breakNext":Z
    .restart local v8    # "floatingH":I
    .restart local v11    # "i":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 195
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    :cond_4
    if-nez v3, :cond_9

    .line 196
    :cond_5
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    move-object/from16 v13, v18

    .line 197
    .local v13, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :goto_5
    if-eqz v3, :cond_6

    .line 198
    iget v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v18, v0

    if-gtz v18, :cond_b

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    .line 199
    :cond_6
    iget v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v18, v0

    if-gtz v18, :cond_d

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 200
    .local v6, "childw":I
    :goto_7
    iget v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    move/from16 v18, v0

    if-gtz v18, :cond_f

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 202
    .local v5, "childh":I
    :goto_8
    if-nez v2, :cond_7

    add-int v18, v16, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->pwidth:I

    move/from16 v19, v0

    add-int v19, v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 203
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/FlowLayout;->getPaddingLeft()I

    move-result v16

    .line 204
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int v17, v17, v18

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 206
    const/4 v12, 0x0

    .line 207
    const/4 v8, 0x0

    .line 208
    const/4 v2, 0x0

    .line 210
    :cond_8
    iget v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 213
    iget-boolean v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 214
    iget v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v18, v0

    add-int v18, v18, v5

    add-int v17, v17, v18

    .line 215
    iget v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->vertical_spacing:I

    move/from16 v18, v0

    add-int v18, v18, v5

    add-int v8, v8, v18

    .line 216
    add-int v18, v16, v6

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 221
    :goto_9
    iget-boolean v2, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 222
    iget v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 193
    .end local v5    # "childh":I
    .end local v6    # "childw":I
    .end local v13    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 196
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lparams:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    move-object/from16 v13, v18

    goto/16 :goto_5

    .line 198
    .restart local v13    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_b
    iget v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    goto/16 :goto_6

    :cond_c
    move v6, v15

    .line 199
    goto/16 :goto_7

    :cond_d
    iget v6, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    goto/16 :goto_7

    .line 200
    .restart local v6    # "childw":I
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_f
    iget v5, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    goto/16 :goto_8

    .line 218
    .restart local v5    # "childh":I
    :cond_10
    const/4 v8, 0x0

    .line 219
    iget v0, v13, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->horizontal_spacing:I

    move/from16 v18, v0

    add-int v18, v18, v6

    add-int v16, v16, v18

    goto :goto_9

    .line 193
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childh":I
    .end local v6    # "childw":I
    .end local v13    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 230
    :cond_12
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .local v9, "h":I
    add-int/2addr v10, v9

    goto/16 :goto_3

    .line 232
    .end local v9    # "h":I
    :cond_13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    const/high16 v19, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 233
    add-int v18, v17, v12

    move/from16 v0, v18

    if-ge v0, v10, :cond_1

    .line 234
    move v10, v12

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/FlowLayout;->lineHeights:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .restart local v9    # "h":I
    add-int/2addr v10, v9

    goto :goto_a

    .line 242
    .end local v9    # "h":I
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/vkontakte/android/ui/FlowLayout;->setMeasuredDimension(II)V

    goto/16 :goto_4
.end method

.method public resetParams()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/FlowLayout;->lparams:Ljava/util/List;

    .line 166
    return-void
.end method
