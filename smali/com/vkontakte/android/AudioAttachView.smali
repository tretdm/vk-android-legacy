.class public Lcom/vkontakte/android/AudioAttachView;
.super Landroid/view/ViewGroup;
.source "AudioAttachView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;
.implements Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final AUDIO_ATTACH_VIEW_ID:I = 0xa


# instance fields
.field artist:Ljava/lang/String;

.field private canUpdateProgress:Z

.field duration:I

.field id:I

.field isPlaying:Z

.field isPressed:Z

.field oid:I

.field private playButton:Landroid/widget/ImageView;

.field public playlist:[Lcom/vkontakte/android/AudioFile;

.field public playlistPos:I

.field public referer:Ljava/lang/String;

.field private seekbar:Landroid/widget/SeekBar;

.field private text1:Landroid/widget/TextView;

.field private text2:Landroid/widget/TextView;

.field private timeText:Landroid/widget/TextView;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 29
    iput v1, p0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioAttachView;->canUpdateProgress:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->referer:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/vkontakte/android/AudioAttachView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioAttachView;->isPressed:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    .line 29
    iput v1, p0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioAttachView;->canUpdateProgress:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->referer:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/vkontakte/android/AudioAttachView;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioAttachView;Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioAttachView;->canUpdateProgress:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioAttachView;I)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/AudioAttachView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v6, 0x41300000    # 11.0f

    const/4 v5, 0x1

    .line 48
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    .line 49
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 51
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 54
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 56
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 58
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 59
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 62
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 64
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 68
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 70
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    .line 71
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    const v3, 0x7f020079

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 74
    new-instance v2, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    .line 75
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 76
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02024b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v2, v3, v8, v4, v8}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 79
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMinimumHeight(I)V

    .line 80
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 82
    :try_start_0
    const-class v2, Landroid/widget/ProgressBar;

    const-string v3, "mMaxHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 83
    .local v0, "fld":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    const-class v2, Landroid/widget/ProgressBar;

    const-string v3, "mMinHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "fld":Ljava/lang/reflect/Field;
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioAttachView;->addView(Landroid/view/View;)V

    .line 91
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;

    invoke-direct {v3}, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 95
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 97
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private replaceIcon(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 104
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->addAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 105
    return-void
.end method

.method public onBufferProgressChanged(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "buffered"    # I

    .prologue
    .line 277
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$5;

    invoke-direct {v0, p0, p3}, Lcom/vkontakte/android/AudioAttachView$5;-><init>(Lcom/vkontakte/android/AudioAttachView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 180
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_1

    .line 181
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v1, v2, :cond_1

    .line 182
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v1, v2, :cond_1

    .line 184
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v8, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x3

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 219
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v1, v2, :cond_2

    .line 200
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v1, v1, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-nez v1, :cond_0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    if-nez v1, :cond_3

    .line 202
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    invoke-virtual {v8, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->artist:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->title:Ljava/lang/String;

    iget v5, p0, Lcom/vkontakte/android/AudioAttachView;->duration:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    const-string v1, "file"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    const-string v1, "referer"

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->referer:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 209
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_4

    .line 211
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v1, "list"

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    const-string v1, "position"

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v1, "referer"

    iget-object v2, p0, Lcom/vkontakte/android/AudioAttachView;->referer:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 209
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    aget-object v7, v2, v1

    .line 210
    .local v7, "file":Lcom/vkontakte/android/AudioFile;
    iput-boolean v4, v7, Lcom/vkontakte/android/AudioFile;->fromAttachment:Z

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 109
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->removeAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V

    .line 110
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->removeProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V

    .line 111
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 284
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    .line 285
    .local v0, "pad":I
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v3, v0

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 286
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x0

    sub-int v4, p4, p2

    const/high16 v5, 0x41b80000    # 23.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 287
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v2, v0

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v4, p4, p2

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    const/high16 v5, 0x42280000    # 42.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 288
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    .line 289
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    sub-int v2, p4, p2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v4, p4, p2

    sub-int/2addr v4, v0

    const/high16 v5, 0x42280000    # 42.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 290
    iget-object v1, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v2, v0

    sub-int v3, p5, p3

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p4, p2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    sub-int v5, p5, p3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/SeekBar;->layout(IIII)V

    .line 291
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 295
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v1, :cond_0

    move v1, v8

    .line 301
    :goto_0
    return v1

    .line 297
    :cond_0
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    iget v2, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioAttachView;->artist:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/AudioAttachView;->title:Ljava/lang/String;

    iget v5, p0, Lcom/vkontakte/android/AudioAttachView;->duration:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/AudioFile;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 298
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/AudioPlayerService;->enqueue(Lcom/vkontakte/android/AudioFile;)Z

    move-result v7

    .line 299
    .local v7, "res":Z
    if-nez v7, :cond_1

    move v1, v8

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802f2

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 301
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 114
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    .line 115
    .local v0, "pad":I
    new-instance v1, Landroid/graphics/Rect;

    const/high16 v2, 0x422c0000    # 43.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 116
    .local v1, "pbRect":Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/AudioAttachView;->setMeasuredDimension(II)V

    .line 117
    return-void
.end method

.method public onPlayProgressChanged(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "played"    # I

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioAttachView;->canUpdateProgress:Z

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$4;

    invoke-direct {v0, p0, p3}, Lcom/vkontakte/android/AudioAttachView$4;-><init>(Lcom/vkontakte/android/AudioAttachView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    .line 272
    :cond_0
    return-void
.end method

.method public onPlayStateChanged(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "state"    # I

    .prologue
    .line 245
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkontakte/android/AudioAttachView$3;-><init>(Lcom/vkontakte/android/AudioAttachView;III)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_aid"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->text1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->text2:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->timeText:Landroid/widget/TextView;

    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 v3, p5, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    rem-int/lit8 v3, p5, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 127
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->removeProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V

    .line 132
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/AudioAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0, p0}, Lcom/vkontakte/android/AudioAttachView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 137
    iput p3, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    .line 138
    iput p4, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    .line 139
    iput-object p1, p0, Lcom/vkontakte/android/AudioAttachView;->artist:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/vkontakte/android/AudioAttachView;->title:Ljava/lang/String;

    .line 141
    iput p5, p0, Lcom/vkontakte/android/AudioAttachView;->duration:I

    .line 142
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView;->oid:I

    if-ne v0, v1, :cond_1

    .line 144
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/AudioAttachView;->id:I

    if-ne v0, v1, :cond_1

    .line 145
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iput-boolean v5, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    .line 147
    const v0, 0x7f020076

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->addProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioAttachView;->seekbar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/vkontakte/android/AudioAttachView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioAttachView$1;-><init>(Lcom/vkontakte/android/AudioAttachView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 176
    return-void

    .line 154
    :cond_1
    iput-boolean v4, p0, Lcom/vkontakte/android/AudioAttachView;->isPlaying:Z

    .line 155
    const v0, 0x7f020079

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->replaceIcon(I)V

    goto :goto_0
.end method

.method public setPlaying(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioAttachView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Lcom/vkontakte/android/AudioAttachView$2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioAttachView$2;-><init>(Lcom/vkontakte/android/AudioAttachView;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioAttachView;->post(Ljava/lang/Runnable;)Z

    .line 236
    if-eqz p1, :cond_1

    .line 237
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->addProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {p0}, Lcom/vkontakte/android/AudioPlayerService;->removeProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V

    goto :goto_0
.end method
