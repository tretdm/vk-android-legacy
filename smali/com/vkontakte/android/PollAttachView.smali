.class public Lcom/vkontakte/android/PollAttachView;
.super Landroid/widget/LinearLayout;
.source "PollAttachView.java"


# instance fields
.field private infoView:Landroid/widget/TextView;

.field public isBoard:Z

.field public isPublic:Z

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

    const/high16 v4, 0x40a00000    # 5.0f

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    .line 41
    iput p2, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    .line 42
    iput p3, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PollAttachView;->setOrientation(I)V

    .line 44
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "pb":Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v1, "pl":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 49
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/vkontakte/android/PollAttachView;->setPadding(IIII)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PollAttachView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PollAttachView;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PollAttachView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PollAttachView;Lcom/vkontakte/android/api/PollOption;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PollAttachView;->vote(Lcom/vkontakte/android/api/PollOption;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PollAttachView;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PollAttachView;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PollAttachView;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/vkontakte/android/PollAttachView;->unvote()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PollAttachView;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PollAttachView;)[Lcom/vkontakte/android/api/PollOption;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PollAttachView;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/vkontakte/android/PollAttachView;->updateText()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PollAttachView;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/vkontakte/android/PollAttachView;->animateProgress()V

    return-void
.end method

.method private animateProgress()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const v11, 0x7f090022

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, "maxp":F
    iget-object v8, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-lt v6, v9, :cond_1

    .line 269
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v6, v8, :cond_4

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    array-length v6, v6

    if-lt v1, v6, :cond_2

    .line 281
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 282
    .local v5, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 283
    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 284
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 297
    .end local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v5    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    .line 266
    .end local v1    # "i":I
    :cond_1
    aget-object v3, v8, v6

    .line 267
    .local v3, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v10, v3, Lcom/vkontakte/android/api/PollOption;->percent:F

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 272
    .end local v3    # "opt":Lcom/vkontakte/android/api/PollOption;
    .restart local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v1    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    aget-object v3, v6, v1

    .line 273
    .restart local v3    # "opt":Lcom/vkontakte/android/api/PollOption;
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 274
    .local v4, "ov":Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    mul-float v8, v2, v12

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 275
    iget v6, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    if-eqz v6, :cond_3

    .line 276
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v8, "progress"

    new-array v9, v13, [I

    iget v10, v3, Lcom/vkontakte/android/api/PollOption;->percent:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    aput v10, v9, v7

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_3
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v8, "progress"

    new-array v9, v13, [I

    aput v7, v9, v7

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 286
    .end local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    .end local v3    # "opt":Lcom/vkontakte/android/api/PollOption;
    .end local v4    # "ov":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 287
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    aget-object v3, v6, v1

    .line 288
    .restart local v3    # "opt":Lcom/vkontakte/android/api/PollOption;
    iget-object v6, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 289
    .restart local v4    # "ov":Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    mul-float v8, v2, v12

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 290
    iget v6, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    if-eqz v6, :cond_5

    .line 291
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iget v8, v3, Lcom/vkontakte/android/api/PollOption;->percent:F

    mul-float/2addr v8, v12

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 286
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 293
    :cond_5
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4
.end method

.method private onFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "emsg"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->removeAllViews()V

    .line 82
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "tv":Landroid/widget/TextView;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 85
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080102

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/16 v1, -0x2223

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PollAttachView;->setBackgroundColor(I)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method private unvote()V
    .locals 5

    .prologue
    .line 324
    new-instance v0, Lcom/vkontakte/android/api/PollsDeleteVote;

    iget v1, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    iget v3, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    iget-boolean v4, p0, Lcom/vkontakte/android/PollAttachView;->isBoard:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/PollsDeleteVote;-><init>(IIIZ)V

    .line 325
    new-instance v1, Lcom/vkontakte/android/PollAttachView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollAttachView$5;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsDeleteVote;->setCallback(Lcom/vkontakte/android/api/PollsDeleteVote$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 346
    return-void
.end method

.method private updateText()V
    .locals 12

    .prologue
    const v11, 0x7f090025

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f090024

    .line 245
    const/4 v3, 0x0

    .line 246
    .local v3, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 261
    iget-object v5, p0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v4, p0, Lcom/vkontakte/android/PollAttachView;->isPublic:Z

    if-eqz v4, :cond_3

    const v4, 0x7f08019d

    :goto_1
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f0d0007

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void

    .line 247
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    aget-object v1, v4, v0

    .line 248
    .local v1, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v4, v1, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    add-int/2addr v3, v4

    .line 249
    iget-object v4, p0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 250
    .local v2, "ov":Landroid/view/View;
    iget v4, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    if-eqz v4, :cond_1

    .line 251
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 252
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

    .line 253
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_2
    const v4, 0x7f090023

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/vkontakte/android/PollAttachView;->userOption:I

    iget v6, v1, Lcom/vkontakte/android/api/PollOption;->id:I

    if-ne v5, v6, :cond_2

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 255
    :cond_1
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 256
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

    .line 257
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0801eb

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 259
    :cond_2
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_3

    .line 261
    .end local v1    # "opt":Lcom/vkontakte/android/api/PollOption;
    .end local v2    # "ov":Landroid/view/View;
    :cond_3
    const v4, 0x7f08019e

    goto/16 :goto_1
.end method

.method private vote(Lcom/vkontakte/android/api/PollOption;)V
    .locals 5
    .param p1, "opt"    # Lcom/vkontakte/android/api/PollOption;

    .prologue
    .line 300
    new-instance v0, Lcom/vkontakte/android/api/PollsAddVote;

    iget v1, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    iget v3, p1, Lcom/vkontakte/android/api/PollOption;->id:I

    iget-boolean v4, p0, Lcom/vkontakte/android/PollAttachView;->isBoard:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/PollsAddVote;-><init>(IIIZ)V

    .line 301
    new-instance v1, Lcom/vkontakte/android/PollAttachView$4;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/PollAttachView$4;-><init>(Lcom/vkontakte/android/PollAttachView;Lcom/vkontakte/android/api/PollOption;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsAddVote;->setCallback(Lcom/vkontakte/android/api/PollsAddVote$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 320
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 321
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/vkontakte/android/api/PollsGetById;

    iget v1, p0, Lcom/vkontakte/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkontakte/android/PollAttachView;->pid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PollsGetById;-><init>(II)V

    .line 59
    new-instance v1, Lcom/vkontakte/android/PollAttachView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PollAttachView$1;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsGetById;->setCallback(Lcom/vkontakte/android/api/PollsGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 72
    return-void
.end method

.method public onLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V
    .locals 24
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "uanswer"    # I
    .param p3, "opts"    # [Lcom/vkontakte/android/api/PollOption;
    .param p4, "pub"    # Z

    .prologue
    .line 92
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->options:[Lcom/vkontakte/android/api/PollOption;

    .line 93
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->question:Ljava/lang/String;

    .line 94
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/PollAttachView;->userOption:I

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->removeAllViews()V

    .line 98
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v14, "pqtView":Landroid/widget/TextView;
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/high16 v18, 0x41880000    # 17.0f

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 105
    const/16 v16, 0x0

    .line 106
    .local v16, "total":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 108
    new-instance v18, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060027

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    if-eqz p4, :cond_1

    const v18, 0x7f08019d

    :goto_1
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ", "

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v20, 0x7f0d0007

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, 0x41700000    # 15.0f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 114
    const/4 v6, 0x0

    .line 115
    .local v6, "maxvotes":I
    const/4 v5, 0x0

    .line 116
    .local v5, "maxpercent":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 120
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v6

    .line 154
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 242
    return-void

    .line 106
    .end local v5    # "maxpercent":I
    .end local v6    # "maxvotes":I
    :cond_0
    aget-object v7, p3, v18

    .local v7, "o":Lcom/vkontakte/android/api/PollOption;
    iget v0, v7, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    move/from16 v20, v0

    add-int v16, v16, v20

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 110
    .end local v7    # "o":Lcom/vkontakte/android/api/PollOption;
    :cond_1
    const v18, 0x7f08019e

    goto/16 :goto_1

    .line 116
    .restart local v5    # "maxpercent":I
    .restart local v6    # "maxvotes":I
    :cond_2
    aget-object v9, p3, v18

    .line 118
    .local v9, "opt":Lcom/vkontakte/android/api/PollOption;
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v20, v0

    const/high16 v21, 0x41200000    # 10.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    .line 116
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 154
    .end local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    :cond_3
    aget-object v9, p3, v19

    .line 155
    .restart local v9    # "opt":Lcom/vkontakte/android/api/PollOption;
    new-instance v11, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 156
    .local v11, "pItem":Landroid/widget/RelativeLayout;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v4, "itemTitle":Landroid/widget/TextView;
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v0, v9, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v18, 0x7f090023

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setId(I)V

    .line 162
    const/16 v18, 0x0

    const/high16 v21, 0x40a00000    # 5.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->id:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    sget-object v18, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 166
    new-instance v12, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v21, 0x0

    const v22, 0x1010078

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v12, v0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    .local v12, "pbar":Landroid/widget/ProgressBar;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v21, 0x7f02023b

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    invoke-virtual {v12, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 169
    if-eqz p2, :cond_5

    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v18, v0

    const/high16 v21, 0x41200000    # 10.0f

    mul-float v18, v18, v21

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_5
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 170
    const v18, 0x7f090022

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/ProgressBar;->setId(I)V

    .line 171
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x1

    const/high16 v21, 0x41a00000    # 20.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v13, "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0x3

    const v21, 0x7f090023

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    const/high16 v18, 0x42480000    # 50.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 174
    const/high16 v18, 0x40a00000    # 5.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {v12, v13}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 179
    .local v15, "prView":Landroid/widget/TextView;
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    const/high16 v18, 0x41700000    # 15.0f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 181
    const v18, 0x7f090024

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setId(I)V

    .line 182
    const-string v18, "%.1f%%"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->percent:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    if-eqz p2, :cond_6

    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v21, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v17, "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0x6

    const v21, 0x7f090022

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 186
    const/16 v18, 0x8

    const v21, 0x7f090022

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    const/16 v18, 0xb

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 191
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v10, "overlayView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v21, 0x7f060027

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    const/high16 v18, 0x41700000    # 15.0f

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 194
    const v18, 0x7f090025

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setId(I)V

    .line 195
    const/16 v18, 0x11

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 196
    if-nez p2, :cond_7

    .line 197
    const v18, 0x7f0801eb

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :goto_7
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v21, -0x2

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v8, "olp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0x6

    const v21, 0x7f090022

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 202
    const/16 v18, 0x8

    const v21, 0x7f090022

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    const/16 v18, 0x5

    const v21, 0x7f090022

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 204
    const/16 v18, 0x7

    const v21, 0x7f090022

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 205
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {v11, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 208
    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 210
    new-instance v18, Lcom/vkontakte/android/PollAttachView$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PollAttachView$2;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v18, Lcom/vkontakte/android/PollAttachView$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/PollAttachView$3;-><init>(Lcom/vkontakte/android/PollAttachView;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/vkontakte/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 154
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto/16 :goto_3

    .line 163
    .end local v8    # "olp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "overlayView":Landroid/widget/TextView;
    .end local v12    # "pbar":Landroid/widget/ProgressBar;
    .end local v13    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "prView":Landroid/widget/TextView;
    .end local v17    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    sget-object v18, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 169
    .restart local v12    # "pbar":Landroid/widget/ProgressBar;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 183
    .restart local v13    # "pparams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v15    # "prView":Landroid/widget/TextView;
    :cond_6
    const/16 v18, 0x4

    goto/16 :goto_6

    .line 199
    .restart local v10    # "overlayView":Landroid/widget/TextView;
    .restart local v17    # "tparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 76
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/PollAttachView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PollAttachView;->setMeasuredDimension(II)V

    .line 77
    return-void
.end method
