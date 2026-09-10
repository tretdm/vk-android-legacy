.class Lcom/vkontakte/android/StoreActivity$3;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StoreActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 133
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$3;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$3;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    .line 137
    .local v2, "pck":Lcom/vkontakte/android/data/StickerPack;
    new-instance v1, Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;-><init>()V

    .line 138
    .local v1, "fragment":Lcom/vkontakte/android/fragments/StickersDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "id"

    iget v4, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v3, "title"

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v3, "description"

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->description:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v3, "count"

    iget v4, v2, Lcom/vkontakte/android/data/StickerPack;->count:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v3, "price"

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->price:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "storeID"

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "author"

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->author:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "background_src"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://vk.com/images/store/stickers/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/background.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "slides"

    iget-object v4, v2, Lcom/vkontakte/android/data/StickerPack;->previews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 148
    iget v3, v2, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 149
    const-string v3, "unavailable"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    :cond_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 151
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$3;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/StoreActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "detail"

    invoke-virtual {v1, v3, v4}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 152
    return-void
.end method
