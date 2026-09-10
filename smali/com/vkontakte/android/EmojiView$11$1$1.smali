.class Lcom/vkontakte/android/EmojiView$11$1$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView$11$1;->onSuccess(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/EmojiView$11$1;

.field private final synthetic val$packs:Ljava/util/List;

.field private final synthetic val$prices:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$11$1;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->val$packs:Ljava/util/List;

    iput-object p3, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->val$prices:Ljava/util/HashMap;

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "needUpdate":Z
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->val$packs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 654
    if-eqz v0, :cond_1

    .line 655
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->updateStickers()V

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/EmojiView;->access$24(Lcom/vkontakte/android/EmojiView;Z)V

    .line 657
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 658
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 659
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/EmojiView;->access$5(Lcom/vkontakte/android/EmojiView;Ljava/lang/Runnable;)V

    .line 661
    :cond_2
    return-void

    .line 644
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 645
    .local v1, "p":Lcom/vkontakte/android/data/StickerPack;
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$2()Ljava/util/HashMap;

    move-result-object v2

    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 646
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->val$prices:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 647
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->val$prices:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    .line 648
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$2()Ljava/util/HashMap;

    move-result-object v2

    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 650
    :cond_4
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$26()Ljava/util/ArrayList;

    move-result-object v2

    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
