.class Lcom/vkontakte/android/EmojiView$11$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lcom/vkontakte/android/data/Stickers$GetPricesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView$11;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/EmojiView$11;

.field final synthetic val$packs:Ljava/util/List;

.field final synthetic val$paid:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$11;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$11$1;->val$packs:Ljava/util/List;

    iput-object p3, p0, Lcom/vkontakte/android/EmojiView$11$1;->val$paid:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    new-instance v1, Lcom/vkontakte/android/EmojiView$11$1$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/EmojiView$11$1$2;-><init>(Lcom/vkontakte/android/EmojiView$11$1;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/EmojiView;->post(Ljava/lang/Runnable;)Z

    .line 681
    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "prices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$11$1;->this$1:Lcom/vkontakte/android/EmojiView$11;

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView$11;->this$0:Lcom/vkontakte/android/EmojiView;

    new-instance v1, Lcom/vkontakte/android/EmojiView$11$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/EmojiView$11$1$1;-><init>(Lcom/vkontakte/android/EmojiView$11$1;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/EmojiView;->post(Ljava/lang/Runnable;)Z

    .line 662
    return-void
.end method
