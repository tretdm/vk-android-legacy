.class Lcom/vkontakte/android/EmojiView$11;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lcom/vkontakte/android/api/StoreGetInventory$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView;->preloadStickersInfo(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;

.field private final synthetic val$ids:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$11;->val$ids:Ljava/util/List;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$11;->val$ids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 698
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->updateStickers()V

    .line 699
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 701
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/EmojiView;->access$5(Lcom/vkontakte/android/EmojiView;Ljava/lang/Runnable;)V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/EmojiView;->access$24(Lcom/vkontakte/android/EmojiView;Z)V

    .line 704
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/data/StickerPack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "packs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/StickerPack;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 603
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/EmojiView;->access$24(Lcom/vkontakte/android/EmojiView;Z)V

    .line 604
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v6}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 605
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v6}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 606
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/EmojiView;->access$5(Lcom/vkontakte/android/EmojiView;Ljava/lang/Runnable;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 612
    .local v5, "storeIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v3, "paid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 614
    .local v0, "_changedState":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 635
    move v1, v0

    .line 637
    .local v1, "changedState":Z
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 638
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v6}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/EmojiView$11$1;

    invoke-direct {v8, p0, p1, v3}, Lcom/vkontakte/android/EmojiView$11$1;-><init>(Lcom/vkontakte/android/EmojiView$11;Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/data/Stickers;->getPrices(Landroid/app/Activity;Ljava/util/List;Lcom/vkontakte/android/data/Stickers$GetPricesCallback;)V

    goto :goto_0

    .line 614
    .end local v1    # "changedState":Z
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    .line 615
    .local v2, "p":Lcom/vkontakte/android/data/StickerPack;
    iget v7, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v7}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v4

    .line 616
    .local v4, "state":I
    const/4 v7, 0x5

    if-eq v4, v7, :cond_4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_4

    iget-object v7, v2, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v2, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 617
    iget-object v7, v2, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 618
    iget v7, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :goto_2
    iget v7, v2, Lcom/vkontakte/android/data/StickerPack;->state:I

    if-eq v4, v7, :cond_2

    .line 623
    iget v7, v2, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 624
    iget-object v7, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v7}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "stickers"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "owned"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 625
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "confirmed"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 626
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "content"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/vkontakte/android/data/StickerPack;->downloadLink:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 627
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "base_url"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/vkontakte/android/data/StickerPack;->baseURL:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 628
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "s_base_url"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/vkontakte/android/data/StickerPack;->stickersBaseURL:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 629
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ordering"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    iget-object v10, v2, Lcom/vkontakte/android/data/StickerPack;->ids:Ljava/util/List;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 630
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 631
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 620
    :cond_4
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$2()Ljava/util/HashMap;

    move-result-object v7

    iget v8, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 685
    .end local v2    # "p":Lcom/vkontakte/android/data/StickerPack;
    .end local v4    # "state":I
    .restart local v1    # "changedState":Z
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v6}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 686
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v6}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 687
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/EmojiView;->access$5(Lcom/vkontakte/android/EmojiView;Ljava/lang/Runnable;)V

    .line 689
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/EmojiView;->access$24(Lcom/vkontakte/android/EmojiView;Z)V

    .line 690
    if-eqz v1, :cond_0

    .line 691
    iget-object v6, p0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v6}, Lcom/vkontakte/android/EmojiView;->updateStickers()V

    goto/16 :goto_0
.end method
