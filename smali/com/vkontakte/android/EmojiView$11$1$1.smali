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

.field final synthetic val$prices:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$11$1;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->val$prices:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 642
    const/4 v1, 0x0

    .line 643
    .local v1, "needUpdate":Z
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11$1;->val$packs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    .line 644
    .local v2, "p":Lcom/vkontakte/android/data/StickerPack;
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$200()Ljava/util/HashMap;

    move-result-object v3

    iget v4, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 645
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->val$prices:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->val$prices:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    .line 647
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$200()Ljava/util/HashMap;

    move-result-object v3

    iget v4, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 649
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$1700()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    const/4 v1, 0x1

    goto :goto_0

    .line 653
    .end local v2    # "p":Lcom/vkontakte/android/data/StickerPack;
    :cond_2
    if-eqz v1, :cond_3

    .line 654
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v3}, Lcom/vkontakte/android/EmojiView;->updateStickers()V

    .line 655
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/EmojiView;->access$402(Lcom/vkontakte/android/EmojiView;Z)Z

    .line 656
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v3}, Lcom/vkontakte/android/EmojiView;->access$500(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 657
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v3}, Lcom/vkontakte/android/EmojiView;->access$500(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 658
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$11$1$1;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v3, v3, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/EmojiView;->access$502(Lcom/vkontakte/android/EmojiView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 660
    :cond_4
    return-void
.end method
