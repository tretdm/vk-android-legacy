.class Lcom/vkontakte/android/fragments/ChatMembersFragment$20;
.super Ljava/lang/Object;
.source "ChatMembersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesDeleteChatPhoto$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatMembersFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$20;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$20;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

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

    .line 728
    return-void

    .line 727
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success(I)V
    .locals 2
    .param p1, "mid"    # I

    .prologue
    .line 722
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment$20;->this$0:Lcom/vkontakte/android/fragments/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 723
    return-void
.end method
