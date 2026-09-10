.class Lcom/vkontakte/android/fragments/PostViewFragment$22;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->showCommentActions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$comm:Lcom/vkontakte/android/NewsComment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsComment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    .line 876
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 877
    .local v0, "act":Ljava/lang/String;
    const-string v4, "profile"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 878
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 879
    .local v1, "args":Landroid/os/Bundle;
    const-string v4, "id"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v5, v5, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 880
    const-string v4, "ProfileFragment"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 925
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    const-string v4, "reply"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 884
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v5, v5, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$28(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 885
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v5, v5, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$29(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 886
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v5, v5, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$30(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V

    .line 887
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v5, v5, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$31(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V

    .line 888
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 890
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$15(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/WriteBar;->isTextEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 891
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$15(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$32(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$15(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/WriteBar;->focus()V

    goto :goto_0

    .line 897
    :cond_3
    const-string v4, "copy"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 899
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    .line 900
    .local v2, "clipboard":Landroid/text/ClipboardManager;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v4, v4, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<br/>"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0600f1

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 904
    .end local v2    # "clipboard":Landroid/text/ClipboardManager;
    :cond_4
    const-string v4, "like"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 905
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$33(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V

    goto/16 :goto_0

    .line 908
    :cond_5
    const-string v4, "liked"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 909
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 910
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v4, "title"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const v6, 0x7f0600ee

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 911
    const-string v4, "type"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 912
    const-string v4, "ltype"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 913
    const-string v4, "lptype"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 914
    const-string v4, "oid"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 915
    const-string v4, "item_id"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v5, v5, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 916
    const-string v4, "UserListFragment"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 919
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_6
    const-string v4, "delete"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 920
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v5, v5, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$34(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    goto/16 :goto_0

    .line 923
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 924
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$22;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
