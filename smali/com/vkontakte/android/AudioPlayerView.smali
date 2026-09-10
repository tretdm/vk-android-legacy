.class public Lcom/vkontakte/android/AudioPlayerView;
.super Landroid/widget/LinearLayout;
.source "AudioPlayerView.java"


# static fields
.field private static pauseIcon:Landroid/graphics/drawable/Drawable;

.field private static playIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field addBtn:Landroid/widget/ImageView;

.field canUpdateProgress:Z

.field file:Lcom/vkontakte/android/AudioFile;

.field public isRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 40
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerView;->init()V

    .line 46
    return-void
.end method

.method private init()V
    .locals 15

    .prologue
    .line 49
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->setOrientation(I)V

    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f030054

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/AudioPlayerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 51
    .local v6, "titleBar":Landroid/view/View;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerView;->addView(Landroid/view/View;)V

    .line 53
    const v8, 0x7f060182

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f03000a

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/AudioPlayerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "aview":Landroid/view/View;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->addView(Landroid/view/View;)V

    .line 59
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    .line 60
    iget-object v8, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    const v9, 0x7f0200cc

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v8, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    iget-object v8, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    sget v11, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x0

    const-wide/high16 v11, 0x4028000000000000L    # 12.0

    sget v13, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v13, v13

    mul-double/2addr v11, v13

    double-to-int v11, v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 64
    const v8, 0x7f060184

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    iget-object v8, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v8, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$1;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/AudioPlayerView$1;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, "backBtn":Landroid/widget/ImageView;
    const v8, 0x7f0200bd

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v2, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 79
    const v8, 0x7f060183

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 80
    new-instance v8, Lcom/vkontakte/android/AudioPlayerView$2;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/AudioPlayerView$2;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xb

    if-lt v8, v9, :cond_0

    .line 92
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v3, "btnMenu":Landroid/widget/ImageView;
    const v8, 0x7f0200c6

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    .restart local v2    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 96
    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 97
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x0

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    sget v12, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 100
    const v8, 0x7f060180

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 101
    .local v7, "vv":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    new-instance v8, Lcom/vkontakte/android/AudioPlayerView$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/AudioPlayerView$3;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v8, 0x7f060184

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02015c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "next":Landroid/graphics/drawable/Drawable;
    move-object v8, v4

    .line 152
    check-cast v8, Landroid/graphics/drawable/DrawableContainer;

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/DrawableContainer;->setEnterFadeDuration(I)V

    move-object v8, v4

    .line 153
    check-cast v8, Landroid/graphics/drawable/DrawableContainer;

    const/16 v9, 0x15e

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/DrawableContainer;->setExitFadeDuration(I)V

    .line 154
    const v8, 0x7f06002e

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020165

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, "prev":Landroid/graphics/drawable/Drawable;
    move-object v8, v5

    .line 156
    check-cast v8, Landroid/graphics/drawable/DrawableContainer;

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/DrawableContainer;->setEnterFadeDuration(I)V

    move-object v8, v5

    .line 157
    check-cast v8, Landroid/graphics/drawable/DrawableContainer;

    const/16 v9, 0x15e

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/DrawableContainer;->setExitFadeDuration(I)V

    .line 158
    const v8, 0x7f06002c

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    .end local v3    # "btnMenu":Landroid/widget/ImageView;
    .end local v4    # "next":Landroid/graphics/drawable/Drawable;
    .end local v5    # "prev":Landroid/graphics/drawable/Drawable;
    .end local v7    # "vv":Landroid/view/View;
    :cond_0
    const v8, 0x7f06002d

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$4;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/AudioPlayerView$4;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v8, 0x7f06002e

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$5;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/AudioPlayerView$5;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v8, 0x7f06002c

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$6;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/AudioPlayerView$6;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v8, 0x7f060028

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$7;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/AudioPlayerView$7;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 205
    const v8, 0x7f060182

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const v8, 0x7f060025

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const v8, 0x7f060026

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    sget-object v8, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v8, :cond_1

    .line 210
    const v8, 0x7f06002f

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v9}, Lcom/vkontakte/android/AudioPlayerService;->isLoop()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 211
    const v8, 0x7f060031

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget-object v9, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v9}, Lcom/vkontakte/android/AudioPlayerService;->isRandom()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 214
    :cond_1
    const v8, 0x7f06002f

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$8;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/AudioPlayerView$8;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v8, 0x7f060031

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$9;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/AudioPlayerView$9;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v8, 0x7f060030

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/AudioPlayerView$10;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/AudioPlayerView$10;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget-object v8, Lcom/vkontakte/android/AudioPlayerView;->playIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020162

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/AudioPlayerView;->playIcon:Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02015f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sput-object v8, Lcom/vkontakte/android/AudioPlayerView;->pauseIcon:Landroid/graphics/drawable/Drawable;

    .line 254
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_3

    .line 255
    sget-object v8, Lcom/vkontakte/android/AudioPlayerView;->playIcon:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/DrawableContainer;

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/DrawableContainer;->setEnterFadeDuration(I)V

    .line 256
    sget-object v8, Lcom/vkontakte/android/AudioPlayerView;->playIcon:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/DrawableContainer;

    const/16 v9, 0x15e

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/DrawableContainer;->setExitFadeDuration(I)V

    .line 257
    sget-object v8, Lcom/vkontakte/android/AudioPlayerView;->pauseIcon:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/DrawableContainer;

    const/16 v9, 0xc8

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/DrawableContainer;->setEnterFadeDuration(I)V

    .line 258
    sget-object v8, Lcom/vkontakte/android/AudioPlayerView;->pauseIcon:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/DrawableContainer;

    const/16 v9, 0x15e

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/DrawableContainer;->setExitFadeDuration(I)V

    .line 260
    :cond_3
    return-void
.end method


# virtual methods
.method public addCurrentFile()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.add"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v1, "aid"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 286
    const-string v1, "oid"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$11;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public displayInfo(Lcom/vkontakte/android/AudioFile;)V
    .locals 3
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    .line 310
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    iget v0, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v2, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableBroadcast(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 317
    new-instance v0, Lcom/vkontakte/android/AudioPlayerView$12;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerView$12;-><init>(Lcom/vkontakte/android/AudioPlayerView;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method public enableControlButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 323
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 324
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 325
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 326
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public register()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 263
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 264
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/AudioPlayerService;->registerPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V

    .line 265
    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBuffered(I)V
    .locals 1
    .param p1, "progr"    # I

    .prologue
    .line 343
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 344
    return-void
.end method

.method public setNumber(II)V
    .locals 6
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 329
    const v0, 0x7f060182

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-void
.end method

.method public setPlaying(Z)V
    .locals 2
    .param p1, "playing"    # Z

    .prologue
    .line 333
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerView;->pauseIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void

    .line 333
    :cond_0
    sget-object v1, Lcom/vkontakte/android/AudioPlayerView;->playIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgress(ILjava/lang/String;)V
    .locals 1
    .param p1, "progr"    # I
    .param p2, "sDuration"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 339
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/AudioPlayerService;->unregisterPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 276
    :cond_0
    return-void
.end method
