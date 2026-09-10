.class public Lcom/vkontakte/android/ui/DialogEntryView;
.super Landroid/view/View;
.source "DialogEntryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;
    }
.end annotation


# instance fields
.field private attachIcon:Landroid/graphics/drawable/Drawable;

.field private counterBgPaint:Landroid/graphics/Paint;

.field private counterTextPaint:Landroid/graphics/Paint;

.field private dir:Ljava/lang/String;

.field private dirPaint:Landroid/graphics/Paint;

.field private entry:Lcom/vkontakte/android/DialogEntry;

.field private isAccelerated:Z

.field private lastPressed:J

.field private onlineIcon:Landroid/graphics/drawable/Drawable;

.field private onlineMobileIcon:Landroid/graphics/drawable/Drawable;

.field private onlinePaint:Landroid/graphics/Paint;

.field private overPaint:Landroid/graphics/Paint;

.field private photo:Landroid/graphics/Bitmap;

.field private photo2:Landroid/graphics/Bitmap;

.field private placeholderChat:Landroid/graphics/Bitmap;

.field private placeholderUser:Landroid/graphics/Bitmap;

.field private search:Z

.field private text:Ljava/lang/CharSequence;

.field private textIsAttach:Z

.field private textLayout:Landroid/text/Layout;

.field private textPaint:Landroid/graphics/Paint;

.field private time:Ljava/lang/String;

.field private timePaint:Landroid/graphics/Paint;

.field private titlePaint:Landroid/graphics/Paint;

.field private unreadPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v2, 0x1

    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    .line 57
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    .line 62
    invoke-static {p0}, Lcom/vkontakte/android/Global;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x55000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02027c

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholderUser:Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e3

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholderChat:Landroid/graphics/Bitmap;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    const v1, -0xc06020

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    const v1, 0x218fa9c7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterBgPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterBgPaint:Landroid/graphics/Paint;

    const v1, -0x4da18a71

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlineIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlineMobileIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    sub-int/2addr v11, v12

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    sub-int/2addr v11, v12

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    sub-int v12, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->uid:I

    const v13, 0x77359400

    if-ge v11, v13, :cond_7

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    :goto_0
    sub-int v8, v12, v11

    .line 259
    .local v8, "maxTextW":I
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getHeight()I

    move-result v14

    invoke-direct {v11, v12, v13, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 260
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v12, v12, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x429c0000    # 78.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x40a00000    # 5.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    if-eqz v11, :cond_8

    const v11, -0xb18a5c

    :goto_1
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 266
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    instance-of v11, v11, Landroid/text/Spannable;

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spannable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const-class v14, Landroid/text/style/ImageSpan;

    invoke-interface {v11, v12, v13, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ImageSpan;

    array-length v11, v11

    if-lez v11, :cond_9

    const/4 v6, 0x1

    .line 267
    .local v6, "hasImages":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->out:Z

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->uid:I

    const v12, 0x77359400

    if-le v11, v12, :cond_b

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v11, :cond_a

    const/16 v11, 0x2d

    :goto_3
    int-to-float v11, v11

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    .line 268
    .local v9, "offset":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v11, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v11, :cond_c

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    .line 271
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v11, :cond_2

    .line 272
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v11, :cond_d

    .line 273
    new-instance v11, Landroid/graphics/RectF;

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    sub-int v12, v9, v12

    const/high16 v13, 0x429c0000    # 78.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x420c0000    # 35.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v14

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x420c0000    # 35.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    const/high16 v16, 0x42040000    # 33.0f

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v16

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 277
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    if-eqz v11, :cond_10

    .line 278
    if-gtz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_f

    .line 279
    :cond_3
    const/high16 v11, 0x429c0000    # 78.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    add-int/2addr v11, v13

    :goto_7
    add-int/2addr v11, v12

    add-int/2addr v11, v9

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v14}, Landroid/text/Layout;->getLineCount()I

    move-result v14

    div-int/2addr v13, v14

    int-to-float v13, v13

    add-float/2addr v12, v13

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 290
    :goto_9
    const/high16 v11, 0x42040000    # 33.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    if-le v9, v11, :cond_4

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    :goto_a
    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/Rect;

    const/high16 v14, 0x429c0000    # 78.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    const/high16 v15, 0x420c0000    # 35.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    const/high16 v16, 0x429c0000    # 78.0f

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v16

    const/high16 v17, 0x42040000    # 33.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    add-int v16, v16, v17

    const/high16 v17, 0x420c0000    # 35.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    const/high16 v18, 0x42040000    # 33.0f

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v18

    add-int v17, v17, v18

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 294
    :cond_4
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 295
    .local v10, "tbounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    const/high16 v11, 0x429c0000    # 78.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    sub-int/2addr v8, v11

    .line 299
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->uid:I

    const v12, 0x77359400

    if-ge v11, v12, :cond_5

    .line 300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v12, v12, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v14, v14, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v14, v14, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v12, v13, v14, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->online:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ui/DialogEntryView;->onlineIcon:Landroid/graphics/drawable/Drawable;

    .line 304
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    :goto_b
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/high16 v12, 0x42b00000    # 88.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    add-int v4, v11, v12

    .line 305
    .local v4, "cx":I
    const/high16 v11, 0x41900000    # 18.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    .line 306
    .local v5, "cy":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v4, v11

    .line 307
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v5, v11

    .line 308
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v7, v4, v5, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 309
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    .end local v4    # "cx":I
    .end local v5    # "cy":I
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    :goto_c
    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/Rect;

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    const/high16 v16, 0x42880000    # 68.0f

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v16

    const/high16 v17, 0x42880000    # 68.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget v11, v11, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    if-lez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->out:Z

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v11, :cond_6

    .line 314
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget v12, v12, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "counter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 316
    .local v3, "counterW":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 317
    .local v2, "counterH":I
    new-instance v11, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v12

    sub-int/2addr v12, v3

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v2

    const/high16 v14, 0x41300000    # 11.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    sub-int/2addr v13, v14

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v14

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getHeight()I

    move-result v15

    const/high16 v16, 0x41300000    # 11.0f

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->counterBgPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v11

    sub-int/2addr v11, v3

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    sub-int/2addr v11, v12

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x41300000    # 11.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    .end local v1    # "counter":Ljava/lang/String;
    .end local v2    # "counterH":I
    .end local v3    # "counterW":I
    :cond_6
    return-void

    .line 258
    .end local v6    # "hasImages":Z
    .end local v8    # "maxTextW":I
    .end local v9    # "offset":I
    .end local v10    # "tbounds":Landroid/graphics/Rect;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 263
    .restart local v8    # "maxTextW":I
    :cond_8
    const/high16 v11, 0x77000000

    goto/16 :goto_1

    .line 266
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 267
    .restart local v6    # "hasImages":Z
    :cond_a
    const/16 v11, 0x28

    goto/16 :goto_3

    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 269
    .restart local v9    # "offset":I
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 275
    :cond_d
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 279
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 281
    :cond_f
    const/high16 v11, 0x429c0000    # 78.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v14}, Landroid/text/Layout;->getLineCount()I

    move-result v14

    div-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_8

    .line 287
    :cond_10
    const-string v11, "vk"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "textLayout is null - DAFUQ?! "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v13, v13, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 291
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholderUser:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    .line 303
    .restart local v10    # "tbounds":Landroid/graphics/Rect;
    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ui/DialogEntryView;->onlineMobileIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_b

    .line 311
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->uid:I

    const v12, 0x77359400

    if-ge v11, v12, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholderUser:Landroid/graphics/Bitmap;

    goto/16 :goto_c

    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholderChat:Landroid/graphics/Bitmap;

    goto/16 :goto_c
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 250
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->updateText()V

    .line 253
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 254
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/DialogEntryView;->setMeasuredDimension(II)V

    .line 127
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "n"    # I

    .prologue
    .line 131
    if-nez p2, :cond_0

    .line 132
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 136
    return-void

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setData(Lcom/vkontakte/android/DialogEntry;Z)V
    .locals 6
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;
    .param p2, "s"    # Z

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->requestLayout()V

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    .line 110
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    .line 111
    iget-object v0, p1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v0}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0800bc

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->dir:Ljava/lang/String;

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->updateText()V

    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 118
    iget-object v0, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    const v1, 0x77359400

    if-le v0, v1, :cond_3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801d2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/DialogEntryView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    :goto_1
    return-void

    .line 113
    :cond_2
    const v0, 0x7f0800bd

    goto :goto_0

    .line 121
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v2, v2, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/DialogEntryView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public updateText()V
    .locals 29

    .prologue
    .line 140
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->out:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    const v4, 0x77359400

    if-le v2, v4, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v2, :cond_4

    const/16 v2, 0x2d

    :goto_0
    int-to-float v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    .line 141
    .local v23, "offset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v2, :cond_6

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    .line 144
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v2

    const/high16 v4, 0x42a60000    # 83.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int v4, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    add-int/2addr v2, v6

    :goto_3
    sub-int v2, v4, v2

    sub-int v5, v2, v23

    .line 145
    .local v5, "tfw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget v2, v2, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    if-lez v2, :cond_2

    .line 146
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v5, v2

    .line 147
    int-to-float v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget v7, v7, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v5, v2

    .line 149
    :cond_2
    if-gez v5, :cond_8

    .line 247
    .end local v5    # "tfw":I
    .end local v23    # "offset":I
    :cond_3
    :goto_4
    return-void

    .line 140
    :cond_4
    const/16 v2, 0x28

    goto :goto_0

    :cond_5
    const/16 v23, 0x0

    goto :goto_1

    .line 142
    .restart local v23    # "offset":I
    :cond_6
    const/16 v23, 0x0

    goto :goto_2

    .line 144
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 150
    .restart local v5    # "tfw":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v0, v2, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    .line 151
    .local v19, "dtext":Ljava/lang/CharSequence;
    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_3

    .line 152
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Lcom/vkontakte/android/data/Friends;->getFromAll(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v6, v6, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v6, v6, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_user_name_acc"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/vkontakte/android/Message;->getServiceMessageText(Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 155
    :cond_a
    const/4 v15, 0x0

    .line 156
    .local v15, "attachText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Attachment;

    .line 158
    .local v14, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v14, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_f

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08002e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 177
    .end local v14    # "att":Lcom/vkontakte/android/Attachment;
    :cond_b
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_18

    if-eqz v15, :cond_18

    .line 178
    move-object/from16 v19, v15

    .line 179
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    .line 183
    :goto_6
    if-gtz v23, :cond_c

    if-eqz v15, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    if-nez v2, :cond_1c

    .line 184
    :cond_c
    new-instance v16, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 185
    .local v16, "b":Landroid/text/SpannableStringBuilder;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_19

    .line 188
    move-object/from16 v19, v16

    .line 189
    new-instance v2, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float v4, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v19

    invoke-static {v0, v2, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_d

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {v2, v4, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    .line 192
    .local v26, "spans":[Ljava/lang/Object;
    move-object/from16 v0, v26

    array-length v6, v0

    const/4 v2, 0x0

    move v4, v2

    :goto_8
    if-lt v4, v6, :cond_1b

    .line 196
    .end local v26    # "spans":[Ljava/lang/Object;
    :cond_d
    if-nez v23, :cond_e

    if-eqz v15, :cond_e

    .line 197
    new-instance v17, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 198
    .local v17, "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 199
    new-instance v27, Landroid/text/SpannableString;

    move-object/from16 v0, v27

    invoke-direct {v0, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 200
    .local v27, "ss":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xb18a5c

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 201
    const-string v2, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 202
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 203
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 205
    .end local v17    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v27    # "ss":Landroid/text/SpannableString;
    :cond_e
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    new-instance v4, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v5

    .end local v5    # "tfw":I
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 243
    .end local v15    # "attachText":Ljava/lang/String;
    .end local v16    # "b":Landroid/text/SpannableStringBuilder;
    .end local v19    # "dtext":Ljava/lang/CharSequence;
    .end local v20    # "i":I
    .end local v23    # "offset":I
    :catch_0
    move-exception v28

    .line 244
    .local v28, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    new-instance v6, Landroid/text/StaticLayout;

    const-string v7, ""

    new-instance v8, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v8, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/16 v9, 0x14

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    goto/16 :goto_4

    .line 160
    .end local v28    # "x":Ljava/lang/Exception;
    .restart local v5    # "tfw":I
    .restart local v14    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v15    # "attachText":Ljava/lang/String;
    .restart local v19    # "dtext":Ljava/lang/CharSequence;
    .restart local v23    # "offset":I
    :cond_f
    :try_start_1
    instance-of v2, v14, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_10

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080030

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 162
    goto/16 :goto_5

    :cond_10
    instance-of v2, v14, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_11

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08002f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 164
    goto/16 :goto_5

    :cond_11
    instance-of v2, v14, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_14

    .line 165
    move-object v0, v14

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v18, v0

    .line 166
    .local v18, "da":Lcom/vkontakte/android/DocumentAttachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-eqz v2, :cond_12

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    const v2, 0x7f0801d3

    :goto_9
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 167
    goto/16 :goto_5

    .line 166
    :cond_13
    const v2, 0x7f080031

    goto :goto_9

    .line 167
    .end local v18    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_14
    instance-of v2, v14, Lcom/vkontakte/android/PostAttachment;

    if-eqz v2, :cond_15

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080150

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 169
    goto/16 :goto_5

    :cond_15
    instance-of v2, v14, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v2, :cond_16

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0800fb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 171
    goto/16 :goto_5

    :cond_16
    instance-of v2, v14, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v2, :cond_b

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08033c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 174
    goto/16 :goto_5

    .end local v14    # "att":Lcom/vkontakte/android/Attachment;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 175
    const v2, 0x7f0d001d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    .line 181
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    goto/16 :goto_6

    .line 186
    .restart local v16    # "b":Landroid/text/SpannableStringBuilder;
    .restart local v20    # "i":I
    :cond_19
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_1a

    add-int/lit8 v2, v20, 0x1

    const-string v4, " "

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 185
    :cond_1a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 192
    .restart local v26    # "spans":[Ljava/lang/Object;
    :cond_1b
    aget-object v24, v26, v4

    .line 193
    .local v24, "s":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 192
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_8

    .line 207
    .end local v16    # "b":Landroid/text/SpannableStringBuilder;
    .end local v20    # "i":I
    .end local v24    # "s":Ljava/lang/Object;
    .end local v26    # "spans":[Ljava/lang/Object;
    :cond_1c
    new-instance v17, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 208
    .restart local v17    # "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 209
    const/16 v21, 0x0

    .local v21, "lc":I
    const/16 v25, 0x0

    .line 210
    .local v25, "seq":I
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_a
    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_1e

    .line 219
    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const-class v6, Landroid/text/style/URLSpan;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    .line 220
    .restart local v26    # "spans":[Ljava/lang/Object;
    move-object/from16 v0, v26

    array-length v4, v0

    const/4 v2, 0x0

    :goto_b
    if-lt v2, v4, :cond_22

    .line 223
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 230
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    new-instance v4, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    .line 231
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 232
    .local v3, "builder2":Landroid/text/SpannableStringBuilder;
    const/16 v20, 0x0

    :goto_c
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_23

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_1d

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 239
    const-string v2, "..."

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 241
    :cond_1d
    new-instance v2, Landroid/text/StaticLayout;

    new-instance v4, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    goto/16 :goto_4

    .line 211
    .end local v3    # "builder2":Landroid/text/SpannableStringBuilder;
    .end local v26    # "spans":[Ljava/lang/Object;
    :cond_1e
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_21

    .line 212
    if-lez v21, :cond_1f

    add-int/lit8 v4, v20, 0x1

    if-nez v25, :cond_20

    const-string v2, " "

    :goto_d
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 213
    :cond_1f
    add-int/lit8 v21, v21, 0x1

    .line 214
    add-int/lit8 v25, v25, 0x1

    .line 210
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_a

    .line 212
    :cond_20
    const-string v2, ""

    goto :goto_d

    .line 216
    :cond_21
    const/16 v25, 0x0

    goto :goto_e

    .line 220
    .restart local v26    # "spans":[Ljava/lang/Object;
    :cond_22
    aget-object v24, v26, v2

    .line 221
    .restart local v24    # "s":Ljava/lang/Object;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 233
    .end local v24    # "s":Ljava/lang/Object;
    .restart local v3    # "builder2":Landroid/text/SpannableStringBuilder;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 234
    .local v22, "line":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_24

    new-instance v2, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int v4, v5, v4

    int-to-float v4, v4

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v22

    invoke-static {v0, v2, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 235
    :cond_24
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_c
.end method
