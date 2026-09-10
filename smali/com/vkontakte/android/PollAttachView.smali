.class public Lcom/vkontakte/android/PollAttachView;
.super Landroid/widget/LinearLayout;
.source "PollAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public isBoard:Z

.field private oid:I

.field private options:[Lcom/vkontakte/android/api/PollOption;

.field private pid:I

.field private question:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput p2, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    .line 30
    iput p3, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    .line 31
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollAttachView;->setOrientation(I)V

    .line 32
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020206

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v1, "pl":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PollAttachView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PollAttachView;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PollAttachView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView;->question:Ljava/lang/String;

    return-object v0
.end method

.method private onFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "emsg"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    .line 67
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->removeAllViews()V

    .line 69
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "tv":Landroid/widget/TextView;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090114

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 75
    const/16 v1, -0x2223

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollAttachView;->setBackgroundColor(I)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/vkontakte/android/api/PollsGetById;

    iget v1, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PollsGetById;-><init>(II)V

    .line 47
    new-instance v1, Lcom/vkontakte/android/PollAttachView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollAttachView$1;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsGetById;->setCallback(Lcom/vkontakte/android/api/PollsGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 176
    .local v0, "optId":I
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 178
    new-instance v1, Lcom/vkontakte/android/api/PollsAddVote;

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v3, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    iget-boolean v4, p0, Lcom/vkontakte/android/PollAttachView;->isBoard:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vkontakte/android/api/PollsAddVote;-><init>(IIIZ)V

    .line 179
    new-instance v2, Lcom/vkontakte/android/PollAttachView$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/vkontakte/android/PollAttachView$2;-><init>(Lcom/vkontakte/android/PollAttachView;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/PollsAddVote;->setCallback(Lcom/vkontakte/android/api/PollsAddVote$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 197
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 198
    return-void
.end method

.method public onLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;)V
    .locals 24
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "uanswer"    # I
    .param p3, "opts"    # [Lcom/vkontakte/android/api/PollOption;

    .prologue
    .line 80
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    .line 81
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->question:Ljava/lang/String;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->removeAllViews()V

    .line 85
    new-instance v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v13, "pqView":Landroid/widget/TextView;
    const v18, -0x888889

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    const v18, 0x7f090018

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 88
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 90
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v14, "pqtView":Landroid/widget/TextView;
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x41000000    # 8.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 96
    const/4 v7, 0x0

    .line 97
    .local v7, "maxvotes":I
    const/4 v6, 0x0

    .line 98
    .local v6, "maxpercent":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 102
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    .line 104
    if-nez p2, :cond_3

    .line 105
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 170
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 171
    return-void

    .line 98
    :cond_1
    aget-object v9, p3, v18

    .line 99
    .local v9, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 100
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v20, v0

    const/high16 v21, 0x41200000    # 10.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 98
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 105
    .end local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    :cond_2
    aget-object v9, p3, v18

    .line 106
    .restart local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 107
    .local v10, "pItem":Landroid/widget/RelativeLayout;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v16, Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 110
    .local v16, "rb":Landroid/widget/RadioButton;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 111
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 112
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 113
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v8, "oView":Landroid/widget/TextView;
    iget-object v0, v9, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 119
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    const/high16 v20, 0x41600000    # 14.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 123
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x41600000    # 14.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 125
    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 127
    const v20, 0x7f020090

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 128
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 105
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 135
    .end local v5    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "oView":Landroid/widget/TextView;
    .end local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    .end local v10    # "pItem":Landroid/widget/RelativeLayout;
    .end local v16    # "rb":Landroid/widget/RadioButton;
    :cond_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v9, p3, v18

    .line 136
    .restart local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 137
    .restart local v10    # "pItem":Landroid/widget/RelativeLayout;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v4, "itemTitle":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 141
    iget-object v0, v9, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setId(I)V

    .line 143
    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance v11, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    const v22, 0x1010078

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v11, v0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    .local v11, "pbar":Landroid/widget/ProgressBar;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020040

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v11, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 148
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v20, v0

    const/high16 v21, 0x41200000    # 10.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 149
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/high16 v21, 0x41200000    # 10.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v12, "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x3

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 151
    const/16 v20, 0x46

    mul-int/lit8 v21, v7, 0x6

    add-int/lit8 v21, v21, 0x3f

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 152
    const/high16 v20, 0x40a00000    # 5.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 153
    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 156
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    .local v15, "prView":Landroid/widget/TextView;
    const-string v20, "%.1f%% (%d)"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 159
    const/high16 v20, 0x41500000    # 13.0f

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v17, "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x3

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    const/16 v20, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 166
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 135
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PollAttachView;->setMeasuredDimension(II)V

    .line 64
    return-void
.end method
