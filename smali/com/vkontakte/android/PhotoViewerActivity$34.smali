.class Lcom/vkontakte/android/PhotoViewerActivity$34;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallAddComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->sendComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;

.field private final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->val$txt:Ljava/lang/String;

    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1498
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1499
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1500
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1501
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v1, 0x7f090058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1502
    return-void
.end method

.method public success(I)V
    .locals 8
    .param p1, "cid"    # I

    .prologue
    const v6, 0x7f060058

    const/4 v5, 0x0

    .line 1467
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1468
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const v4, 0x7f060060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1469
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1470
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1471
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/PhotoViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1472
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 1473
    .local v0, "comment":Lcom/vkontakte/android/NewsComment;
    iput p1, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 1474
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->val$txt:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 1475
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 1476
    const-string v3, "username"

    const-string v4, "DELETED"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 1477
    const-string v3, "userphoto"

    const-string v4, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 1478
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 1479
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 1489
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "page"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v5, v5, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1490
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v3, :cond_0

    .line 1491
    check-cast v1, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v1    # "f":Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/PhotoViewerFragment;->addComment(Lcom/vkontakte/android/NewsComment;)V

    .line 1493
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v4, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v4, v4, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v3, v3, v4

    iget v4, v3, Lcom/vkontakte/android/Photo;->nComments:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/vkontakte/android/Photo;->nComments:I

    .line 1494
    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$34;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 1495
    return-void
.end method
