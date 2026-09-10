.class Lcom/vkontakte/android/EmojiPopup$4;
.super Ljava/lang/Object;
.source "EmojiPopup.java"

# interfaces
.implements Lcom/vkontakte/android/EmojiView$Listener;


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
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPopup$4;->this$0:Lcom/vkontakte/android/EmojiPopup;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackspace()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$4;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiPopup;->access$1(Lcom/vkontakte/android/EmojiPopup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 140
    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v3, p0, Lcom/vkontakte/android/EmojiPopup$4;->this$0:Lcom/vkontakte/android/EmojiPopup;

    invoke-static {v3}, Lcom/vkontakte/android/EmojiPopup;->access$1(Lcom/vkontakte/android/EmojiPopup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080179

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 130
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 131
    .local v2, "pos":I
    invoke-static {p1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 132
    .local v1, "em":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 134
    invoke-virtual {v0, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 135
    return-void
.end method
