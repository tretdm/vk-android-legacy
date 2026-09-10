.class Lcom/vkontakte/android/EmojiView$3$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/EmojiView$3;

.field private final synthetic val$id:I

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$3;Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$3$1;->this$1:Lcom/vkontakte/android/EmojiView$3;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$3$1;->val$pdlg:Landroid/app/ProgressDialog;

    iput p3, p0, Lcom/vkontakte/android/EmojiView$3$1;->val$id:I

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$3$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 219
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$2()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/EmojiView$3$1;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$3$1;->this$1:Lcom/vkontakte/android/EmojiView$3;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$3;->access$0(Lcom/vkontakte/android/EmojiView$3;)Lcom/vkontakte/android/EmojiView;

    move-result-object v1

    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$2()Ljava/util/HashMap;

    move-result-object v0

    iget v2, p0, Lcom/vkontakte/android/EmojiView$3$1;->val$id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/data/StickerPack;

    invoke-static {v1, v0}, Lcom/vkontakte/android/EmojiView;->access$3(Lcom/vkontakte/android/EmojiView;Lcom/vkontakte/android/data/StickerPack;)V

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$3$1;->this$1:Lcom/vkontakte/android/EmojiView$3;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$3;->access$0(Lcom/vkontakte/android/EmojiView$3;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
