.class Lcom/vkontakte/android/EmojiPopup$6;
.super Ljava/lang/Object;
.source "EmojiPopup.java"

# interfaces
.implements Lcom/vkontakte/android/EmojiView$StickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiPopup;->createEmojiPopup()V
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPopup$6;->this$0:Lcom/vkontakte/android/EmojiPopup;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackspace()V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$6;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$3(Lcom/vkontakte/android/EmojiPopup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 207
    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v3, p0, Lcom/vkontakte/android/EmojiPopup$6;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v3}, Lcom/vkontakte/android/EmojiPopup;->access$3(Lcom/vkontakte/android/EmojiPopup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901ff

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 197
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 198
    .local v2, "pos":I
    invoke-static {p1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 199
    .local v1, "em":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 201
    invoke-virtual {v0, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 202
    return-void
.end method

.method public onStickerSelected(Lcom/vkontakte/android/StickerAttachment;)V
    .locals 1
    .param p1, "sticker"    # Lcom/vkontakte/android/StickerAttachment;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$6;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$4(Lcom/vkontakte/android/EmojiPopup;)Lcom/vkontakte/android/EmojiPopup$StickerClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$6;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$4(Lcom/vkontakte/android/EmojiPopup;)Lcom/vkontakte/android/EmojiPopup$StickerClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vkontakte/android/EmojiPopup$StickerClickListener;->onStickerSelected(Lcom/vkontakte/android/StickerAttachment;)V

    .line 213
    :cond_0
    return-void
.end method
