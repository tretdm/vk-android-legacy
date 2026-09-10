.class Lcom/vkontakte/android/StickerManagerActivity$5;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/StoreGetPurchases$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StickerManagerActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StickerManagerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StickerManagerActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

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

    .line 221
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/StickerManagerActivity;->access$1202(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 222
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$500(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$500(Lcom/vkontakte/android/StickerManagerActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 224
    iget-object v0, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StickerManagerActivity;->access$600(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 225
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 5
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
    .local p1, "packs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/data/StickerPack;>;"
    const/16 v4, 0x12c

    .line 205
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/StickerManagerActivity;->access$1202(Lcom/vkontakte/android/StickerManagerActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 206
    invoke-static {p1}, Lcom/vkontakte/android/data/Stickers;->doUpdateInfo(Ljava/util/List;)V

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 208
    .local v1, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget v2, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$000(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_2
    iget v2, v1, Lcom/vkontakte/android/data/StickerPack;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 211
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$900(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v1    # "pack":Lcom/vkontakte/android/data/StickerPack;
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$1000(Lcom/vkontakte/android/StickerManagerActivity;)V

    .line 215
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$1300(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 216
    iget-object v2, p0, Lcom/vkontakte/android/StickerManagerActivity$5;->this$0:Lcom/vkontakte/android/StickerManagerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/StickerManagerActivity;->access$600(Lcom/vkontakte/android/StickerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 217
    return-void
.end method
