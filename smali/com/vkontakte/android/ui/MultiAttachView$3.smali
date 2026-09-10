.class Lcom/vkontakte/android/ui/MultiAttachView$3;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MultiAttachView;

.field private final synthetic val$_id:Ljava/lang/String;

.field private final synthetic val$_thumb:Ljava/lang/String;

.field private final synthetic val$idx:I

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$_thumb:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$iv:Landroid/widget/ImageView;

    iput p5, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$idx:I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MultiAttachView$3;)Lcom/vkontakte/android/ui/MultiAttachView;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$_thumb:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 230
    .local v5, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$_id:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 232
    .local v3, "bmp2":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v10, v0, v11, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    .local v10, "src":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v7, v11, v11, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 235
    .local v7, "dst":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 236
    .local v9, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 237
    invoke-virtual {v6, v5, v10, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$_id:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ad

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 240
    .local v8, "ov":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v6, v8, v0, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    .end local v8    # "ov":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/Activity;

    new-instance v0, Lcom/vkontakte/android/ui/MultiAttachView$3$1;

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$iv:Landroid/widget/ImageView;

    iget v4, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$idx:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ui/MultiAttachView$3$1;-><init>(Lcom/vkontakte/android/ui/MultiAttachView$3;Landroid/widget/ImageView;Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v11, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
    .end local v3    # "bmp2":Landroid/graphics/Bitmap;
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v7    # "dst":Landroid/graphics/Rect;
    .end local v9    # "paint":Landroid/graphics/Paint;
    .end local v10    # "src":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$3$2;

    iget v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$idx:I

    iget-object v4, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$iv:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v5, v4}, Lcom/vkontakte/android/ui/MultiAttachView$3$2;-><init>(Lcom/vkontakte/android/ui/MultiAttachView$3;ILandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
