.class Lcom/vkontakte/android/EmojiView$9;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView;->updateStickers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;

.field final synthetic val$stickerTabs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$9;->this$0:Lcom/vkontakte/android/EmojiView;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$9;->val$stickerTabs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 495
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$9;->val$stickerTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 496
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$9;->val$stickerTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 497
    .local v4, "tab":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$9;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v6}, Lcom/vkontakte/android/EmojiView;->access$1400(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/EmojiView$StickerPackTab;

    iget v6, v6, Lcom/vkontakte/android/EmojiView$StickerPackTab;->id:I

    invoke-static {v6}, Lcom/vkontakte/android/data/Stickers;->getTabIcon(I)[Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "urls":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    .local v0, "bmp1":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 500
    .local v1, "bmp2":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 501
    .local v3, "icon":Landroid/graphics/drawable/StateListDrawable;
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const v8, 0x10100a1

    aput v8, v6, v7

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 502
    const/4 v6, 0x0

    new-array v6, v6, [I

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 503
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$9;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v6}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/vkontakte/android/EmojiView$9$1;

    invoke-direct {v7, p0, v4, v3}, Lcom/vkontakte/android/EmojiView$9$1;-><init>(Lcom/vkontakte/android/EmojiView$9;Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "bmp1":Landroid/graphics/Bitmap;
    .end local v1    # "bmp2":Landroid/graphics/Bitmap;
    .end local v3    # "icon":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "tab":Landroid/widget/ImageView;
    .end local v5    # "urls":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 510
    :cond_0
    return-void
.end method
