.class Lcom/vkontakte/android/ui/AttachmentsEditorView$16;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView;->createLocationView(Lcom/vkontakte/android/GeoAttachment;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field private final synthetic val$att:Lcom/vkontakte/android/GeoAttachment;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Lcom/vkontakte/android/GeoAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iput-object p3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->val$v:Landroid/view/View;

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v0, v0, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->val$att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v2, v2, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/16 v4, 0x55

    const/16 v5, 0x55

    const/16 v6, 0xe

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 815
    .local v9, "map":Landroid/graphics/Bitmap;
    const/high16 v0, 0x42aa0000    # 85.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 816
    .local v7, "bmp":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 817
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 818
    .local v11, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 819
    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x42aa0000    # 85.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x42aa0000    # 85.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v9, v0, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 820
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 821
    .local v10, "marker":Landroid/graphics/drawable/Drawable;
    const/high16 v0, 0x42aa0000    # 85.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x42aa0000    # 85.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/high16 v3, 0x42aa0000    # 85.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 822
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 823
    iget-object v0, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    new-instance v1, Lcom/vkontakte/android/ui/AttachmentsEditorView$16$1;

    iget-object v2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$16;->val$v:Landroid/view/View;

    invoke-direct {v1, p0, v2, v7}, Lcom/vkontakte/android/ui/AttachmentsEditorView$16$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView$16;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "c":Landroid/graphics/Canvas;
    .end local v9    # "map":Landroid/graphics/Bitmap;
    .end local v10    # "marker":Landroid/graphics/drawable/Drawable;
    .end local v11    # "paint":Landroid/graphics/Paint;
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v12

    .local v12, "x":Ljava/lang/Exception;
    const-string v0, "vk"

    invoke-static {v0, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
