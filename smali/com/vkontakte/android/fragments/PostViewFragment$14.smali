.class Lcom/vkontakte/android/fragments/PostViewFragment$14;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$14;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 553
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$14;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$14;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$11(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 557
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
