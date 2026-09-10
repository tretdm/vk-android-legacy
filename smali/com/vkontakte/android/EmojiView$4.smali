.class Lcom/vkontakte/android/EmojiView$4;
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
    .line 233
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$4;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$4;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiView;->access$600(Lcom/vkontakte/android/EmojiView;)Lcom/vkontakte/android/EmojiView$Listener;

    move-result-object v1

    instance-of v1, v1, Lcom/vkontakte/android/EmojiView$StickerListener;

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 238
    .local v0, "idx":I
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$4;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiView;->access$600(Lcom/vkontakte/android/EmojiView;)Lcom/vkontakte/android/EmojiView$Listener;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/EmojiView$StickerListener;

    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$4;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView;->access$700(Lcom/vkontakte/android/EmojiView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/StickerAttachment;

    invoke-interface {v1, v2}, Lcom/vkontakte/android/EmojiView$StickerListener;->onStickerSelected(Lcom/vkontakte/android/StickerAttachment;)V

    .line 240
    .end local v0    # "idx":I
    :cond_0
    return-void
.end method
