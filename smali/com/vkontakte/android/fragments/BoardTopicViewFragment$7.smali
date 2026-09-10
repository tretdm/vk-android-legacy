.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardAddComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->sendComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

.field private final synthetic val$atts:Ljava/util/ArrayList;

.field private final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->val$txt:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->val$atts:Ljava/util/ArrayList;

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f060051

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 739
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$39(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 740
    return-void
.end method

.method public success(I)V
    .locals 11
    .param p1, "cid"    # I

    .prologue
    const/4 v10, 0x0

    .line 685
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$4(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$4(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/WriteBar;->clearAttachments()V

    .line 687
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$37(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 689
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "tid"

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 690
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$38(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "tid"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 692
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6, v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$39(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 693
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$17(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 694
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$12(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    .line 735
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$15(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$40(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x14

    if-ge v6, v7, :cond_1

    .line 699
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f060130

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 702
    :cond_1
    const-string v6, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 703
    .local v4, "ptn1":Ljava/util/regex/Pattern;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v10}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 704
    .local v3, "prefs":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/vkontakte/android/api/BoardComment;

    invoke-direct {v0}, Lcom/vkontakte/android/api/BoardComment;-><init>()V

    .line 705
    .local v0, "comment":Lcom/vkontakte/android/api/BoardComment;
    iput p1, v0, Lcom/vkontakte/android/api/BoardComment;->id:I

    .line 706
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->val$txt:Ljava/lang/String;

    const-string v7, "\\[post(\\d+)\\|([^\\]]+)\\]"

    const-string v8, "$2"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    .line 707
    sget v6, Lcom/vkontakte/android/Global;->uid:I

    iput v6, v0, Lcom/vkontakte/android/api/BoardComment;->uid:I

    .line 708
    const-string v6, "username"

    const-string v7, "DELETED"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    .line 709
    const-string v6, "userphoto"

    const-string v7, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    .line 710
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    .line 711
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v0, Lcom/vkontakte/android/api/BoardComment;->time:I

    .line 713
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    .line 714
    iget-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->val$atts:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 715
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 716
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/high16 v7, 0x42be0000    # 95.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    sub-int v5, v6, v7

    .line 717
    .local v5, "tSize":I
    const/16 v6, 0x25c

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 718
    int-to-float v6, v5

    const v7, 0x3f2a7efa    # 0.666f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 719
    iget-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 720
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    .line 724
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 726
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 733
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6, v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$39(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    goto/16 :goto_0

    .line 721
    :cond_2
    iget-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "vklink://view/?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
