.class Lcom/vkontakte/android/EmojiView$8;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView;->showStickersDetails(Lcom/vkontakte/android/data/StickerPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;

.field final synthetic val$pck:Lcom/vkontakte/android/data/StickerPack;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/data/StickerPack;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$8;->this$0:Lcom/vkontakte/android/EmojiView;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 414
    new-instance v1, Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;-><init>()V

    .line 415
    .local v1, "fragment":Lcom/vkontakte/android/fragments/StickersDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget v3, v3, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget-object v3, v3, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v2, "description"

    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget-object v3, v3, Lcom/vkontakte/android/data/StickerPack;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v2, "count"

    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget v3, v3, Lcom/vkontakte/android/data/StickerPack;->count:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    const-string v2, "price"

    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget-object v3, v3, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v2, "storeID"

    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget-object v3, v3, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v2, "background_src"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget-object v4, v4, Lcom/vkontakte/android/data/StickerPack;->baseURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "background.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v2, "author"

    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget-object v3, v3, Lcom/vkontakte/android/data/StickerPack;->author:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v2, "slides"

    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$8;->val$pck:Lcom/vkontakte/android/data/StickerPack;

    iget-object v3, v3, Lcom/vkontakte/android/data/StickerPack;->previews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 425
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 426
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$8;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "detail"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 427
    return-void
.end method
