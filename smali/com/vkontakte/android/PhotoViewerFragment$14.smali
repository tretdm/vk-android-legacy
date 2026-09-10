.class Lcom/vkontakte/android/PhotoViewerFragment$14;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerFragment;->showCommentOptions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerFragment;

.field private final synthetic val$canAdmin:Z

.field private final synthetic val$comm:Lcom/vkontakte/android/NewsComment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerFragment;Lcom/vkontakte/android/NewsComment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$comm:Lcom/vkontakte/android/NewsComment;

    iput-boolean p3, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$canAdmin:Z

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x2

    .line 424
    if-nez p2, :cond_0

    .line 425
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->startActivity(Landroid/content/Intent;)V

    .line 444
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 432
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 433
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v2, v2, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090126

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 437
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :cond_1
    iget-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$canAdmin:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_3

    :cond_2
    if-ne p2, v2, :cond_3

    .line 438
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->cid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/PhotoViewerFragment;->access$13(Lcom/vkontakte/android/PhotoViewerFragment;I)V

    goto :goto_0

    .line 441
    :cond_3
    iget-boolean v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$canAdmin:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget v3, v3, Lcom/vkontakte/android/NewsComment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_5

    :cond_4
    const/4 v2, 0x3

    :cond_5
    sub-int/2addr p2, v2

    .line 442
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->val$comm:Lcom/vkontakte/android/NewsComment;

    iget-object v2, v2, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 443
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerFragment$14;->this$0:Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/PhotoViewerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
