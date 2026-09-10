.class public Lcom/vkontakte/android/VideoAttachView;
.super Landroid/widget/FrameLayout;
.source "VideoAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public file:Lcom/vkontakte/android/api/VideoFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/vkontakte/android/VideoAttachView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/vkontakte/android/VideoAttachView;->init()V

    .line 39
    const v0, -0xff0100

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoAttachView;->setBackgroundColor(I)V

    .line 41
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/VideoAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoAttachView;->setFocusable(Z)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoAttachView;->setFocusableInTouchMode(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 32
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 51
    new-instance v7, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v27

    const-class v28, Lcom/vkontakte/android/NewVideoPlayerActivity;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v7, "intent":Landroid/content/Intent;
    const-string v27, "file"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/VideoAttachView;->file:Lcom/vkontakte/android/api/VideoFile;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0xb

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    .line 54
    const v27, 0x7f060018

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 55
    .local v23, "thumb":Landroid/widget/ImageView;
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v8, "iv":Landroid/widget/ImageView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance v27, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v28

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getHeight()I

    move-result v29

    invoke-direct/range {v27 .. v29}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v4, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    .local v4, "black":Landroid/view/View;
    const/high16 v27, -0x1000000

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    new-instance v27, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v27 .. v29}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 65
    .local v3, "act":Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v27

    if-nez v27, :cond_7

    .line 66
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :goto_0
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v5, v0, [I

    .line 74
    .local v5, "coords":[I
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 75
    const/16 v27, 0x0

    aget v27, v5, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 76
    const/16 v27, 0x1

    aget v27, v5, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 77
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 78
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 81
    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Display;->getRotation()I

    move-result v12

    .line 82
    .local v12, "r":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VideoAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    .line 83
    .local v9, "o":I
    if-eqz v12, :cond_8

    const/16 v27, 0x2

    move/from16 v0, v27

    if-eq v12, v0, :cond_8

    const/4 v14, 0x0

    .line 84
    .local v14, "rv":Z
    :goto_1
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v9, v0, :cond_9

    const/4 v11, 0x1

    .line 85
    .local v11, "ov":Z
    :goto_2
    if-eq v14, v11, :cond_0

    .line 86
    add-int/lit8 v12, v12, 0x1

    .line 87
    const/16 v27, 0x3

    move/from16 v0, v27

    if-le v12, v0, :cond_0

    add-int/lit8 v12, v12, -0x4

    .line 90
    :cond_0
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getWidth()I

    move-result v27

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getHeight()I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 91
    .local v18, "scrW":I
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getWidth()I

    move-result v27

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getHeight()I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 93
    .local v17, "scrH":I
    div-int/lit8 v27, v18, 0x2

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v25, v0

    .local v25, "xdst":F
    div-int/lit8 v27, v17, 0x2

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v26, v0

    .line 95
    .local v26, "ydst":F
    const/4 v13, 0x0

    .line 96
    .local v13, "rotation":Landroid/animation/ObjectAnimator;
    if-nez v12, :cond_a

    .line 97
    const-string v27, "rotation"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/high16 v30, 0x42b40000    # 90.0f

    aput v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 98
    move/from16 v20, v25

    .line 99
    .local v20, "t":F
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v26

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v25, v27, v28

    .line 100
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v20

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v26, v27, v28

    .line 110
    .end local v20    # "t":F
    :cond_1
    :goto_3
    if-eqz v13, :cond_2

    .line 111
    new-instance v27, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v27 .. v27}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    const-wide/16 v27, 0x12c

    move-wide/from16 v0, v27

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 114
    :cond_2
    const-string v27, "translationX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput v25, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 115
    .local v21, "tX":Landroid/animation/ObjectAnimator;
    new-instance v27, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v27 .. v27}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    const-wide/16 v27, 0x12c

    move-object/from16 v0, v21

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 117
    const-string v27, "translationY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput v26, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 118
    .local v22, "tY":Landroid/animation/ObjectAnimator;
    new-instance v27, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v27 .. v27}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 119
    const-wide/16 v27, 0x12c

    move-object/from16 v0, v22

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    const-string v27, "scaleX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    aput v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 121
    .local v15, "sX":Landroid/animation/ObjectAnimator;
    new-instance v27, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v27 .. v27}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    const-wide/16 v27, 0x12c

    move-wide/from16 v0, v27

    invoke-virtual {v15, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    const-string v27, "scaleY"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v30, v30, v31

    aput v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 124
    .local v16, "sY":Landroid/animation/ObjectAnimator;
    new-instance v27, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v27 .. v27}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    const-wide/16 v27, 0x12c

    move-object/from16 v0, v16

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 126
    const-string v27, "alpha"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    aput v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v4, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 127
    .local v6, "fade":Landroid/animation/ObjectAnimator;
    new-instance v27, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v27 .. v27}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    const-wide/16 v27, 0x12c

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    .line 131
    .local v19, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 132
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 133
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 134
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 135
    if-eqz v13, :cond_3

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 136
    :cond_3
    new-instance v27, Lcom/vkontakte/android/VideoAttachView$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v4}, Lcom/vkontakte/android/VideoAttachView$1;-><init>(Lcom/vkontakte/android/VideoAttachView;Landroid/widget/ImageView;Landroid/view/View;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    .line 159
    const-string v27, "anim_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    const-string v27, "anim_duration"

    const/16 v28, 0x12c

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    .end local v3    # "act":Landroid/app/Activity;
    .end local v4    # "black":Landroid/view/View;
    .end local v5    # "coords":[I
    .end local v6    # "fade":Landroid/animation/ObjectAnimator;
    .end local v8    # "iv":Landroid/widget/ImageView;
    .end local v9    # "o":I
    .end local v11    # "ov":Z
    .end local v12    # "r":I
    .end local v13    # "rotation":Landroid/animation/ObjectAnimator;
    .end local v14    # "rv":Z
    .end local v15    # "sX":Landroid/animation/ObjectAnimator;
    .end local v16    # "sY":Landroid/animation/ObjectAnimator;
    .end local v17    # "scrH":I
    .end local v18    # "scrW":I
    .end local v19    # "set":Landroid/animation/AnimatorSet;
    .end local v21    # "tX":Landroid/animation/ObjectAnimator;
    .end local v22    # "tY":Landroid/animation/ObjectAnimator;
    .end local v23    # "thumb":Landroid/widget/ImageView;
    .end local v25    # "xdst":F
    .end local v26    # "ydst":F
    :cond_4
    const v27, 0x7f060018

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    if-eqz v27, :cond_5

    .line 164
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v10, "os":Ljava/io/ByteArrayOutputStream;
    const v27, 0x7f060018

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    check-cast v27, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v27

    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v29, 0x5f

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 166
    const-string v27, "thumb"

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 169
    .end local v10    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 170
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v27

    check-cast v27, Landroid/app/Activity;

    const/high16 v28, 0x10a0000

    const v29, 0x10a0001

    invoke-virtual/range {v27 .. v29}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_6
    :goto_4
    return-void

    .line 69
    .restart local v3    # "act":Landroid/app/Activity;
    .restart local v4    # "black":Landroid/view/View;
    .restart local v8    # "iv":Landroid/widget/ImageView;
    .restart local v23    # "thumb":Landroid/widget/ImageView;
    :cond_7
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 83
    .restart local v5    # "coords":[I
    .restart local v9    # "o":I
    .restart local v12    # "r":I
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 84
    .restart local v14    # "rv":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 101
    .restart local v11    # "ov":Z
    .restart local v13    # "rotation":Landroid/animation/ObjectAnimator;
    .restart local v17    # "scrH":I
    .restart local v18    # "scrW":I
    .restart local v25    # "xdst":F
    .restart local v26    # "ydst":F
    :cond_a
    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v12, v0, :cond_b

    .line 102
    const-string v27, "rotationX"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/high16 v30, 0x43340000    # 180.0f

    aput v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 103
    goto/16 :goto_3

    :cond_b
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v12, v0, :cond_1

    .line 104
    const-string v27, "rotation"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/high16 v30, -0x3d4c0000    # -90.0f

    aput v30, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 105
    move/from16 v20, v25

    .line 106
    .restart local v20    # "t":F
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v26

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v25, v27, v28

    .line 107
    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v20

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v26, v27, v28

    goto/16 :goto_3

    .line 171
    .end local v3    # "act":Landroid/app/Activity;
    .end local v4    # "black":Landroid/view/View;
    .end local v5    # "coords":[I
    .end local v8    # "iv":Landroid/widget/ImageView;
    .end local v9    # "o":I
    .end local v11    # "ov":Z
    .end local v12    # "r":I
    .end local v13    # "rotation":Landroid/animation/ObjectAnimator;
    .end local v14    # "rv":Z
    .end local v17    # "scrH":I
    .end local v18    # "scrW":I
    .end local v20    # "t":F
    .end local v23    # "thumb":Landroid/widget/ImageView;
    .end local v25    # "xdst":F
    .end local v26    # "ydst":F
    :catch_0
    move-exception v24

    .line 172
    .local v24, "x":Ljava/lang/Exception;
    const-string v27, "thumb"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/VideoAttachView;->getContext()Landroid/content/Context;

    move-result-object v27

    check-cast v27, Landroid/app/Activity;

    const/high16 v28, 0x10a0000

    const v29, 0x10a0001

    invoke-virtual/range {v27 .. v29}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_4
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 179
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoAttachView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    return-void
.end method
