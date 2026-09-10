.class Lcom/vkontakte/android/EmojiPickerView$BGDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "EmojiPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGDrawable"
.end annotation


# instance fields
.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field shadow:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/vkontakte/android/EmojiPickerView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/EmojiPickerView;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/EmojiPickerView;Lcom/vkontakte/android/EmojiPickerView$BGDrawable;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;-><init>(Lcom/vkontakte/android/EmojiPickerView;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    const v6, 0x3a83126f    # 0.001f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x0

    .line 229
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->paint:Landroid/graphics/Paint;

    .line 231
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x4e000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->path:Landroid/graphics/Path;

    .line 234
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->path:Landroid/graphics/Path;

    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->access$3()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 235
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->path:Landroid/graphics/Path;

    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->access$3()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->path:Landroid/graphics/Path;

    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->access$3()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->access$3()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 238
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiPickerView;->getWidth()I

    move-result v2

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->access$3()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 239
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-virtual {v1}, Lcom/vkontakte/android/EmojiPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->shadow:Landroid/graphics/drawable/Drawable;

    .line 241
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 242
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 243
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiPickerView;->access$4(Lcom/vkontakte/android/EmojiPickerView;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 244
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 245
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 247
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/vkontakte/android/EmojiPickerView;->access$3()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 248
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    invoke-static {v3}, Lcom/vkontakte/android/EmojiPickerView;->access$4(Lcom/vkontakte/android/EmojiPickerView;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 249
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 250
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 251
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 252
    iget-object v1, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/vkontakte/android/EmojiPickerView$BGDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 253
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 262
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 266
    return-void
.end method
