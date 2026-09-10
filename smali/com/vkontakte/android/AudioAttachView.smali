.class public Lcom/vkontakte/android/AudioAttachView;
.super Landroid/view/ViewGroup;
.source "AudioAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;
.implements Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;


# static fields
.field public static final AUDIO_ATTACH_VIEW_ID:I = 0xa


# instance fields
.field artist:Ljava/lang/String;

.field private canUpdateProgress:Z

.field duration:I

.field eToReturn:Lcom/vkontakte/android/NewsEntry;

.field id:I

.field intentToReturn:Landroid/content/Intent;

.field isPlaying:Z

.field isPressed:Z

.field oid:I

.field private padding:I

.field private playButton:Landroid/widget/ImageView;

.field public playlist:[Lcom/vkontakte/android/AudioFile;

.field public playlistPos:I

.field private seekbar:Landroid/widget/ProgressBar;

.field private text1:Landroid/widget/TextView;

.field private text2:Landroid/widget/TextView;

.field private text3:Landroid/widget/TextView;

.field private timeText:Landroid/widget/TextView;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 27
    iput v1, p0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioAttachView;->canUpdateProgress:Z

    .line 51
    invoke-direct {p0}, Lcom/vkontakte/android/AudioAttachView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 27
    iput v1, p0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioAttachView;->canUpdateProgress:Z

    .line 56
    invoke-direct {p0}, Lcom/vkontakte/android/AudioAttachView;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioAttachView;I)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const v7, 0x7f080009

    const/16 v6, 0x8

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "c":Landroid/content/Context;
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    .line 62
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    .line 63
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    .line 64
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    .line 65
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    .line 66
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    .line 68
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    sget-object v2, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 81
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    const v1, 0x7f020001

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioAttachView;->setBackgroundResource(I)V

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 86
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 87
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 89
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 92
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 93
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 95
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 96
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 102
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 106
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method private replaceIcon(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 239
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 240
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getDrawableState()[I

    move-result-object v1

    .line 241
    .local v1, "s":[I
    const-string v2, ""

    .line 242
    .local v2, "t":Ljava/lang/String;
    iput-boolean v5, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 244
    iget-boolean v3, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    if-eqz v3, :cond_5

    .line 245
    iget-boolean v3, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    if-eqz v3, :cond_3

    const v3, 0x7f02005d

    :goto_1
    invoke-direct {p0, v3}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    .line 246
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 247
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioAttachView;->setBackgroundResource(I)V

    .line 251
    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    :goto_3
    return-void

    .line 243
    :cond_0
    aget v3, v1, v0

    const v4, 0x10100a7

    if-eq v3, v4, :cond_1

    aget v3, v1, v0

    const v4, 0x10100a1

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_3
    const v3, 0x7f020061

    goto :goto_1

    .line 249
    :cond_4
    const v3, 0x7f020001

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioAttachView;->setBackgroundResource(I)V

    goto :goto_2

    .line 253
    :cond_5
    iget-boolean v3, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    if-eqz v3, :cond_6

    const v3, 0x7f02005a

    :goto_4
    invoke-direct {p0, v3}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    .line 254
    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 253
    :cond_6
    const v3, 0x7f02005e

    goto :goto_4
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 115
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->addAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 116
    return-void
.end method

.method public onBufferProgressChanged(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "buffered"    # I

    .prologue
    .line 328
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$6;

    invoke-direct {v0, p0, p3}, Lcom/vkontakte/android/AudioAttachView$6;-><init>(Lcom/vkontakte/android/AudioAttachView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_1

    .line 197
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v1, v2, :cond_1

    .line 198
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v1, v2, :cond_1

    .line 200
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x3

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 231
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v1, v2, :cond_2

    .line 216
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v1, v1, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-nez v1, :cond_0

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    if-nez v1, :cond_3

    .line 218
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->artist:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->title:Ljava/lang/String;

    iget v5, p0, Lcom/vkontakte/android/AudioAttachView;->duration:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    const-string v1, "file"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 224
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v1, "list"

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    const-string v1, "position"

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 122
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->removeAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 123
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->removeProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V

    .line 124
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 335
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 336
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 337
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 338
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getWidth()I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 339
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 340
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 341
    .local v0, "y":I
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 342
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    add-int/2addr v2, v3

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 343
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    add-int/2addr v2, v3

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 344
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 345
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    add-int/2addr v3, v4

    const/high16 v4, 0x422c0000    # 43.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 346
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/AudioAttachView;->padding:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 347
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/AudioAttachView;->setMeasuredDimension(II)V

    .line 128
    return-void
.end method

.method public onPlayProgressChanged(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "played"    # I

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioAttachView;->canUpdateProgress:Z

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$5;

    invoke-direct {v0, p0, p3}, Lcom/vkontakte/android/AudioAttachView$5;-><init>(Lcom/vkontakte/android/AudioAttachView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    .line 323
    :cond_0
    return-void
.end method

.method public onPlayStateChanged(III)V
    .locals 8
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const-wide/16 v5, 0x12c

    const/4 v2, 0x0

    .line 277
    iget v1, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne p1, v1, :cond_4

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne p2, v1, :cond_4

    .line 278
    if-eq p3, v3, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    .line 279
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 283
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 284
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v7, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 287
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 288
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    new-instance v4, Lcom/vkontakte/android/AudioAttachView$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/AudioAttachView$3;-><init>(Lcom/vkontakte/android/AudioAttachView;)V

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 296
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    const/4 v4, 0x3

    if-ne p3, v4, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 314
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 278
    goto :goto_0

    :cond_3
    move v3, v2

    .line 296
    goto :goto_1

    .line 297
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 298
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 299
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 301
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 302
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-direct {v0, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 303
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 304
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 306
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkontakte/android/AudioAttachView$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioAttachView$4;-><init>(Lcom/vkontakte/android/AudioAttachView;)V

    invoke-virtual {v1, v2, v5, v6}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 9
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_aid"    # I
    .param p5, "duration"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    .line 133
    .local v0, "editable":Landroid/text/Editable;
    new-instance v1, Lcom/vkontakte/android/AudioAttachView$1;

    invoke-direct {v1, p0, v7}, Lcom/vkontakte/android/AudioAttachView$1;-><init>(Lcom/vkontakte/android/AudioAttachView;I)V

    .line 142
    .local v1, "ss":Landroid/text/style/StyleSpan;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, v1, v6, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 145
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, p5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit8 v5, p5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/AudioAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput p3, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    .line 153
    iput p4, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    .line 154
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView;->artist:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/vkontakte/android/AudioAttachView;->title:Ljava/lang/String;

    .line 156
    iput p5, p0, Lcom/vkontakte/android/AudioAttachView;->duration:I

    .line 157
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_1

    .line 158
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v2, v3, :cond_1

    .line 159
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v2, v3, :cond_1

    .line 160
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iput-boolean v7, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    .line 162
    const v2, 0x7f02005a

    invoke-direct {p0, v2}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->addProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V

    .line 167
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text3:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 192
    :cond_1
    return-void
.end method

.method public setPlaying(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioAttachView$2;-><init>(Lcom/vkontakte/android/AudioAttachView;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    .line 268
    if-eqz p1, :cond_1

    .line 269
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->addProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->removeProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V

    goto :goto_0
.end method
