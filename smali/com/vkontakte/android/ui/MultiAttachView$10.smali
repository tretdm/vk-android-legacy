.class Lcom/vkontakte/android/ui/MultiAttachView$10;
.super Ljava/lang/Object;
.source "MultiAttachView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MultiAttachView;->addLocation(Lcom/vkontakte/android/GeoAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MultiAttachView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MultiAttachView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiAttachView$10;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MultiAttachView$10;)Lcom/vkontakte/android/ui/MultiAttachView;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$10;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x42aa0000    # 85.0f

    .line 489
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$10;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->access$9(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v0

    iget-wide v0, v0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiAttachView$10;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->access$9(Lcom/vkontakte/android/ui/MultiAttachView;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v2

    iget-wide v2, v2, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 490
    .local v8, "map":Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 491
    .local v6, "bmp":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 492
    .local v7, "c":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 493
    .local v10, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 494
    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v12, v12, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8, v0, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$10;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 497
    .local v9, "marker":Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 498
    invoke-virtual {v9, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 499
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiAttachView$10;->this$0:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/ui/MultiAttachView$10$1;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/ui/MultiAttachView$10$1;-><init>(Lcom/vkontakte/android/ui/MultiAttachView$10;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 502
    return-void
.end method
