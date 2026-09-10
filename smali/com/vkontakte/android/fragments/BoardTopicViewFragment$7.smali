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

.field final synthetic val$atts:Ljava/util/ArrayList;

.field final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->val$txt:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->val$atts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ce

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 729
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3402(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 730
    return-void
.end method

.method public success(I)V
    .locals 11
    .param p1, "cid"    # I

    .prologue
    const/4 v10, 0x0

    .line 672
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$200(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$200(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/WriteBar;->clearAttachments()V

    .line 674
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3200(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 676
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "tid"

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 677
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3300(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "tid"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 679
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6, v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3402(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 680
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1400(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 681
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$900(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    .line 725
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/PaginationView;->getPageCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1300(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x14

    if-lt v6, v7, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1300(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x14

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/PaginationView;->getPageCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 688
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0d004f

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 689
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6, v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3402(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    goto :goto_0

    .line 692
    :cond_2
    const-string v6, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 693
    .local v4, "ptn1":Ljava/util/regex/Pattern;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 694
    .local v3, "prefs":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/vkontakte/android/api/BoardComment;

    invoke-direct {v0}, Lcom/vkontakte/android/api/BoardComment;-><init>()V

    .line 695
    .local v0, "comment":Lcom/vkontakte/android/api/BoardComment;
    iput p1, v0, Lcom/vkontakte/android/api/BoardComment;->id:I

    .line 696
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->val$txt:Ljava/lang/String;

    const-string v7, "\\[post(\\d+)\\|([^\\]]+)\\]"

    const-string v8, "$2"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    .line 697
    sget v6, Lcom/vkontakte/android/Global;->uid:I

    iput v6, v0, Lcom/vkontakte/android/api/BoardComment;->uid:I

    .line 698
    const-string v6, "username"

    const-string v7, "DELETED"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    .line 699
    const-string v6, "userphoto"

    const-string v7, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    .line 700
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    .line 701
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v0, Lcom/vkontakte/android/api/BoardComment;->time:I

    .line 703
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    .line 704
    iget-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->val$atts:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 705
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 706
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/high16 v7, 0x42be0000    # 95.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    sub-int v5, v6, v7

    .line 707
    .local v5, "tSize":I
    const/16 v6, 0x25c

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 708
    int-to-float v6, v5

    const v7, 0x3f2a7efa    # 0.666f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 709
    iget-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 710
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 711
    iget-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vklink://view/?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v6, v0, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 714
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 716
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 723
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$7;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6, v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3402(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    goto/16 :goto_0
.end method
