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

.field private clearPaint:Landroid/graphics/Paint;

.field private dir:Ljava/lang/String;

.field private dirPaint:Landroid/graphics/Paint;

.field private entry:Lcom/vkontakte/android/DialogEntry;

.field private isAccelerated:Z

.field private lastPressed:J

.field private onlinePaint:Landroid/graphics/Paint;

.field private overPaint:Landroid/graphics/Paint;

.field private photo:Landroid/graphics/Bitmap;

.field private photo2:Landroid/graphics/Bitmap;

.field private placeholder:Landroid/graphics/Bitmap;

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
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/high16 v4, -0x1000000

    const/4 v3, 0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    .line 51
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    .line 55
    invoke-static {p0}, Lcom/vkontakte/android/Global;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->clearPaint:Landroid/graphics/Paint;

    .line 66
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->clearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    .line 70
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const v1, -0x5d5d5e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020247

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholder:Landroid/graphics/Bitmap;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    const v1, -0xc06020

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    const v1, 0x218fa9c7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 262
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int v5, v4, v5

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    const v6, 0x77359400

    if-ge v4, v6, :cond_5

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    :goto_0
    sub-int v1, v5, v4

    .line 263
    .local v1, "maxTextW":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v6, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 264
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const/high16 v5, 0x429c0000    # 78.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 267
    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    if-eqz v4, :cond_6

    const v4, -0xb18a5c

    :goto_1
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 270
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/style/ImageSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ImageSpan;

    array-length v4, v4

    if-lez v4, :cond_7

    const/4 v0, 0x1

    .line 271
    .local v0, "hasImages":Z
    :goto_2
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->out:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    const v5, 0x77359400

    if-le v4, v5, :cond_9

    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v4, :cond_8

    const/16 v4, 0x2d

    :goto_3
    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 272
    .local v2, "offset":I
    :goto_4
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v4, :cond_1

    .line 273
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v4, :cond_a

    .line 274
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int v5, v2, v5

    const/high16 v6, 0x429c0000    # 78.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x420c0000    # 35.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x420c0000    # 35.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x42040000    # 33.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 278
    :cond_1
    :goto_5
    if-gtz v2, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_c

    .line 279
    :cond_2
    const/high16 v4, 0x429c0000    # 78.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    add-int/2addr v4, v6

    :goto_6
    add-int/2addr v4, v5

    add-int/2addr v4, v2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    div-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
    :goto_7
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 284
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v4, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 287
    if-lez v2, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 288
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Rect;

    const/high16 v7, 0x429c0000    # 78.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x420c0000    # 35.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x429c0000    # 78.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x42040000    # 33.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    add-int/2addr v9, v10

    const/high16 v10, 0x420c0000    # 35.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x42040000    # 33.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 291
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x55000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 293
    .local v3, "tbounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 294
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 296
    const/high16 v4, 0x429c0000    # 78.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v1, v4

    .line 297
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    const v5, 0x77359400

    if-ge v4, v5, :cond_4

    .line 298
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v5, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v7, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 299
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "text="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v6, v6, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", maxw="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x42b00000    # 88.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 302
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    :goto_8
    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Rect;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x42880000    # 68.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 303
    return-void

    .line 262
    .end local v0    # "hasImages":Z
    .end local v1    # "maxTextW":I
    .end local v2    # "offset":I
    .end local v3    # "tbounds":Landroid/graphics/Rect;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 267
    .restart local v1    # "maxTextW":I
    :cond_6
    const/high16 v4, 0x77000000

    goto/16 :goto_1

    .line 270
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 271
    .restart local v0    # "hasImages":Z
    :cond_8
    const/16 v4, 0x28

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 276
    .restart local v2    # "offset":I
    :cond_a
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 279
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 281
    :cond_c
    const/high16 v4, 0x429c0000    # 78.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    div-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_7

    .line 302
    .restart local v3    # "tbounds":Landroid/graphics/Rect;
    :cond_d
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholder:Landroid/graphics/Bitmap;

    goto/16 :goto_8
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 254
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->updateText()V

    .line 257
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 258
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/DialogEntryView;->setMeasuredDimension(II)V

    .line 109
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "n"    # I

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 115
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 135
    return-void

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setData(Lcom/vkontakte/android/DialogEntry;Z)V
    .locals 6
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;
    .param p2, "s"    # Z

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->requestLayout()V

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    .line 91
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    .line 92
    iget-object v0, p1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    invoke-static {v0}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0600a2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->dir:Ljava/lang/String;

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->updateText()V

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 99
    iget-object v0, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    const v1, 0x77359400

    if-le v0, v1, :cond_3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601b9

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

    .line 104
    :goto_1
    return-void

    .line 94
    :cond_2
    const v0, 0x7f0600a3

    goto :goto_0

    .line 102
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
    .locals 21

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v1, v1, Lcom/vkontakte/android/Message;->out:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-le v1, v3, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v1, v1, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v1, v1, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v1, :cond_2

    const/16 v1, 0x2d

    :goto_0
    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    .line 139
    .local v17, "offset":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v1

    const/high16 v3, 0x42a60000    # 83.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v1, v5

    :goto_2
    sub-int v1, v3, v1

    sub-int v4, v1, v17

    .line 140
    .local v4, "tfw":I
    if-gez v4, :cond_5

    .line 251
    .end local v4    # "tfw":I
    :cond_1
    :goto_3
    return-void

    .line 138
    .end local v17    # "offset":I
    :cond_2
    const/16 v1, 0x28

    goto :goto_0

    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 139
    .restart local v17    # "offset":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 141
    .restart local v4    # "tfw":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v13, v1, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    .line 142
    .local v13, "dtext":Ljava/lang/CharSequence;
    if-eqz v13, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v1, v1, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    const-string v3, "%act"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v13, ""

    .line 144
    :cond_6
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Attachment;

    .line 147
    .local v9, "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v1, :cond_a

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 164
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    :cond_7
    :goto_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    .line 168
    :goto_5
    if-gtz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_15

    .line 169
    :cond_8
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    .local v10, "b":Landroid/text/SpannableStringBuilder;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lt v14, v1, :cond_12

    .line 173
    move-object v13, v10

    .line 174
    new-instance v1, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float v3, v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v13, v1, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_9

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v1, v3, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    .line 177
    .local v20, "spans":[Ljava/lang/Object;
    move-object/from16 v0, v20

    array-length v5, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_7
    if-lt v3, v5, :cond_14

    .line 181
    .end local v20    # "spans":[Ljava/lang/Object;
    :cond_9
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    new-instance v3, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v4

    .end local v4    # "tfw":I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 149
    .end local v10    # "b":Landroid/text/SpannableStringBuilder;
    .end local v14    # "i":I
    .restart local v4    # "tfw":I
    .restart local v9    # "att":Lcom/vkontakte/android/Attachment;
    :cond_a
    instance-of v1, v9, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v1, :cond_b

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060016

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 151
    goto/16 :goto_4

    :cond_b
    instance-of v1, v9, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v1, :cond_c

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 153
    goto/16 :goto_4

    :cond_c
    instance-of v1, v9, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v1, :cond_e

    move-object v12, v9

    .line 154
    check-cast v12, Lcom/vkontakte/android/DocumentAttachment;

    .line 155
    .local v12, "da":Lcom/vkontakte/android/DocumentAttachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, v12, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-nez v1, :cond_d

    const v1, 0x7f0601ba

    :goto_8
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 156
    goto/16 :goto_4

    .line 155
    :cond_d
    const v1, 0x7f060017

    goto :goto_8

    .line 156
    .end local v12    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_e
    instance-of v1, v9, Lcom/vkontakte/android/PostAttachment;

    if-eqz v1, :cond_f

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060137

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 158
    goto/16 :goto_4

    :cond_f
    instance-of v1, v9, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_7

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0600e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 161
    goto/16 :goto_4

    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v1, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 162
    const v1, 0x7f0d001d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v3, v3, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-object v3, v3, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    .line 166
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textIsAttach:Z

    goto/16 :goto_5

    .line 171
    .restart local v10    # "b":Landroid/text/SpannableStringBuilder;
    .restart local v14    # "i":I
    :cond_12
    invoke-virtual {v10, v14}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_13

    add-int/lit8 v1, v14, 0x1

    const-string v3, " "

    invoke-virtual {v10, v14, v1, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 170
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 177
    .restart local v20    # "spans":[Ljava/lang/Object;
    :cond_14
    aget-object v18, v20, v3

    .line 178
    .local v18, "s":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 177
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_7

    .line 183
    .end local v10    # "b":Landroid/text/SpannableStringBuilder;
    .end local v14    # "i":I
    .end local v18    # "s":Ljava/lang/Object;
    .end local v20    # "spans":[Ljava/lang/Object;
    :cond_15
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 184
    .local v11, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v11, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 185
    const/4 v15, 0x0

    .local v15, "lc":I
    const/16 v19, 0x0

    .line 186
    .local v19, "seq":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lt v14, v1, :cond_17

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-class v5, Landroid/text/style/URLSpan;

    invoke-virtual {v11, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    .line 228
    .restart local v20    # "spans":[Ljava/lang/Object;
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v1, 0x0

    :goto_a
    if-lt v1, v3, :cond_1b

    .line 231
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 238
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    new-instance v3, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    .line 239
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 240
    .local v2, "builder2":Landroid/text/SpannableStringBuilder;
    const/4 v14, 0x0

    :goto_b
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v14, v1, :cond_1c

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_16

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 247
    const-string v1, "..."

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 249
    :cond_16
    new-instance v1, Landroid/text/StaticLayout;

    new-instance v3, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 187
    .end local v2    # "builder2":Landroid/text/SpannableStringBuilder;
    .end local v20    # "spans":[Ljava/lang/Object;
    :cond_17
    invoke-virtual {v11, v14}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1a

    .line 188
    if-lez v15, :cond_18

    add-int/lit8 v3, v14, 0x1

    if-nez v19, :cond_19

    const-string v1, " "

    :goto_c
    invoke-virtual {v11, v14, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 189
    :cond_18
    add-int/lit8 v15, v15, 0x1

    .line 190
    add-int/lit8 v19, v19, 0x1

    .line 186
    :goto_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    .line 188
    :cond_19
    const-string v1, ""

    goto :goto_c

    .line 192
    :cond_1a
    const/16 v19, 0x0

    goto :goto_d

    .line 228
    .restart local v20    # "spans":[Ljava/lang/Object;
    :cond_1b
    aget-object v18, v20, v1

    .line 229
    .restart local v18    # "s":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 241
    .end local v18    # "s":Ljava/lang/Object;
    .restart local v2    # "builder2":Landroid/text/SpannableStringBuilder;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v1, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v3, v14}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {v11, v1, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 242
    .local v16, "line":Ljava/lang/CharSequence;
    const/4 v1, 0x1

    if-ne v14, v1, :cond_1d

    new-instance v1, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v4, v3

    int-to-float v3, v3

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    invoke-static {v0, v1, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 243
    :cond_1d
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 240
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_b
.end method
