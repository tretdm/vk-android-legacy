.class Lcom/vkontakte/android/PostViewActivity$16;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->showPhotoCommentActions(I)V
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
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    .line 589
    if-nez p2, :cond_1

    .line 590
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const-class v3, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 591
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 618
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 596
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$17(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 597
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$18(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 598
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v3, v3, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$19(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V

    .line 599
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$20(Lcom/vkontakte/android/PostViewActivity;)V

    goto :goto_0

    .line 604
    :cond_2
    if-ne p2, v4, :cond_3

    .line 606
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 607
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v2, v2, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v3, 0x7f090126

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 611
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$25(Lcom/vkontakte/android/PostViewActivity;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_5

    :cond_4
    if-ne p2, v2, :cond_5

    .line 612
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$26(Lcom/vkontakte/android/PostViewActivity;I)V

    goto :goto_0

    .line 615
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$25(Lcom/vkontakte/android/PostViewActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_7

    :cond_6
    const/4 v2, 0x4

    :cond_7
    sub-int/2addr p2, v2

    .line 616
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v2, v2, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 617
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
