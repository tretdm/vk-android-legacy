.class Lcom/vkontakte/android/fragments/PostViewFragment$24;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PostViewFragment$24;)Lcom/vkontakte/android/fragments/PostViewFragment;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1041
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1042
    .local v0, "act":Ljava/lang/String;
    const-string v5, "profile"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1043
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1044
    .local v1, "args":Landroid/os/Bundle;
    const-string v5, "id"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v6, v6, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1045
    const-string v5, "ProfileFragment"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 1113
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    const-string v5, "reply"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1049
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v6, v6, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$32(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 1050
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v6, v6, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$33(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 1051
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v6, v6, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$34(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V

    .line 1052
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v6, v6, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$35(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;)V

    .line 1053
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1055
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$17(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->isTextEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1056
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$17(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$36(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$17(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->focus()V

    .line 1059
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/PostViewFragment$24$1;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/PostViewFragment$24$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$24;)V

    .line 1064
    const-wide/16 v7, 0xc8

    .line 1059
    invoke-virtual {v5, v6, v7, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1068
    :cond_3
    const-string v5, "copy"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1070
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    .line 1071
    .local v2, "clipboard":Landroid/text/ClipboardManager;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v5, v5, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "<br/>"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f08010b

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1075
    .end local v2    # "clipboard":Landroid/text/ClipboardManager;
    :cond_4
    const-string v5, "like"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1076
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$37(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V

    goto/16 :goto_0

    .line 1079
    :cond_5
    const-string v5, "liked"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1080
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1081
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v5, "title"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const v7, 0x7f080108

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1082
    const-string v5, "type"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1083
    const-string v5, "ltype"

    const/4 v6, 0x5

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1084
    const-string v5, "lptype"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1085
    const-string v5, "oid"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1086
    const-string v5, "item_id"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v6, v6, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1087
    const-string v5, "LikesListFragment"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1090
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_6
    const-string v5, "delete"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1091
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v6, v6, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$38(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    goto/16 :goto_0

    .line 1094
    :cond_7
    const-string v5, "edit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1095
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$39(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/NewsComment;)V

    goto/16 :goto_0

    .line 1098
    :cond_8
    const-string v5, "report"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1099
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/ReportContentActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "itemID"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v6, v6, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1101
    const-string v5, "ownerID"

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1102
    const-string v4, "post_comment"

    .line 1103
    .local v4, "type":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 1104
    const-string v4, "photo_comment"

    .line 1105
    :cond_9
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v5, v9, :cond_a

    .line 1106
    const-string v4, "video_comment"

    .line 1107
    :cond_a
    const-string v5, "type"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1111
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "type":Ljava/lang/String;
    :cond_b
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1112
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostViewFragment$24;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
