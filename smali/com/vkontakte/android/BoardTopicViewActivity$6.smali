.class Lcom/vkontakte/android/BoardTopicViewActivity$6;
.super Ljava/lang/Object;
.source "BoardTopicViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardAddComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicViewActivity;->sendComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

.field private final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->val$txt:Ljava/lang/String;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/BoardTopicViewActivity$6;)Lcom/vkontakte/android/BoardTopicViewActivity;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 627
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$5(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$5(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$5(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const v1, 0x7f090058

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 631
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$37(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 632
    return-void
.end method

.method public success(I)V
    .locals 9
    .param p1, "cid"    # I

    .prologue
    const v6, 0x7f060058

    const/4 v8, 0x0

    .line 586
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$5(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f06005f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$5(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f060060

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$5(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 589
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$5(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$35(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 592
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$14(Lcom/vkontakte/android/BoardTopicViewActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v5}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$36(Lcom/vkontakte/android/BoardTopicViewActivity;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x14

    if-ge v4, v5, :cond_0

    .line 593
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const v5, 0x7f090191

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 624
    :goto_0
    return-void

    .line 596
    :cond_0
    const-string v4, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 597
    .local v3, "ptn1":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/vkontakte/android/BoardTopicViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 598
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/vkontakte/android/api/BoardComment;

    invoke-direct {v0}, Lcom/vkontakte/android/api/BoardComment;-><init>()V

    .line 599
    .local v0, "comment":Lcom/vkontakte/android/api/BoardComment;
    iput p1, v0, Lcom/vkontakte/android/api/BoardComment;->id:I

    .line 600
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->val$txt:Ljava/lang/String;

    const-string v5, "\\[post(\\d+)\\|([^\\]]+)\\]"

    const-string v6, "$2"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    .line 601
    sget v4, Lcom/vkontakte/android/Global;->uid:I

    iput v4, v0, Lcom/vkontakte/android/api/BoardComment;->uid:I

    .line 602
    const-string v4, "username"

    const-string v5, "DELETED"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    .line 603
    const-string v4, "userphoto"

    const-string v5, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    .line 604
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    .line 605
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v0, Lcom/vkontakte/android/api/BoardComment;->time:I

    .line 607
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    .line 608
    iget-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 609
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 613
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->updateList()V

    .line 615
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/BoardTopicViewActivity$6$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/BoardTopicViewActivity$6$1;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity$6;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 622
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicViewActivity$6;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v4, v8}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$37(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    goto/16 :goto_0

    .line 610
    :cond_1
    iget-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vklink://view/?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v4, v0, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
