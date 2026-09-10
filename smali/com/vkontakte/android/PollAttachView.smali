.class public Lcom/vkontakte/android/PollAttachView;
.super Landroid/widget/LinearLayout;
.source "PollAttachView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PollAttachView$OnDataLoadedListener;
    }
.end annotation


# instance fields
.field private infoView:Landroid/widget/TextView;

.field public isBoard:Z

.field public isPublic:Z

.field private listener:Lcom/vkontakte/android/PollAttachView$OnDataLoadedListener;

.field private oid:I

.field private optionViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private options:[Lcom/vkontakte/android/api/PollOption;

.field private pid:I

.field private question:Ljava/lang/String;

.field private userOption:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v5, 0x41200000    # 10.0f

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    .line 42
    iput p2, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    .line 43
    iput p3, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    .line 44
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollAttachView;->setOrientation(I)V

    .line 45
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "pb":Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v1, "pl":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 50
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/vkontakte/android/PollAttachView;->setPadding(IIII)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/PollAttachView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PollAttachView;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/PollAttachView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;

    .prologue
    .line 27
    iget v0, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    return v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/PollAttachView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/PollAttachView;Lcom/vkontakte/android/api/PollOption;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;
    .param p1, "x1"    # Lcom/vkontakte/android/api/PollOption;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PollAttachView;->vote(Lcom/vkontakte/android/api/PollOption;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/PollAttachView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;

    .prologue
    .line 27
    iget v0, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    return v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/PollAttachView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;

    .prologue
    .line 27
    iget v0, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/PollAttachView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/PollAttachView;->unvote()V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/PollAttachView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/PollAttachView;->updateText()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/PollAttachView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/PollAttachView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/PollAttachView;->animateProgress()V

    return-void
.end method

.method private animateProgress()V
    .locals 15

    .prologue
    .line 267
    const/4 v5, 0x0

    .line 268
    .local v5, "maxp":F
    iget-object v1, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    .local v1, "arr$":[Lcom/vkontakte/android/api/PollOption;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v1, v3

    .line 269
    .local v6, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v9, v6, Lcom/vkontakte/android/api/PollOption;->percent:F

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    .end local v6    # "opt":Lcom/vkontakte/android/api/PollOption;
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_4

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 274
    iget-object v9, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    aget-object v6, v9, v2

    .line 275
    .restart local v6    # "opt":Lcom/vkontakte/android/api/PollOption;
    iget-object v9, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 276
    .local v7, "ov":Landroid/view/View;
    const v9, 0x7f08001c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 277
    iget v9, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    if-eqz v9, :cond_1

    .line 278
    const v9, 0x7f08001c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "progress"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget v13, v6, Lcom/vkontakte/android/api/PollOption;->percent:F

    const/high16 v14, 0x41200000    # 10.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    :cond_1
    const v9, 0x7f08001c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "progress"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 283
    .end local v6    # "opt":Lcom/vkontakte/android/api/PollOption;
    .end local v7    # "ov":Landroid/view/View;
    :cond_2
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 284
    .local v8, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 285
    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 286
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 299
    .end local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v8    # "set":Landroid/animation/AnimatorSet;
    :cond_3
    return-void

    .line 288
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v9, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    array-length v9, v9

    if-ge v2, v9, :cond_3

    .line 289
    iget-object v9, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    aget-object v6, v9, v2

    .line 290
    .restart local v6    # "opt":Lcom/vkontakte/android/api/PollOption;
    iget-object v9, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 291
    .restart local v7    # "ov":Landroid/view/View;
    const v9, 0x7f08001c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 292
    iget v9, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    if-eqz v9, :cond_5

    .line 293
    const v9, 0x7f08001c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iget v10, v6, Lcom/vkontakte/android/api/PollOption;->percent:F

    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 288
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 295
    :cond_5
    const v9, 0x7f08001c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4
.end method

.method private onFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "emsg"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->removeAllViews()V

    .line 83
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "tv":Landroid/widget/TextView;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00d2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/16 v1, -0x2223

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollAttachView;->setBackgroundColor(I)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method private unvote()V
    .locals 5

    .prologue
    .line 326
    new-instance v0, Lcom/vkontakte/android/api/PollsDeleteVote;

    iget v1, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    iget v3, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    iget-boolean v4, p0, Lcom/vkontakte/android/PollAttachView;->isBoard:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/PollsDeleteVote;-><init>(IIIZ)V

    new-instance v1, Lcom/vkontakte/android/PollAttachView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollAttachView$5;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsDeleteVote;->setCallback(Lcom/vkontakte/android/api/PollsDeleteVote$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 347
    return-void
.end method

.method private updateText()V
    .locals 12

    .prologue
    const v11, 0x7f08001a

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f08001b

    .line 247
    const/4 v3, 0x0

    .line 248
    .local v3, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 249
    iget-object v4, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    aget-object v1, v4, v0

    .line 250
    .local v1, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v4, v1, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    add-int/2addr v3, v4

    .line 251
    iget-object v4, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 252
    .local v2, "ov":Landroid/view/View;
    iget v4, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    if-eqz v4, :cond_0

    .line 253
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 254
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "%.1f%%"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, v1, Lcom/vkontakte/android/api/PollOption;->percent:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :goto_1
    const v4, 0x7f08001d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    iget v6, v1, Lcom/vkontakte/android/api/PollOption;->id:I

    if-ne v5, v6, :cond_1

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "%.1f%%"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, v1, Lcom/vkontakte/android/api/PollOption;->percent:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d0201

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 261
    :cond_1
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_2

    .line 263
    .end local v1    # "opt":Lcom/vkontakte/android/api/PollOption;
    .end local v2    # "ov":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v4, p0, Lcom/vkontakte/android/PollAttachView;->isPublic:Z

    if-eqz v4, :cond_3

    const v4, 0x7f0d0204

    :goto_3
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f070039

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void

    .line 263
    :cond_3
    const v4, 0x7f0d0200

    goto :goto_3
.end method

.method private vote(Lcom/vkontakte/android/api/PollOption;)V
    .locals 5
    .param p1, "opt"    # Lcom/vkontakte/android/api/PollOption;

    .prologue
    .line 302
    new-instance v0, Lcom/vkontakte/android/api/PollsAddVote;

    iget v1, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    iget v3, p1, Lcom/vkontakte/android/api/PollOption;->id:I

    iget-boolean v4, p0, Lcom/vkontakte/android/PollAttachView;->isBoard:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/PollsAddVote;-><init>(IIIZ)V

    new-instance v1, Lcom/vkontakte/android/PollAttachView$4;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PollAttachView$4;-><init>(Lcom/vkontakte/android/PollAttachView;Lcom/vkontakte/android/api/PollOption;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsAddVote;->setCallback(Lcom/vkontakte/android/api/PollsAddVote$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 323
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/vkontakte/android/api/PollsGetById;

    iget v1, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PollsGetById;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/PollAttachView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollAttachView$1;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsGetById;->setCallback(Lcom/vkontakte/android/api/PollsGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 73
    return-void
.end method

.method public onLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V
    .locals 26
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "uanswer"    # I
    .param p3, "opts"    # [Lcom/vkontakte/android/api/PollOption;
    .param p4, "pub"    # Z

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->listener:Lcom/vkontakte/android/PollAttachView$OnDataLoadedListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->listener:Lcom/vkontakte/android/PollAttachView$OnDataLoadedListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/PollAttachView$OnDataLoadedListener;->onDataLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V

    .line 95
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    .line 96
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->question:Ljava/lang/String;

    .line 97
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/PollAttachView;->userOption:I

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->removeAllViews()V

    .line 101
    new-instance v18, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v18, "pqtView":Landroid/widget/TextView;
    const/high16 v22, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/high16 v22, 0x41880000    # 17.0f

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 108
    const/16 v20, 0x0

    .line 109
    .local v20, "total":I
    move-object/from16 v5, p3

    .local v5, "arr$":[Lcom/vkontakte/android/api/PollOption;
    array-length v8, v5

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v11, v5, v6

    .local v11, "o":Lcom/vkontakte/android/api/PollOption;
    iget v0, v11, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    move/from16 v22, v0

    add-int v20, v20, v22

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 111
    .end local v11    # "o":Lcom/vkontakte/android/api/PollOption;
    :cond_1
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a001f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    if-eqz p4, :cond_2

    const v22, 0x7f0d0204

    :goto_1
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v24, 0x7f070039

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move/from16 v0, v24

    move/from16 v1, v20

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/high16 v23, 0x41700000    # 15.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 117
    const/4 v10, 0x0

    .line 118
    .local v10, "maxvotes":I
    const/4 v9, 0x0

    .line 119
    .local v9, "maxpercent":I
    move-object/from16 v5, p3

    array-length v8, v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_3

    aget-object v13, v5, v6

    .line 121
    .local v13, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v0, v13, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v22, v0

    const/high16 v23, 0x41200000    # 10.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v10, v9

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 113
    .end local v9    # "maxpercent":I
    .end local v10    # "maxvotes":I
    .end local v13    # "opt":Lcom/vkontakte/android/api/PollOption;
    :cond_2
    const v22, 0x7f0d0200

    goto :goto_1

    .line 123
    .restart local v9    # "maxpercent":I
    .restart local v10    # "maxvotes":I
    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v10

    .line 157
    move-object/from16 v5, p3

    array-length v8, v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_8

    aget-object v13, v5, v6

    .line 158
    .restart local v13    # "opt":Lcom/vkontakte/android/api/PollOption;
    new-instance v15, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .local v15, "pItem":Landroid/widget/RelativeLayout;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v7, "itemTitle":Landroid/widget/TextView;
    const/high16 v22, -0x1000000

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v0, v13, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v22, 0x7f08001d

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setId(I)V

    .line 165
    const/16 v22, 0x0

    const/high16 v23, 0x40a00000    # 5.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    iget v0, v13, Lcom/vkontakte/android/api/PollOption;->id:I

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    sget-object v22, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_4
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    invoke-virtual {v15, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 169
    new-instance v16, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x0

    const v24, 0x1010078

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    .local v16, "pbar":Landroid/widget/ProgressBar;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0201bd

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 172
    if-eqz p2, :cond_5

    iget v0, v13, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v22, v0

    const/high16 v23, 0x41200000    # 10.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    :goto_5
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 173
    const v22, 0x7f08001c

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 174
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/high16 v23, 0x41a00000    # 20.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v17, "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x3

    const v23, 0x7f08001d

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    const/high16 v22, 0x42480000    # 50.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 177
    const/high16 v22, 0x40a00000    # 5.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 181
    new-instance v19, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 182
    .local v19, "prView":Landroid/widget/TextView;
    const/high16 v22, -0x1000000

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    const/high16 v22, 0x41700000    # 15.0f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 184
    const v22, 0x7f08001b

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 185
    const-string v22, "%.1f%%"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget v0, v13, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    if-eqz p2, :cond_6

    const/16 v22, 0x0

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v21, "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x6

    const v23, 0x7f08001c

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 189
    const/16 v22, 0x8

    const v23, 0x7f08001c

    invoke-virtual/range {v21 .. v23}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 190
    const/16 v22, 0xb

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 191
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 194
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 195
    .local v14, "overlayView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0a001f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 196
    const/high16 v22, 0x41700000    # 15.0f

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 197
    const v22, 0x7f08001a

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setId(I)V

    .line 198
    const/16 v22, 0x11

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 199
    if-nez p2, :cond_7

    .line 200
    const v22, 0x7f0d0201

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 203
    :goto_7
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v12, "olp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x6

    const v23, 0x7f08001c

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 205
    const/16 v22, 0x8

    const v23, 0x7f08001c

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 206
    const/16 v22, 0x5

    const v23, 0x7f08001c

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 207
    const/16 v22, 0x7

    const v23, 0x7f08001c

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 208
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {v15, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {v15, v13}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 213
    new-instance v22, Lcom/vkontakte/android/PollAttachView$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PollAttachView$2;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    new-instance v22, Lcom/vkontakte/android/PollAttachView$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PollAttachView$3;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 157
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 166
    .end local v12    # "olp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "overlayView":Landroid/widget/TextView;
    .end local v16    # "pbar":Landroid/widget/ProgressBar;
    .end local v17    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "prView":Landroid/widget/TextView;
    .end local v21    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    sget-object v22, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 172
    .restart local v16    # "pbar":Landroid/widget/ProgressBar;
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 186
    .restart local v17    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v19    # "prView":Landroid/widget/TextView;
    :cond_6
    const/16 v22, 0x4

    goto/16 :goto_6

    .line 202
    .restart local v14    # "overlayView":Landroid/widget/TextView;
    .restart local v21    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v13, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 244
    .end local v7    # "itemTitle":Landroid/widget/TextView;
    .end local v13    # "opt":Lcom/vkontakte/android/api/PollOption;
    .end local v14    # "overlayView":Landroid/widget/TextView;
    .end local v15    # "pItem":Landroid/widget/RelativeLayout;
    .end local v16    # "pbar":Landroid/widget/ProgressBar;
    .end local v17    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19    # "prView":Landroid/widget/TextView;
    .end local v21    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PollAttachView;->setMeasuredDimension(II)V

    .line 78
    return-void
.end method

.method public setOnDataLoadedListener(Lcom/vkontakte/android/PollAttachView$OnDataLoadedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/PollAttachView$OnDataLoadedListener;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/vkontakte/android/PollAttachView;->listener:Lcom/vkontakte/android/PollAttachView$OnDataLoadedListener;

    .line 351
    return-void
.end method
