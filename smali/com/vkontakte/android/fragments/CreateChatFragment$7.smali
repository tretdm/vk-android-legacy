.class Lcom/vkontakte/android/fragments/CreateChatFragment$7;
.super Ljava/lang/Object;
.source "CreateChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/CreateChatFragment;->beforeSetListAdapter(Lcom/vkontakte/android/ui/RefreshableListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/CreateChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$7;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$7;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$7;->this$0:Lcom/vkontakte/android/fragments/CreateChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 179
    return-void
.end method
