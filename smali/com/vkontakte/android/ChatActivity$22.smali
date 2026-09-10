.class Lcom/vkontakte/android/ChatActivity$22;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/vkontakte/android/EmojiPickerView$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->showEmojiPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$22;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/String;

    .prologue
    .line 881
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity$22;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v3}, Lcom/vkontakte/android/ChatActivity;->access$35(Lcom/vkontakte/android/ChatActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f060059

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 883
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 884
    .local v2, "pos":I
    invoke-static {p1}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 885
    .local v1, "em":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 886
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 887
    invoke-virtual {v0, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 888
    return-void
.end method
