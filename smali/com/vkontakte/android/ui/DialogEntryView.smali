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

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    .line 55
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    .line 60
    invoke-static {p0}, Lcom/vkontakte/android/Global;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x55000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ec

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholderUser:Landroid/graphics/Bitmap;

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020074

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholderChat:Landroid/graphics/Bitmap;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    const v1, -0xc06020

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    const v1, 0x218fa9c7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterBgPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterBgPaint:Landroid/graphics/Paint;

    const v1, -0x4da18a71

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlineIcon:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlineMobileIcon:Landroid/graphics/drawable/Drawable;

    .line 103
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 256
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

    .line 257
    .local v8, "maxTextW":I
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getHeight()I

    move-result v14

    invoke-direct {v11, v12, v13, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 258
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v12, v12, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

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

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    if-eqz v11, :cond_8

    const v11, -0xb18a5c

    :goto_1
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 264
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

    .line 265
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

    const/high16 v11, 0x42340000    # 45.0f

    :goto_3
    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    .line 266
    .local v9, "offset":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v11, :cond_1

    .line 267
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

    .line 269
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v11, :cond_2

    .line 270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v11, v11, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v11, :cond_d

    .line 271
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

    .line 275
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    if-eqz v11, :cond_10

    .line 276
    if-gtz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_f

    .line 277
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

    .line 281
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 288
    :goto_9
    const/high16 v11, 0x42040000    # 33.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    if-le v9, v11, :cond_4

    .line 289
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

    .line 292
    :cond_4
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 293
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

    .line 294
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

    .line 296
    const/high16 v11, 0x429c0000    # 78.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    sub-int/2addr v8, v11

    .line 297
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

    .line 298
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

    .line 301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v11, v11, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->online:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ui/DialogEntryView;->onlineIcon:Landroid/graphics/drawable/Drawable;

    .line 302
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

    .line 303
    .local v4, "cx":I
    const/high16 v11, 0x41900000    # 18.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    .line 304
    .local v5, "cy":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v4, v11

    .line 305
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v5, v11

    .line 306
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v7, v4, v5, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 307
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
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

    .line 311
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

    .line 312
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget v12, v12, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "counter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 314
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

    .line 315
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

    .line 316
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

    .line 318
    .end local v1    # "counter":Ljava/lang/String;
    .end local v2    # "counterH":I
    .end local v3    # "counterW":I
    :cond_6
    return-void

    .line 256
    .end local v6    # "hasImages":Z
    .end local v8    # "maxTextW":I
    .end local v9    # "offset":I
    .end local v10    # "tbounds":Landroid/graphics/Rect;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 261
    .restart local v8    # "maxTextW":I
    :cond_8
    const/high16 v11, 0x77000000

    goto/16 :goto_1

    .line 264
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 265
    .restart local v6    # "hasImages":Z
    :cond_a
    const/high16 v11, 0x42200000    # 40.0f

    goto/16 :goto_3

    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 267
    .restart local v9    # "offset":I
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 273
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

    .line 277
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 279
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

    .line 285
    :cond_10
    const-string v11, "vk"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "textLayout is null - DAFUQ?! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v13, v13, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 289
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholderUser:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    .line 301
    .restart local v10    # "tbounds":Landroid/graphics/Rect;
    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ui/DialogEntryView;->onlineMobileIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_b

    .line 309
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
    .line 248
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->updateText()V

    .line 251
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 252
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/DialogEntryView;->setMeasuredDimension(II)V

    .line 125
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "n"    # I

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 130
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 134
    return-void

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setData(Lcom/vkontakte/android/DialogEntry;Z)V
    .locals 6
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;
    .param p2, "s"    # Z

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->requestLayout()V

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    .line 108
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    .line 109
    iget-object v0, p1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v0}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0d0171

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->dir:Ljava/lang/String;

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->updateText()V

    .line 114
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 116
    iget-object v0, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    const v1, 0x77359400

    if-le v0, v1, :cond_3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01bb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 121
    :goto_1
    return-void

    .line 111
    :cond_2
    const v0, 0x7f0d016e

    goto :goto_0

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    .locals 32

    .prologue
    .line 138
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

    const/high16 v2, 0x42340000    # 45.0f

    :goto_0
    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    .line 139
    .local v26, "offset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_1

    .line 140
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

    move-result v26

    .line 142
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

    sub-int v5, v2, v26

    .line 143
    .local v5, "tfw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget v2, v2, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    if-lez v2, :cond_2

    .line 144
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v5, v2

    .line 145
    int-to-float v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->counterTextPaint:Landroid/graphics/Paint;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget v7, v7, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v5, v2

    .line 147
    :cond_2
    if-gez v5, :cond_8

    .line 245
    .end local v5    # "tfw":I
    .end local v26    # "offset":I
    :cond_3
    :goto_4
    return-void

    .line 138
    :cond_4
    const/high16 v2, 0x42200000    # 40.0f

    goto/16 :goto_0

    :cond_5
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 140
    .restart local v26    # "offset":I
    :cond_6
    const/16 v26, 0x0

    goto :goto_2

    .line 142
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 148
    .restart local v5    # "tfw":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v0, v2, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 149
    .local v20, "dtext":Ljava/lang/CharSequence;
    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_3

    .line 150
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

    .line 151
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

    move-result-object v20

    .line 153
    :cond_a
    const/16 v16, 0x0

    .line 154
    .local v16, "attachText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/Attachment;

    .line 156
    .local v15, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v15, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_e

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d01ef

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 175
    .end local v15    # "att":Lcom/vkontakte/android/Attachment;
    :cond_b
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_17

    if-eqz v16, :cond_17

    .line 176
    move-object/from16 v20, v16

    .line 177
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    .line 181
    :goto_6
    if-gtz v26, :cond_c

    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    if-nez v2, :cond_1b

    .line 182
    :cond_c
    new-instance v17, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 183
    .local v17, "b":Landroid/text/SpannableStringBuilder;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_7
    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_18

    .line 184
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_d

    add-int/lit8 v2, v21, 0x1

    const-string v4, " "

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 183
    :cond_d
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 158
    .end local v17    # "b":Landroid/text/SpannableStringBuilder;
    .end local v21    # "i":I
    .restart local v15    # "att":Lcom/vkontakte/android/Attachment;
    :cond_e
    instance-of v2, v15, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_f

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0356

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    .line 160
    :cond_f
    instance-of v2, v15, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_10

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0036

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    .line 162
    :cond_10
    instance-of v2, v15, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_13

    .line 163
    move-object v0, v15

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object/from16 v19, v0

    .line 164
    .local v19, "da":Lcom/vkontakte/android/DocumentAttachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    const v2, 0x7f0d0121

    :goto_8
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 165
    goto/16 :goto_5

    .line 164
    :cond_12
    const v2, 0x7f0d00ae

    goto :goto_8

    .line 165
    .end local v19    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_13
    instance-of v2, v15, Lcom/vkontakte/android/PostAttachment;

    if-eqz v2, :cond_14

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0032

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_5

    .line 167
    :cond_14
    instance-of v2, v15, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v2, :cond_15

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d01fb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_5

    .line 169
    :cond_15
    instance-of v2, v15, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v2, :cond_b

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0305

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_5

    .line 172
    .end local v15    # "att":Lcom/vkontakte/android/Attachment;
    :cond_16
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

    .line 173
    const v2, 0x7f070034

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_5

    .line 179
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 241
    .end local v5    # "tfw":I
    .end local v16    # "attachText":Ljava/lang/String;
    .end local v20    # "dtext":Ljava/lang/CharSequence;
    .end local v26    # "offset":I
    :catch_0
    move-exception v31

    .line 242
    .local v31, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
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

    .line 186
    .end local v31    # "x":Ljava/lang/Exception;
    .restart local v5    # "tfw":I
    .restart local v16    # "attachText":Ljava/lang/String;
    .restart local v17    # "b":Landroid/text/SpannableStringBuilder;
    .restart local v20    # "dtext":Ljava/lang/CharSequence;
    .restart local v21    # "i":I
    .restart local v26    # "offset":I
    :cond_18
    move-object/from16 v20, v17

    .line 187
    :try_start_1
    new-instance v2, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float v4, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v20

    invoke-static {v0, v2, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_19

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const-class v7, Lcom/vkontakte/android/LinkSpan;

    invoke-interface {v2, v4, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    .line 190
    .local v29, "spans":[Ljava/lang/Object;
    move-object/from16 v14, v29

    .local v14, "arr$":[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_19

    aget-object v27, v14, v22

    .line 191
    .local v27, "s":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    move-object/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 190
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 194
    .end local v14    # "arr$":[Ljava/lang/Object;
    .end local v22    # "i$":I
    .end local v24    # "len$":I
    .end local v27    # "s":Ljava/lang/Object;
    .end local v29    # "spans":[Ljava/lang/Object;
    :cond_19
    if-nez v26, :cond_1a

    if-eqz v16, :cond_1a

    .line 195
    new-instance v18, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 196
    .local v18, "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 197
    new-instance v30, Landroid/text/SpannableString;

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 198
    .local v30, "ss":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xb18a5c

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {v30 .. v30}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 199
    const-string v2, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 200
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 201
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 203
    .end local v18    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v30    # "ss":Landroid/text/SpannableString;
    :cond_1a
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

    goto/16 :goto_4

    .line 205
    .end local v17    # "b":Landroid/text/SpannableStringBuilder;
    .end local v21    # "i":I
    .restart local v5    # "tfw":I
    :cond_1b
    new-instance v18, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 206
    .restart local v18    # "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 207
    const/16 v23, 0x0

    .local v23, "lc":I
    const/16 v28, 0x0

    .line 208
    .local v28, "seq":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_a
    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_1f

    .line 209
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_1e

    .line 210
    if-lez v23, :cond_1c

    add-int/lit8 v4, v21, 0x1

    if-nez v28, :cond_1d

    const-string v2, " "

    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 211
    :cond_1c
    add-int/lit8 v23, v23, 0x1

    .line 212
    add-int/lit8 v28, v28, 0x1

    .line 208
    :goto_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 210
    :cond_1d
    const-string v2, ""

    goto :goto_b

    .line 214
    :cond_1e
    const/16 v28, 0x0

    goto :goto_c

    .line 217
    :cond_1f
    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const-class v6, Lcom/vkontakte/android/LinkSpan;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    .line 218
    .restart local v29    # "spans":[Ljava/lang/Object;
    move-object/from16 v14, v29

    .restart local v14    # "arr$":[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v24, v0

    .restart local v24    # "len$":I
    const/16 v22, 0x0

    .restart local v22    # "i$":I
    :goto_d
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_20

    aget-object v27, v14, v22

    .line 219
    .restart local v27    # "s":Ljava/lang/Object;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v22, v22, 0x1

    goto :goto_d

    .line 221
    .end local v27    # "s":Ljava/lang/Object;
    :cond_20
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 228
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

    .line 229
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 230
    .local v3, "builder2":Landroid/text/SpannableStringBuilder;
    const/16 v21, 0x0

    :goto_e
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_22

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v25

    .line 232
    .local v25, "line":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_21

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

    move-object/from16 v0, v25

    invoke-static {v0, v2, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v25

    .line 233
    :cond_21
    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 230
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 236
    .end local v25    # "line":Ljava/lang/CharSequence;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_23

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 237
    const-string v2, "..."

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 239
    :cond_23
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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
