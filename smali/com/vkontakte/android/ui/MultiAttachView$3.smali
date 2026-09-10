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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$_thumb:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$_id:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MultiAttachView$3;)Lcom/vkontakte/android/ui/MultiAttachView;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    .line 227
    iget-object v7, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$_thumb:Ljava/lang/String;

    invoke-static {v7}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->val$_id:Ljava/lang/String;

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 230
    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 231
    .local v1, "bmp2":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v6, v7, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 233
    .local v6, "src":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v3, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 234
    .local v3, "dst":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 235
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 236
    invoke-virtual {v2, v0, v6, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 237
    iget-object v7, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020191

    invoke-static {v7, v8}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 238
    .local v4, "ov":Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v2, v4, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    iget-object v7, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v8, Lcom/vkontakte/android/ui/MultiAttachView$3$1;

    invoke-direct {v8, p0, v1, v0}, Lcom/vkontakte/android/ui/MultiAttachView$3$1;-><init>(Lcom/vkontakte/android/ui/MultiAttachView$3;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/MultiAttachView;->post(Ljava/lang/Runnable;)Z

    .line 250
    .end local v1    # "bmp2":Landroid/graphics/Bitmap;
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v3    # "dst":Landroid/graphics/Rect;
    .end local v4    # "ov":Landroid/graphics/Bitmap;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "src":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 244
    :cond_0
    const-wide/16 v7, 0xa

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v7}, Lcom/vkontakte/android/ui/MultiAttachView;->access$3(Lcom/vkontakte/android/ui/MultiAttachView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/ui/MultiAttachView$3;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v8, Lcom/vkontakte/android/ui/MultiAttachView$3$2;

    invoke-direct {v8, p0, v0}, Lcom/vkontakte/android/ui/MultiAttachView$3$2;-><init>(Lcom/vkontakte/android/ui/MultiAttachView$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/MultiAttachView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 244
    :catch_0
    move-exception v7

    goto :goto_1
.end method
