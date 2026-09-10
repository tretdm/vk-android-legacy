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

.field private bg:Lcom/vkontakte/android/ui/HighlightDrawable;

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

.field private photoShadow:Landroid/graphics/drawable/Drawable;

.field private placeholder:Landroid/graphics/Bitmap;

.field private search:Z

.field private text:Ljava/lang/CharSequence;

.field private textLayout:Landroid/text/Layout;

.field private textPaint:Landroid/graphics/Paint;

.field private time:Ljava/lang/String;

.field private timePaint:Landroid/graphics/Paint;

.field private titlePaint:Landroid/graphics/Paint;

.field private unreadPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v10, 0x40400000    # 3.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x42480000    # 50.0f

    const/4 v6, 0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v8, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    .line 47
    invoke-static {p0}, Lcom/vkontakte/android/Global;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    .line 48
    new-instance v3, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v3}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    .line 49
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    .line 50
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 55
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->clearPaint:Landroid/graphics/Paint;

    .line 58
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->clearPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->clearPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    .line 62
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photoShadow:Landroid/graphics/drawable/Drawable;

    .line 65
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    .line 66
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const v4, -0x555556

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/vkontakte/android/Global;->regFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020206

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholder:Landroid/graphics/Bitmap;

    .line 71
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    .line 72
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    const v4, -0x73593a

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    const v4, -0x16110b

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    if-nez v3, :cond_2

    .line 81
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 82
    .local v2, "tmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .local v1, "p1":Landroid/graphics/Paint;
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance v3, Landroid/graphics/RectF;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v9, v9, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 87
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 88
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 89
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholder:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 90
    iput-object v2, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholder:Landroid/graphics/Bitmap;

    .line 92
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "p1":Landroid/graphics/Paint;
    .end local v2    # "tmp":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method private updateText()V
    .locals 21

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-boolean v2, v2, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-le v2, v3, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-boolean v2, v2, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-boolean v2, v2, Lcom/vkontakte/android/DialogEntry;->readState:Z

    if-nez v2, :cond_2

    const/16 v2, 0x2d

    :goto_0
    int-to-float v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v18

    .line 167
    .local v18, "offset":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v2

    const/high16 v3, 0x428e0000    # 71.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    add-int/2addr v2, v4

    :goto_2
    sub-int v2, v3, v2

    sub-int v6, v2, v18

    .line 168
    .local v6, "tfw":I
    if-gtz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 169
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->displayableLastMessage:Ljava/lang/CharSequence;

    new-instance v3, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float v4, v6

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 170
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    new-instance v3, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .end local v6    # "tfw":I
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    .line 197
    :goto_3
    return-void

    .line 166
    .end local v18    # "offset":I
    :cond_2
    const/16 v2, 0x23

    goto :goto_0

    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 167
    .restart local v18    # "offset":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 172
    .restart local v6    # "tfw":I
    :cond_5
    new-instance v1, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;-><init>()V

    .line 174
    .local v1, "breaker":Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->displayableLastMessage:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    const-string v4, ""

    const/4 v5, 0x2

    new-instance v7, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v7, v8}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {v1 .. v7}, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->breakText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/text/TextPaint;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_4
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 177
    .local v15, "builder":Landroid/text/SpannableStringBuilder;
    const/16 v17, 0x0

    .line 178
    .local v17, "i":I
    invoke-static {v1}, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->access$0(Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 194
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    .line 195
    new-instance v7, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    new-instance v9, Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v9, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v10

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    goto :goto_3

    .line 175
    .end local v15    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v17    # "i":I
    :catch_0
    move-exception v20

    .local v20, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error breaking \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->displayableLastMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 178
    .end local v20    # "x":Ljava/lang/Exception;
    .restart local v15    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v17    # "i":I
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [I

    .line 179
    .local v16, "dd":[I
    invoke-static {v1}, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->access$0(Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v17

    if-ge v0, v3, :cond_8

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v3, v3, Lcom/vkontakte/android/DialogEntry;->displayableLastMessage:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aget v4, v16, v4

    const/4 v5, 0x1

    aget v5, v16, v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    .line 181
    .local v19, "s":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    .line 182
    :cond_7
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 183
    const-string v3, "\n"

    invoke-virtual {v15, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 192
    .end local v19    # "s":Ljava/lang/CharSequence;
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 184
    :cond_8
    invoke-static {v1}, Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;->access$1(Lcom/vkontakte/android/ui/DialogEntryView$LineBreaker;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v3, v3, Lcom/vkontakte/android/DialogEntry;->displayableLastMessage:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aget v4, v16, v4

    const/4 v5, 0x1

    aget v5, v16, v5

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 186
    const-string v3, "..."

    invoke-virtual {v15, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .line 188
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v3, v3, Lcom/vkontakte/android/DialogEntry;->displayableLastMessage:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aget v4, v16, v4

    const/4 v5, 0x1

    aget v5, v16, v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    .line 189
    .restart local v19    # "s":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_a

    const/4 v3, 0x1

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    .line 190
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6
.end method


# virtual methods
.method public deselect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-super {p0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 227
    invoke-super {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->lastPressed:J

    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/HighlightDrawable;->setSel(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 231
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/HighlightDrawable;->setState([I)Z

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 203
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 234
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/vkontakte/android/ui/HighlightDrawable;->setBounds(IIII)V

    .line 235
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v3, p1}, Lcom/vkontakte/android/ui/HighlightDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 238
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v6

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 240
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_0
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v3, v3, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const/high16 v4, 0x42880000    # 68.0f

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

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 244
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_1
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 247
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Landroid/text/style/ImageSpan;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ImageSpan;

    array-length v3, v3

    if-lez v3, :cond_c

    const/4 v0, 0x1

    .line 248
    .local v0, "hasImages":Z
    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-boolean v3, v3, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v3, v3, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    const v4, 0x77359400

    if-le v3, v4, :cond_e

    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-boolean v3, v3, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-boolean v3, v3, Lcom/vkontakte/android/DialogEntry;->readState:Z

    if-nez v3, :cond_d

    const/16 v3, 0x28

    :goto_3
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    .line 249
    .local v1, "offset":I
    :goto_4
    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-boolean v3, v3, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-boolean v3, v3, Lcom/vkontakte/android/DialogEntry;->readState:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v3

    if-nez v3, :cond_3

    .line 250
    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int v4, v1, v4

    const/high16 v5, 0x42880000    # 68.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v7, v8

    const/high16 v8, 0x41300000    # 11.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->unreadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 252
    :cond_3
    if-gtz v1, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_10

    .line 253
    :cond_4
    const/high16 v3, 0x42880000    # 68.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    add-int/2addr v3, v5

    :goto_5
    add-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    div-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    :goto_6
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 258
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 261
    if-lez v1, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 262
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x41300000    # 11.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x42880000    # 68.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    iget-object v10, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    const/high16 v10, 0x41f00000    # 30.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    add-int/2addr v9, v10

    const/high16 v10, 0x41300000    # 11.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 265
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_6
    const/4 v3, -0x1

    :goto_7
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 267
    .local v2, "tbounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 268
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->timePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 271
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v3, v5

    :goto_8
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 273
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x42880000    # 68.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    add-int/2addr v4, v1

    const/high16 v5, 0x42180000    # 38.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    const/high16 v7, 0x42180000    # 38.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 280
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_8
    const/4 v3, -0x1

    :goto_9
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v3, v3, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v3, :cond_9

    .line 282
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v4, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    iget-object v6, v6, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 283
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/high16 v4, 0x429c0000    # 78.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->onlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 299
    :cond_9
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    if-eqz v3, :cond_15

    .line 300
    new-instance v3, Landroid/graphics/RectF;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42680000    # 58.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42680000    # 58.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 301
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    :goto_a
    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x42680000    # 58.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x42680000    # 58.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->overPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 305
    :goto_b
    return-void

    .line 240
    .end local v0    # "hasImages":Z
    .end local v1    # "offset":I
    .end local v2    # "tbounds":Landroid/graphics/Rect;
    :cond_a
    const v3, -0xddddde

    goto/16 :goto_0

    .line 244
    :cond_b
    const v3, -0x99999a

    goto/16 :goto_1

    .line 247
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 248
    .restart local v0    # "hasImages":Z
    :cond_d
    const/16 v3, 0x23

    goto/16 :goto_3

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 253
    .restart local v1    # "offset":I
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 255
    :cond_10
    const/high16 v3, 0x42880000    # 68.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/DialogEntryView;->textLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    div-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_6

    .line 265
    :cond_11
    const v3, -0x555556

    goto/16 :goto_7

    .line 271
    .restart local v2    # "tbounds":Landroid/graphics/Rect;
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 280
    :cond_13
    const v3, -0x73593a

    goto/16 :goto_9

    .line 301
    :cond_14
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholder:Landroid/graphics/Bitmap;

    goto :goto_a

    .line 303
    :cond_15
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    :goto_c
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_16
    iget-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->placeholder:Landroid/graphics/Bitmap;

    goto :goto_c
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 206
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->updateText()V

    .line 209
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 210
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 136
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42840000    # 66.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/DialogEntryView;->setMeasuredDimension(II)V

    .line 137
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "n"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x0

    .line 141
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/DialogEntryView;->isAccelerated:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_2

    .line 142
    :cond_0
    if-nez p2, :cond_1

    .line 143
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    .line 162
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 163
    return-void

    .line 145
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 147
    :cond_2
    if-nez p2, :cond_3

    const/16 v2, 0x32

    .line 148
    .local v2, "s":I
    :goto_1
    int-to-float v4, v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v5, v2

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 149
    .local v3, "tmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 151
    .local v1, "p1":Landroid/graphics/Paint;
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v2

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 154
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 155
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    int-to-float v6, v2

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    int-to-float v7, v2

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 157
    if-nez p2, :cond_4

    .line 158
    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 147
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "p1":Landroid/graphics/Paint;
    .end local v2    # "s":I
    .end local v3    # "tmp":Landroid/graphics/Bitmap;
    :cond_3
    const/16 v2, 0x1e

    goto :goto_1

    .line 160
    .restart local v0    # "c":Landroid/graphics/Canvas;
    .restart local v1    # "p1":Landroid/graphics/Paint;
    .restart local v2    # "s":I
    .restart local v3    # "tmp":Landroid/graphics/Bitmap;
    :cond_4
    iput-object v3, p0, Lcom/vkontakte/android/ui/DialogEntryView;->photo2:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setData(Lcom/vkontakte/android/DialogEntry;Z)V
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;
    .param p2, "s"    # Z

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->requestLayout()V

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->entry:Lcom/vkontakte/android/DialogEntry;

    .line 97
    iput-boolean p2, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    .line 98
    iget-object v1, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    iget-boolean v0, p1, Lcom/vkontakte/android/DialogEntry;->readState:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/HighlightDrawable;->setUnread(Z)V

    .line 99
    iget v0, p1, Lcom/vkontakte/android/DialogEntry;->time:I

    invoke-static {v0}, Lcom/vkontakte/android/Global;->langDateShort(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->time:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    .line 101
    iget v0, p1, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 102
    iget v0, p1, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 123
    iput-object v2, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    .line 128
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->search:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p1, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0900bc

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->dir:Ljava/lang/String;

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->updateText()V

    .line 131
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 132
    return-void

    .line 98
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 107
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 110
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 113
    :pswitch_3
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 116
    :pswitch_4
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 120
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->attachIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 128
    :cond_4
    const v0, 0x7f0900bd

    goto :goto_2

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 221
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/HighlightDrawable;->setSel(Z)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/DialogEntryView;->invalidate()V

    .line 223
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/ui/DialogEntryView;->bg:Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method
