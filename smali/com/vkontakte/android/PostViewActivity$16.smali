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

    .line 485
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

    .line 488
    if-nez p2, :cond_1

    .line 489
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const-class v3, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 517
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 495
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$16(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 496
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$17(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 497
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v3, v3, Lcom/vkontakte/android/NewsComment;->userRName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$18(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PostViewActivity;->access$19(Lcom/vkontakte/android/PostViewActivity;)V

    goto :goto_0

    .line 503
    :cond_2
    if-ne p2, v4, :cond_3

    .line 505
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 506
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v2, v2, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v3, 0x7f090125

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 510
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$24(Lcom/vkontakte/android/PostViewActivity;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_5

    :cond_4
    if-ne p2, v2, :cond_5

    .line 511
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PostViewActivity;->access$25(Lcom/vkontakte/android/PostViewActivity;I)V

    goto :goto_0

    .line 514
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$24(Lcom/vkontakte/android/PostViewActivity;)Z

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

    .line 515
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

    .line 516
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/PostViewActivity$16;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
