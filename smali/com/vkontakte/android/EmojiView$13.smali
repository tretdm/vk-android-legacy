.class Lcom/vkontakte/android/EmojiView$13;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView;->loadStickers(Ljava/util/List;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;

.field private final synthetic val$tab:I

.field private final synthetic val$views:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$13;->this$0:Lcom/vkontakte/android/EmojiView;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$13;->val$views:Ljava/util/List;

    iput p3, p0, Lcom/vkontakte/android/EmojiView$13;->val$tab:I

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 825
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$13;->val$views:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 840
    :cond_0
    return-void

    .line 826
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$13;->val$views:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 827
    .local v4, "iv":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 828
    .local v3, "index":I
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$13;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v6}, Lcom/vkontakte/android/EmojiView;->access$7(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/StickerAttachment;

    .line 829
    .local v0, "att":Lcom/vkontakte/android/StickerAttachment;
    iget v6, p0, Lcom/vkontakte/android/EmojiView$13;->val$tab:I

    iget-object v7, p0, Lcom/vkontakte/android/EmojiView$13;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v7}, Lcom/vkontakte/android/EmojiView;->access$17(Lcom/vkontakte/android/EmojiView;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 830
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$13;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v6}, Lcom/vkontakte/android/EmojiView;->access$15(Lcom/vkontakte/android/EmojiView;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/StickerAttachment;->getKeyboardImageURL(I)Ljava/lang/String;

    move-result-object v5

    .line 831
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 833
    .local v1, "bmp":Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/vkontakte/android/EmojiView$13;->val$tab:I

    iget-object v7, p0, Lcom/vkontakte/android/EmojiView$13;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v7}, Lcom/vkontakte/android/EmojiView;->access$17(Lcom/vkontakte/android/EmojiView;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 834
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$13;->this$0:Lcom/vkontakte/android/EmojiView;

    new-instance v7, Lcom/vkontakte/android/EmojiView$13$1;

    invoke-direct {v7, p0, v4, v1}, Lcom/vkontakte/android/EmojiView$13$1;-><init>(Lcom/vkontakte/android/EmojiView$13;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/EmojiView;->post(Ljava/lang/Runnable;)Z

    .line 825
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
