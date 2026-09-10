.class Lcom/vkontakte/android/EmojiView$11$1$2;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView$11$1;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/EmojiView$11$1;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$11$1;I)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iput p2, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 668
    iget v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->val$code:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 669
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$1700()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v1, v1, Lcom/vkontakte/android/EmojiView$11$1;->val$paid:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 673
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->updateStickers()V

    .line 674
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$500(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$500(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 676
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/EmojiView;->access$502(Lcom/vkontakte/android/EmojiView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/EmojiView;->access$402(Lcom/vkontakte/android/EmojiView;Z)Z

    .line 679
    return-void

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iget-object v1, v1, Lcom/vkontakte/android/EmojiView$11$1;->val$paid:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
