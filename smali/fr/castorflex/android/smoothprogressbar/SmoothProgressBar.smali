.class public Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SmoothProgressBar.java"


# static fields
.field private static final INTERPOLATOR_ACCELERATE:I = 0x0

.field private static final INTERPOLATOR_ACCELERATEDECELERATE:I = 0x2

.field private static final INTERPOLATOR_DECELERATE:I = 0x3

.field private static final INTERPOLATOR_LINEAR:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const v0, 0x7f010022

    invoke-direct {p0, p1, p2, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->isInEditMode()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 40
    new-instance v26, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v26 .. v26}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->build()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 45
    .local v18, "res":Landroid/content/res/Resources;
    sget-object v26, Lcom/vkontakte/android/R$styleable;->SmoothProgressBar:[I

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 48
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v26, 0x1

    const v27, 0x7f0a000e

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 49
    .local v8, "color":I
    const/16 v26, 0x4

    const v27, 0x7f0c0002

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v20

    .line 50
    .local v20, "sectionsCount":I
    const/16 v26, 0x3

    const v27, 0x7f0b001f

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 51
    .local v21, "separatorLength":I
    const/16 v26, 0x2

    const v27, 0x7f0b0020

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v25

    .line 52
    .local v25, "strokeWidth":F
    const/16 v26, 0x5

    const v27, 0x7f0d02ff

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 53
    .local v22, "speed":F
    const/16 v26, 0x6

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v23

    .line 54
    .local v23, "speedProgressiveStart":F
    const/16 v26, 0x7

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v24

    .line 55
    .local v24, "speedProgressiveStop":F
    const/16 v26, 0x8

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 56
    .local v14, "iInterpolator":I
    const/16 v26, 0x9

    const v27, 0x7f090002

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 57
    .local v19, "reversed":Z
    const/16 v26, 0xa

    const/high16 v27, 0x7f090000

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 58
    .local v16, "mirrorMode":Z
    const/16 v26, 0xb

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 59
    .local v10, "colorsId":I
    const/16 v26, 0xc

    const v27, 0x7f090001

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 60
    .local v17, "progressiveStartActivated":Z
    const/16 v26, 0xd

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 61
    .local v6, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0xe

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 62
    .local v12, "generateBackgroundWithColors":Z
    const/16 v26, 0xf

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 63
    .local v13, "gradients":Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    const/4 v15, 0x0

    .line 67
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_1

    .line 68
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v15

    .line 70
    :cond_1
    if-nez v15, :cond_2

    .line 71
    packed-switch v14, :pswitch_data_0

    .line 83
    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v15}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 87
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    .line 89
    .local v9, "colors":[I
    if-eqz v10, :cond_3

    .line 90
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 93
    :cond_3
    new-instance v26, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->speed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStartSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStopSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->interpolator(Landroid/view/animation/Interpolator;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->sectionsCount(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->separatorLength(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->strokeWidth(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->reversed(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mirrorMode(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->progressiveStart(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->gradients(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v7

    .line 106
    .local v7, "builder":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    if-eqz v6, :cond_4

    .line 107
    invoke-virtual {v7, v6}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 110
    :cond_4
    if-eqz v12, :cond_5

    .line 111
    invoke-virtual {v7}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->generateBackgroundUsingColors()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 114
    :cond_5
    if-eqz v9, :cond_6

    array-length v0, v9

    move/from16 v26, v0

    if-lez v26, :cond_6

    .line 115
    invoke-virtual {v7, v9}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->colors([I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    .line 119
    :goto_2
    invoke-virtual {v7}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->build()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v11

    .line 120
    .local v11, "d":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 73
    .end local v7    # "builder":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .end local v9    # "colors":[I
    .end local v11    # "d":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    :pswitch_0
    new-instance v15, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v15}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 74
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1

    .line 76
    :pswitch_1
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v15}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 77
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1

    .line 79
    :pswitch_2
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 80
    .restart local v15    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_1

    .line 117
    .restart local v7    # "builder":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .restart local v9    # "colors":[I
    :cond_6
    invoke-virtual {v7, v8}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->color(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    goto :goto_2

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    if-nez v1, :cond_1

    .line 214
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The drawable is not a SmoothProgressDrawable"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_1
    check-cast v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .end local v0    # "ret":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method


# virtual methods
.method public applyStyle(I)V
    .locals 13
    .param p1, "styleResId"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0xc

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 124
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/vkontakte/android/R$styleable;->SmoothProgressBar:[I

    invoke-virtual {v5, v6, v7, v8, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableColor(I)V

    .line 129
    :cond_0
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 131
    .local v2, "colorsId":I
    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 133
    .local v1, "colors":[I
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 134
    invoke-virtual {p0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableColors([I)V

    .line 137
    .end local v1    # "colors":[I
    .end local v2    # "colorsId":I
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSectionsCount(I)V

    .line 140
    :cond_2
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSeparatorLength(I)V

    .line 143
    :cond_3
    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    invoke-virtual {v0, v12, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableStrokeWidth(F)V

    .line 146
    :cond_4
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableSpeed(F)V

    .line 149
    :cond_5
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 150
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableProgressiveStartSpeed(F)V

    .line 152
    :cond_6
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 153
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableProgressiveStopSpeed(F)V

    .line 155
    :cond_7
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 156
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableReversed(Z)V

    .line 158
    :cond_8
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 159
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableMirrorMode(Z)V

    .line 161
    :cond_9
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 162
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setProgressiveStartActivated(Z)V

    .line 164
    :cond_a
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 165
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setProgressiveStartActivated(Z)V

    .line 167
    :cond_b
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 168
    const/16 v5, 0xf

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableUseGradients(Z)V

    .line 170
    :cond_c
    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 171
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 172
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->getColors()[I

    move-result-object v5

    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v6

    invoke-virtual {v6}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->getStrokeWidth()F

    move-result v6

    invoke-static {v5, v6}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setSmoothProgressDrawableBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_d
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 177
    const/16 v5, 0x8

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 179
    .local v3, "iInterpolator":I
    packed-switch v3, :pswitch_data_0

    .line 193
    const/4 v4, 0x0

    .line 195
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    if-eqz v4, :cond_e

    .line 196
    invoke-virtual {p0, v4}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 199
    .end local v3    # "iInterpolator":I
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    return-void

    .line 181
    .restart local v3    # "iInterpolator":I
    :pswitch_0
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 182
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 184
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_1
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 185
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 187
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_2
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 188
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 190
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :pswitch_3
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 191
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public progressiveStart()V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->progressiveStart()V

    .line 288
    return-void
.end method

.method public progressiveStop()V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->progressiveStop()V

    .line 292
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    if-eqz v1, :cond_0

    .line 223
    check-cast v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .end local v0    # "ret":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 224
    :cond_0
    return-void
.end method

.method public setProgressiveStartActivated(Z)V
    .locals 1
    .param p1, "progressiveStartActivated"    # Z

    .prologue
    .line 271
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStartActivated(Z)V

    .line 272
    return-void
.end method

.method public setSmoothProgressDrawableBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 279
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    return-void
.end method

.method public setSmoothProgressDrawableCallbacks(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V
    .locals 1
    .param p1, "listener"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .prologue
    .line 275
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setCallbacks(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V

    .line 276
    return-void
.end method

.method public setSmoothProgressDrawableColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 235
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setColor(I)V

    .line 236
    return-void
.end method

.method public setSmoothProgressDrawableColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 231
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setColors([I)V

    .line 232
    return-void
.end method

.method public setSmoothProgressDrawableInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 227
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    return-void
.end method

.method public setSmoothProgressDrawableMirrorMode(Z)V
    .locals 1
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 267
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setMirrorMode(Z)V

    .line 268
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStartSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 243
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStartSpeed(F)V

    .line 244
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStopSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 247
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setProgressiveStopSpeed(F)V

    .line 248
    return-void
.end method

.method public setSmoothProgressDrawableReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z

    .prologue
    .line 263
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setReversed(Z)V

    .line 264
    return-void
.end method

.method public setSmoothProgressDrawableSectionsCount(I)V
    .locals 1
    .param p1, "sectionsCount"    # I

    .prologue
    .line 251
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setSectionsCount(I)V

    .line 252
    return-void
.end method

.method public setSmoothProgressDrawableSeparatorLength(I)V
    .locals 1
    .param p1, "separatorLength"    # I

    .prologue
    .line 255
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setSeparatorLength(I)V

    .line 256
    return-void
.end method

.method public setSmoothProgressDrawableSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 239
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setSpeed(F)V

    .line 240
    return-void
.end method

.method public setSmoothProgressDrawableStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 259
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setStrokeWidth(F)V

    .line 260
    return-void
.end method

.method public setSmoothProgressDrawableUseGradients(Z)V
    .locals 1
    .param p1, "useGradients"    # Z

    .prologue
    .line 283
    invoke-direct {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setUseGradients(Z)V

    .line 284
    return-void
.end method
