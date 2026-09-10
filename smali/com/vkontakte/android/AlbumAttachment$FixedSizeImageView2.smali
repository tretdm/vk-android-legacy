.class public Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;
.super Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;
.source "AlbumAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AlbumAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedSizeImageView2"
.end annotation


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private icon:Landroid/graphics/Bitmap;

.field private sizePaint:Landroid/graphics/Paint;

.field private textPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/vkontakte/android/AlbumAttachment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/AlbumAttachment;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v2, 0x41500000    # 13.0f

    .line 81
    iput-object p1, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;-><init>(Lcom/vkontakte/android/PhotoAttachment;Landroid/content/Context;)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->textPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->textPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->sizePaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->sizePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->sizePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->sizePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->sizePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->bgPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->bgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020136

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->icon:Landroid/graphics/Bitmap;

    .line 95
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 98
    invoke-super {p0, p1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    int-to-float v6, v0

    .line 100
    .local v6, "h":F
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float v7, v0, v1

    .line 101
    .local v7, "textH":F
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v0, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getWidth()I

    move-result v0

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v9, v0

    .line 103
    .local v9, "w":F
    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getWidth()I

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->sizePaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget v2, v2, Lcom/vkontakte/android/AlbumAttachment;->size:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 105
    .local v8, "tw":F
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget v1, v1, Lcom/vkontakte/android/AlbumAttachment;->size:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v8

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->sizePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40900000    # 4.5f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->sizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v8

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v6, v10

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v8

    iget-object v1, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    sub-float/2addr v9, v0

    .line 109
    .end local v8    # "tw":F
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->this$0:Lcom/vkontakte/android/AlbumAttachment;

    iget-object v0, v0, Lcom/vkontakte/android/AlbumAttachment;->descr:Ljava/lang/String;

    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v9, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v6, v10

    sub-float/2addr v2, v3

    div-float v3, v7, v10

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/AlbumAttachment$FixedSizeImageView2;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    return-void
.end method
