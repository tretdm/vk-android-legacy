.class Lcom/vkontakte/android/fragments/PostViewFragment$27;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallAddComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->sendComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field private final synthetic val$atts:Ljava/util/ArrayList;

.field private final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->val$txt:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->val$atts:Ljava/util/ArrayList;

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/PostViewFragment$27;)Lcom/vkontakte/android/fragments/PostViewFragment;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f060051

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1080
    return-void
.end method

.method public success(I)V
    .locals 19
    .param p1, "cid"    # I

    .prologue
    .line 1021
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$15(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1023
    .local v16, "prefs":Landroid/content/SharedPreferences;
    new-instance v9, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v9}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 1024
    .local v9, "comment":Lcom/vkontakte/android/NewsComment;
    move/from16 v0, p1

    iput v0, v9, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 1025
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->val$txt:Ljava/lang/String;

    const-string v2, "\\[(id|club)([\\d]+)\\|([^\\]]+)\\]"

    const-string v3, "$3"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/vkontakte/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 1026
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iput v1, v9, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 1027
    const-string v1, "username"

    const-string v2, "DELETED"

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 1028
    const-string v1, "userphoto"

    const-string v2, "http://vkontakte.ru/images/question_b.gif"

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 1029
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 1030
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 1031
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->val$atts:Ljava/util/ArrayList;

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 1033
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 1034
    .local v15, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x42be0000    # 95.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int v17, v1, v2

    .line 1035
    .local v17, "tSize":I
    const/16 v1, 0x25c

    move/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1036
    move/from16 v0, v17

    int-to-float v1, v0

    const v2, 0x3f2a7efa    # 0.666f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v9, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 1038
    const-string v1, "\\[(id|club)([\\d-]+)\\|([^\\]]+)\\]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->val$txt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 1039
    .local v14, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1044
    iget-object v1, v9, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->extractLinks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1046
    .local v13, "lnks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1049
    iget-object v1, v9, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->time:Ljava/lang/String;

    .line 1051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$36(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1052
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$36(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/NewsComment;->resp_to:I

    .line 1053
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$37(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    .line 1055
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$13(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$28(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$27$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$27;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 1067
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 1068
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v11, "intent":Landroid/content/Intent;
    const-string v1, "post_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1070
    const-string v1, "owner_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    const-string v1, "comments"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1072
    const-string v1, "likes"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const-string v1, "liked"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1075
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->numComments:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/fragments/PostViewFragment$27;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v8

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vkontakte/android/cache/NewsfeedCache;->update(Landroid/content/Context;IIIIIZZ)V

    .line 1076
    return-void

    .line 1040
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "lnks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v1, "club"

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1041
    .local v10, "grp":Z
    iget-object v2, v9, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "vkontakte://profile/"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_2

    const-string v1, "-"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v14, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1042
    iget-object v1, v9, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1041
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 1046
    .end local v10    # "grp":Z
    .restart local v13    # "lnks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1047
    .local v12, "lnk":Ljava/lang/String;
    iget-object v2, v9, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vklink://view/?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
