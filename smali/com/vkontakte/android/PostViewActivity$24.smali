.class Lcom/vkontakte/android/PostViewActivity$24;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallAddComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->sendComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;

.field private final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    iput-object p2, p0, Lcom/vkontakte/android/PostViewActivity$24;->val$txt:Ljava/lang/String;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PostViewActivity$24;)Lcom/vkontakte/android/PostViewActivity;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 779
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 782
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const v1, 0x7f090057

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 783
    return-void
.end method

.method public success(I)V
    .locals 9
    .param p1, "cid"    # I

    .prologue
    const v6, 0x7f060052

    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 740
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f060057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f060058

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 742
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 743
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$12(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/PostViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 745
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 746
    .local v0, "comment":Lcom/vkontakte/android/NewsComment;
    iput p1, v0, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 747
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->val$txt:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    .line 748
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 749
    const-string v3, "username"

    const-string v4, "DELETED"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 750
    const-string v3, "userphoto"

    const-string v4, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 751
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 752
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/PostViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 753
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$32(Lcom/vkontakte/android/PostViewActivity;)I

    move-result v3

    if-lez v3, :cond_0

    .line 754
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$32(Lcom/vkontakte/android/PostViewActivity;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsComment;->resp_to:I

    .line 755
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$33(Lcom/vkontakte/android/PostViewActivity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    .line 757
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/PostViewActivity;->updateList()V

    .line 759
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/PostViewActivity;->access$16(Lcom/vkontakte/android/PostViewActivity;I)V

    .line 760
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$13(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/PostViewActivity$24$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/PostViewActivity$24$1;-><init>(Lcom/vkontakte/android/PostViewActivity$24;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 768
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v4, v3, Lcom/vkontakte/android/NewsEntry;->numComments:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 769
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "post_id"

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    const-string v3, "owner_id"

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    const-string v3, "comments"

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    const-string v3, "likes"

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    const-string v3, "liked"

    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$5(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 775
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$24;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/PostViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 776
    return-void
.end method
