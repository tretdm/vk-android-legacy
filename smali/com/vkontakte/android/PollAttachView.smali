.class public Lcom/vkontakte/android/PollAttachView;
.super Landroid/widget/LinearLayout;
.source "PollAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public isBoard:Z

.field public isPublic:Z

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

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput p2, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    .line 32
    iput p3, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    .line 33
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollAttachView;->setOrientation(I)V

    .line 34
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .local v1, "pl":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PollAttachView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PollAttachView;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PollAttachView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PollAttachView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PollAttachView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView;->question:Ljava/lang/String;

    return-object v0
.end method

.method private onFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "emsg"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->removeAllViews()V

    .line 72
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "tv":Landroid/widget/TextView;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090115

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 78
    const/16 v1, -0x2223

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollAttachView;->setBackgroundColor(I)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 80
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/vkontakte/android/api/PollsGetById;

    iget v1, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PollsGetById;-><init>(II)V

    .line 49
    new-instance v1, Lcom/vkontakte/android/PollAttachView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollAttachView$1;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsGetById;->setCallback(Lcom/vkontakte/android/api/PollsGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    .local v0, "optId":I
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 199
    new-instance v1, Lcom/vkontakte/android/api/PollsAddVote;

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v3, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    iget-boolean v4, p0, Lcom/vkontakte/android/PollAttachView;->isBoard:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vkontakte/android/api/PollsAddVote;-><init>(IIIZ)V

    .line 200
    new-instance v2, Lcom/vkontakte/android/PollAttachView$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/vkontakte/android/PollAttachView$3;-><init>(Lcom/vkontakte/android/PollAttachView;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/PollsAddVote;->setCallback(Lcom/vkontakte/android/api/PollsAddVote$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 218
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 219
    return-void
.end method

.method public onLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V
    .locals 24
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "uanswer"    # I
    .param p3, "opts"    # [Lcom/vkontakte/android/api/PollOption;
    .param p4, "pub"    # Z

    .prologue
    .line 83
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    .line 84
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->question:Ljava/lang/String;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->removeAllViews()V

    .line 88
    new-instance v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v13, "pqView":Landroid/widget/TextView;
    const v18, -0x888889

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    if-eqz p4, :cond_1

    const v18, 0x7f09020e

    :goto_0
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 91
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 93
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v14, "pqtView":Landroid/widget/TextView;
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
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

    .line 97
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 99
    const/4 v7, 0x0

    .line 100
    .local v7, "maxvotes":I
    const/4 v6, 0x0

    .line 101
    .local v6, "maxpercent":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 105
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    .line 107
    if-nez p2, :cond_4

    .line 108
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 191
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 192
    return-void

    .line 90
    .end local v6    # "maxpercent":I
    .end local v7    # "maxvotes":I
    .end local v14    # "pqtView":Landroid/widget/TextView;
    :cond_1
    const v18, 0x7f09020f

    goto :goto_0

    .line 101
    .restart local v6    # "maxpercent":I
    .restart local v7    # "maxvotes":I
    .restart local v14    # "pqtView":Landroid/widget/TextView;
    :cond_2
    aget-object v9, p3, v18

    .line 102
    .local v9, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 103
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

    .line 101
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 108
    .end local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    :cond_3
    aget-object v9, p3, v18

    .line 109
    .restart local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v10, "pItem":Landroid/widget/RelativeLayout;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v16, Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 113
    .local v16, "rb":Landroid/widget/RadioButton;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 114
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 115
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 116
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v8, "oView":Landroid/widget/TextView;
    iget-object v0, v9, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    const/high16 v20, 0x40e00000    # 7.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 126
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 130
    const v20, 0x7f02008f

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 131
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 132
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const/16 v20, 0x0

    const/high16 v21, 0x40e00000    # 7.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/16 v22, 0x0

    const/high16 v23, 0x40e00000    # 7.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 136
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 108
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 139
    .end local v5    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "oView":Landroid/widget/TextView;
    .end local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    .end local v10    # "pItem":Landroid/widget/RelativeLayout;
    .end local v16    # "rb":Landroid/widget/RadioButton;
    :cond_4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v9, p3, v18

    .line 140
    .restart local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .restart local v10    # "pItem":Landroid/widget/RelativeLayout;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v4, "itemTitle":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v0, v9, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setId(I)V

    .line 147
    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance v11, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    const v22, 0x1010078

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v11, v0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    .local v11, "pbar":Landroid/widget/ProgressBar;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020031

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {v11, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 152
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v20, v0

    const/high16 v21, 0x41200000    # 10.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 153
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    const/high16 v21, 0x41200000    # 10.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v12, "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x3

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 155
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

    .line 156
    const/high16 v20, 0x40a00000    # 5.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 157
    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 160
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 161
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

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    const/high16 v20, 0x41500000    # 13.0f

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v17, "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x3

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    const/16 v20, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {v10, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/PollAttachView;->isPublic:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 172
    new-instance v20, Lcom/vkontakte/android/PollAttachView$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PollAttachView$2;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 139
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PollAttachView;->setMeasuredDimension(II)V

    .line 67
    return-void
.end method
