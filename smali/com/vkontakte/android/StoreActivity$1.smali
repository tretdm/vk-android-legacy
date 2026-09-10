.class Lcom/vkontakte/android/StoreActivity$1;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/StoreActivity;
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
    .line 55
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$1;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    new-instance v3, Lcom/vkontakte/android/StoreActivity$1$1;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/StoreActivity$1$1;-><init>(Lcom/vkontakte/android/StoreActivity$1;Landroid/view/View;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 65
    .local v2, "pos":I
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$1;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3}, Lcom/vkontakte/android/StoreActivity;->access$000(Lcom/vkontakte/android/StoreActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 66
    .local v1, "pck":Lcom/vkontakte/android/data/StickerPack;
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 67
    iget-object v3, v1, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$1;->this$0:Lcom/vkontakte/android/StoreActivity;

    const-class v4, Lcom/vkontakte/android/BillingActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "product"

    iget v4, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v3, "store_id"

    iget-object v4, v1, Lcom/vkontakte/android/data/StickerPack;->storeID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$1;->this$0:Lcom/vkontakte/android/StoreActivity;

    const/16 v4, 0x65

    invoke-virtual {v3, v0, v4}, Lcom/vkontakte/android/StoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 73
    :cond_0
    iget v3, v1, Lcom/vkontakte/android/data/StickerPack;->id:I

    iget-object v4, p0, Lcom/vkontakte/android/StoreActivity$1;->this$0:Lcom/vkontakte/android/StoreActivity;

    new-instance v5, Lcom/vkontakte/android/StoreActivity$1$2;

    invoke-direct {v5, p0, v1}, Lcom/vkontakte/android/StoreActivity$1$2;-><init>(Lcom/vkontakte/android/StoreActivity$1;Lcom/vkontakte/android/data/StickerPack;)V

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/data/Stickers;->activateFreePack(ILandroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/StoreActivity$1;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v3, v1}, Lcom/vkontakte/android/StoreActivity;->access$100(Lcom/vkontakte/android/StoreActivity;Lcom/vkontakte/android/data/StickerPack;)V

    goto :goto_0
.end method
