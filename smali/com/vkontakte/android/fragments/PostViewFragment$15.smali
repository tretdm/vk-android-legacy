.class Lcom/vkontakte/android/fragments/PostViewFragment$15;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$15;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    .line 561
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

    .line 564
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$15;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$15;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 565
    .local v0, "shown":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$15;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v3

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 566
    return-void

    .end local v0    # "shown":Z
    :cond_0
    move v0, v2

    .line 564
    goto :goto_0

    .restart local v0    # "shown":Z
    :cond_1
    move v2, v1

    .line 565
    goto :goto_1
.end method
