.class Lcom/vkontakte/android/fragments/ChatFragment$13;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 870
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$59(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$42(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$42(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 871
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 872
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$13;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$42(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 876
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
