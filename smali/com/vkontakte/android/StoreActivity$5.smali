.class Lcom/vkontakte/android/StoreActivity$5;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/StoreGetInventory$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StoreActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StoreActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x12c

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$8(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$8(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$7(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 261
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 10
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
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/StickerPack;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 224
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "changedState":Z
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$0(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 247
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$2(Lcom/vkontakte/android/StoreActivity;)V

    .line 249
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$10(Lcom/vkontakte/android/StoreActivity;)V

    .line 250
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->hasNewStockItems()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    const-string v4, "stickers"

    invoke-virtual {v3, v4, v8}, Lcom/vkontakte/android/StoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "has_new"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->broadcastUpdate()V

    .line 254
    :cond_1
    return-void

    .line 227
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 228
    .local v1, "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-static {v4}, Lcom/vkontakte/android/data/Stickers;->getPackState(I)I

    move-result v2

    .line 229
    .local v2, "state":I
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "local "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", api "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v4, 0x4

    if-eq v2, v4, :cond_4

    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    if-eq v2, v4, :cond_4

    .line 231
    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 232
    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$5;->this$0:Lcom/vkontakte/android/StoreActivity;

    const-string v5, "stickers"

    invoke-virtual {v4, v5, v8}, Lcom/vkontakte/android/StoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "owned"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "confirmed"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "content"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/data/StickerPack;->downloadLink:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "base_url"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/data/StickerPack;->baseURL:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "s_base_url"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/data/StickerPack;->stickersBaseURL:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ordering"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    iget-object v7, v1, Lcom/vkontakte/android/data/StickerPack;->ids:Ljava/util/List;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 238
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    const/4 v0, 0x1

    .line 240
    goto/16 :goto_0

    .line 241
    :cond_3
    iput v2, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    goto/16 :goto_0

    .line 244
    :cond_4
    iput v2, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    goto/16 :goto_0
.end method
