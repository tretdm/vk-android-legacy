.class Lcom/vkontakte/android/fragments/ChatFragment$13;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 883
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3600(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3600(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 884
    .local v0, "shown":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3600(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 885
    return-void

    .end local v0    # "shown":Z
    :cond_0
    move v0, v2

    .line 883
    goto :goto_0

    .restart local v0    # "shown":Z
    :cond_1
    move v1, v2

    .line 884
    goto :goto_1
.end method
