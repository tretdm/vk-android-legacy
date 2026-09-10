.class Lcom/vkontakte/android/StickerManagerActivity$6$1;
.super Ljava/lang/Object;
.source "StickerManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StickerManagerActivity$6;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/StickerManagerActivity$6;

.field private final synthetic val$ecode:I

.field private final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StickerManagerActivity$6;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$6;

    iput p2, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->val$ecode:I

    iput p3, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->val$item:I

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 245
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$6;

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity$6;->access$0(Lcom/vkontakte/android/StickerManagerActivity$6;)Lcom/vkontakte/android/StickerManagerActivity;

    move-result-object v4

    iget v3, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->val$ecode:I

    if-ne v3, v6, :cond_0

    const v3, 0x7f08006b

    :goto_0
    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 246
    const/4 v2, -0x1

    .line 247
    .local v2, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$6;

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity$6;->access$0(Lcom/vkontakte/android/StickerManagerActivity$6;)Lcom/vkontakte/android/StickerManagerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 253
    :goto_2
    if-ne v2, v6, :cond_3

    .line 257
    :goto_3
    return-void

    .line 245
    .end local v0    # "i":I
    .end local v2    # "pos":I
    :cond_0
    const v3, 0x7f080068

    goto :goto_0

    .line 248
    .restart local v0    # "i":I
    .restart local v2    # "pos":I
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$6;

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity$6;->access$0(Lcom/vkontakte/android/StickerManagerActivity$6;)Lcom/vkontakte/android/StickerManagerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/data/StickerPack;

    iget v3, v3, Lcom/vkontakte/android/data/StickerPack;->id:I

    iget v4, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->val$item:I

    if-ne v3, v4, :cond_2

    .line 249
    move v2, v0

    .line 250
    goto :goto_2

    .line 247
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$6;

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity$6;->access$0(Lcom/vkontakte/android/StickerManagerActivity$6;)Lcom/vkontakte/android/StickerManagerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/data/StickerPack;

    .line 255
    .local v1, "pack":Lcom/vkontakte/android/data/StickerPack;
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$6;

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity$6;->access$0(Lcom/vkontakte/android/StickerManagerActivity$6;)Lcom/vkontakte/android/StickerManagerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity;->access$0(Lcom/vkontakte/android/StickerManagerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$6;

    invoke-static {v4}, Lcom/vkontakte/android/StickerManagerActivity$6;->access$0(Lcom/vkontakte/android/StickerManagerActivity$6;)Lcom/vkontakte/android/StickerManagerActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/StickerManagerActivity;->access$17(Lcom/vkontakte/android/StickerManagerActivity;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    iget-object v3, p0, Lcom/vkontakte/android/StickerManagerActivity$6$1;->this$1:Lcom/vkontakte/android/StickerManagerActivity$6;

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity$6;->access$0(Lcom/vkontakte/android/StickerManagerActivity$6;)Lcom/vkontakte/android/StickerManagerActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/StickerManagerActivity;->access$12(Lcom/vkontakte/android/StickerManagerActivity;)V

    goto :goto_3
.end method
