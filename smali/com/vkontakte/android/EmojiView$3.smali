.class Lcom/vkontakte/android/EmojiView$3;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/EmojiView$3;)Lcom/vkontakte/android/EmojiView;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    .local v0, "id":I
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$2()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v3, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$2()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/data/StickerPack;

    invoke-static {v3, v2}, Lcom/vkontakte/android/EmojiView;->access$3(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/data/StickerPack;)V

    .line 232
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView;->access$4(Lcom/vkontakte/android/EmojiView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 214
    .local v1, "pdlg":Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 216
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    new-instance v3, Lcom/vkontakte/android/EmojiView$3$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/vkontakte/android/EmojiView$3$1;-><init>(Lcom/vkontakte/android/EmojiView$3;Landroid/app/ProgressDialog;I)V

    invoke-static {v2, v3}, Lcom/vkontakte/android/EmojiView;->access$5(Lcom/vkontakte/android/EmojiView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 226
    .end local v1    # "pdlg":Landroid/app/ProgressDialog;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    iget-object v2, v2, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08006b

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$3;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080340

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
