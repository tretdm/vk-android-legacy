.class Lcom/vkontakte/android/PostViewActivity$15;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->showPostCommentActions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;

.field private final synthetic val$comm:Lcom/vkontakte/android/NewsComment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x2

    .line 536
    if-nez p2, :cond_1

    .line 537
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const-class v3, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 569
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 543
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$17(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 544
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$18(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 545
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v3, v3, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$19(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$20(Lcom/vkontakte/android/PostViewActivity;)V

    goto :goto_0

    .line 551
    :cond_2
    if-ne p2, v4, :cond_3

    .line 553
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 554
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v2, v2, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<br/>"

    const-string v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v3, 0x7f090126

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 558
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :cond_3
    const/4 v3, 0x3

    if-ne p2, v3, :cond_4

    .line 559
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$24(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/NewsComment;)V

    goto :goto_0

    .line 562
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$25(Lcom/vkontakte/android/PostViewActivity;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_6

    :cond_5
    if-ne p2, v2, :cond_6

    .line 563
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$26(Lcom/vkontakte/android/PostViewActivity;I)V

    goto/16 :goto_0

    .line 566
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$25(Lcom/vkontakte/android/PostViewActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_8

    :cond_7
    const/4 v2, 0x5

    :cond_8
    sub-int/2addr p2, v2

    .line 567
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v2, v2, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 568
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$15;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
