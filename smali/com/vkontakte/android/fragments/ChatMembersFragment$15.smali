.class Lcom/vkontakte/android/fragments/ChatMembersFragment$15;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesRemoveChatUser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->doRemoveUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

.field private final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->val$idx:I

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 617
    return-void

    .line 616
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->val$idx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 611
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$30(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    .line 612
    return-void
.end method
