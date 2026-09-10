.class Lcom/vkontakte/android/fragments/CreateChatFragment$2$1;
.super Ljava/lang/Object;
.source "CreateChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/CreateChatFragment$2;->beforeSetListAdapter(Lcom/vkontakte/android/ui/RefreshableListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/CreateChatFragment$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/CreateChatFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/CreateChatFragment$2;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/CreateChatFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->access$0(Lcom/vkontakte/android/fragments/CreateChatFragment$2;)Lcom/vkontakte/android/fragments/CreateChatFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/CreateChatFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/CreateChatFragment$2;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/CreateChatFragment$2;->access$0(Lcom/vkontakte/android/fragments/CreateChatFragment$2;)Lcom/vkontakte/android/fragments/CreateChatFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/CreateChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 72
    return-void
.end method
