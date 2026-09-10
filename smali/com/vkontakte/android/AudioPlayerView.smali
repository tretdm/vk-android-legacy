.class public Lcom/vkontakte/android/AudioPlayerView;
.super Landroid/widget/LinearLayout;
.source "AudioPlayerView.java"


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
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 35
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 40
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerView;->init()V

    .line 41
    return-void
.end method

.method private init()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, -0x2

    const-wide/high16 v11, 0x4028000000000000L    # 12.0

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 44
    invoke-virtual {p0, v14}, Lcom/vkontakte/android/AudioPlayerView;->setOrientation(I)V

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03004d

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/AudioPlayerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 46
    .local v4, "titleBar":Landroid/view/View;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v5, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerView;->addView(Landroid/view/View;)V

    .line 48
    const v5, 0x7f060197

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030009

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/AudioPlayerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "aview":Landroid/view/View;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->addView(Landroid/view/View;)V

    .line 54
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    .line 55
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    const v6, 0x7f0200c9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v6, v6

    mul-double/2addr v6, v11

    double-to-int v6, v6

    sget v7, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v7, v7

    mul-double/2addr v7, v11

    double-to-int v7, v7

    invoke-virtual {v5, v6, v10, v7, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 59
    const v5, 0x7f060199

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    new-instance v6, Lcom/vkontakte/android/AudioPlayerView$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerView$1;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "backBtn":Landroid/widget/ImageView;
    const v5, 0x7f0200bd

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v2, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 74
    const v5, 0x7f060198

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 75
    new-instance v5, Lcom/vkontakte/android/AudioPlayerView$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/AudioPlayerView$2;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 87
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, "btnMenu":Landroid/widget/ImageView;
    const v5, 0x7f0200c3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v2, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .restart local v2    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 91
    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 92
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 93
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v5, v5

    mul-double/2addr v5, v11

    double-to-int v5, v5

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v6, v6

    mul-double/2addr v6, v11

    double-to-int v6, v6

    invoke-virtual {v3, v5, v10, v6, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 95
    new-instance v5, Lcom/vkontakte/android/AudioPlayerView$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/AudioPlayerView$3;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v5, 0x7f060199

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    .end local v3    # "btnMenu":Landroid/widget/ImageView;
    :cond_0
    const v5, 0x7f06002b

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/AudioPlayerView$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerView$4;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v5, 0x7f06002c

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/AudioPlayerView$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerView$5;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v5, 0x7f06002a

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/AudioPlayerView$6;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerView$6;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v5, 0x7f060026

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    new-instance v6, Lcom/vkontakte/android/AudioPlayerView$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerView$7;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 185
    const v5, 0x7f060197

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const v5, 0x7f060023

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v5, 0x7f060024

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v5, :cond_1

    .line 190
    const v5, 0x7f06002d

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-object v6, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->isLoop()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 191
    const v5, 0x7f06002f

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-object v6, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->isRandom()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 194
    :cond_1
    const v5, 0x7f06002d

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/AudioPlayerView$8;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerView$8;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v5, 0x7f06002f

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/AudioPlayerView$9;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerView$9;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v5, 0x7f06002e

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/AudioPlayerView$10;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerView$10;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method


# virtual methods
.method public addCurrentFile()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.add"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 255
    const-string v1, "aid"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 256
    const-string v1, "oid"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/vkontakte/android/AudioPlayerView$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerView$11;-><init>(Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public displayInfo(Lcom/vkontakte/android/AudioFile;)V
    .locals 3
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerView;->file:Lcom/vkontakte/android/AudioFile;

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerView;->addBtn:Landroid/widget/ImageView;

    iget v0, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v2, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableBroadcast(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 287
    new-instance v0, Lcom/vkontakte/android/AudioPlayerView$12;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerView$12;-><init>(Lcom/vkontakte/android/AudioPlayerView;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

.method public enableControlButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 293
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 294
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 295
    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public register()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 233
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 234
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/AudioPlayerService;->registerPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V

    .line 235
    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 238
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
    .line 313
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 314
    return-void
.end method

.method public setNumber(II)V
    .locals 6
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 299
    const v0, 0x7f060197

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007e

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

    .line 300
    return-void
.end method

.method public setPlaying(Z)V
    .locals 2
    .param p1, "playing"    # Z

    .prologue
    .line 303
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f020147

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    return-void

    .line 303
    :cond_0
    const v1, 0x7f02014a

    goto :goto_0
.end method

.method public setProgress(ILjava/lang/String;)V
    .locals 1
    .param p1, "progr"    # I
    .param p2, "sDuration"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->canUpdateProgress:Z

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 309
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/AudioPlayerService;->unregisterPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    .line 246
    :cond_0
    return-void
.end method
