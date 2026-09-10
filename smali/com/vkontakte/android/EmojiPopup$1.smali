.class Lcom/vkontakte/android/EmojiPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "EmojiPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiPopup;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiPopup;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPopup$1;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const-string v0, "com.vkontakte.andoroid.HIDE_EMOJI_POPUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$1;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->hide()V

    .line 46
    :cond_0
    const-string v0, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$1;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$000(Lcom/vkontakte/android/EmojiPopup;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$1;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$100(Lcom/vkontakte/android/EmojiPopup;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$1;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$100(Lcom/vkontakte/android/EmojiPopup;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/EmojiView;->tempFailedPacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$1;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$100(Lcom/vkontakte/android/EmojiPopup;)Lcom/vkontakte/android/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiView;->updateStickers()V

    .line 50
    :cond_1
    return-void
.end method
