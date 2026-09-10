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

.field private final synthetic val$code:I

.field private final synthetic val$paid:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$11$1;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    iput p2, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->val$code:I

    iput-object p3, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->val$paid:Ljava/util/ArrayList;

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 669
    iget v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->val$code:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 670
    invoke-static {}, Lcom/vkontakte/android/EmojiView;->access$26()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->val$paid:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 674
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->updateStickers()V

    .line 675
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$25(Lcom/vkontakte/android/EmojiView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 677
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/EmojiView;->access$5(Lcom/vkontakte/android/EmojiView;Ljava/lang/Runnable;)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/EmojiView;->access$24(Lcom/vkontakte/android/EmojiView;Z)V

    .line 680
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->this$2:Lcom/vkontakte/android/EmojiView$11$1;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11$1;->access$0(Lcom/vkontakte/android/EmojiView$11$1;)Lcom/vkontakte/android/EmojiView$11;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView$11;->access$0(Lcom/vkontakte/android/EmojiView$11;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$11$1$2;->val$paid:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
