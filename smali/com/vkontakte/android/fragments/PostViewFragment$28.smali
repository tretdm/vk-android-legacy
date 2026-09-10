.class Lcom/vkontakte/android/fragments/PostViewFragment$28;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallAddComment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field final synthetic val$atts:Ljava/util/List;

.field final synthetic val$clearCommentBar:Z

.field final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;ZLjava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$clearCommentBar:Z

    iput-object p3, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$txt:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$atts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ce

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1171
    return-void
.end method

.method public success(I)V
    .locals 20
    .param p1, "cid"    # I

    .prologue
    .line 1098
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$clearCommentBar:Z

    if-eqz v1, :cond_0

    .line 1099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1200(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1200(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/WriteBar;->clearAttachments()V

    .line 1102
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1103
    .local v17, "prefs":Landroid/content/SharedPreferences;
    new-instance v9, Lcom/vkontakte/android/NewsComment;

    invoke-direct {v9}, Lcom/vkontakte/android/NewsComment;-><init>()V

    .line 1104
    .local v9, "comment":Lcom/vkontakte/android/NewsComment;
    move/from16 v0, p1

    iput v0, v9, Lcom/vkontakte/android/NewsComment;->cid:I

    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$txt:Ljava/lang/String;

    const-string v2, "\\[(id|club)([\\d]+)\\|([^\\]]+)\\]"

    const-string v3, "$3"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/vkontakte/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 1106
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iput v1, v9, Lcom/vkontakte/android/NewsComment;->uid:I

    .line 1107
    const-string v1, "username"

    const-string v2, "DELETED"

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->userName:Ljava/lang/String;

    .line 1108
    const-string v1, "userphoto"

    const-string v2, "http://vkontakte.ru/images/question_b.gif"

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 1109
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    .line 1110
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    .line 1111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 1112
    iget-object v1, v9, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$atts:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$atts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$atts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/vkontakte/android/StickerAttachment;

    if-nez v1, :cond_2

    .line 1114
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/vkontakte/android/NewsComment;->canEdit:Z

    .line 1116
    :cond_2
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 1117
    .local v16, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v16

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x42be0000    # 95.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int v18, v1, v2

    .line 1118
    .local v18, "tSize":I
    const/16 v1, 0x25c

    move/from16 v0, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1119
    move/from16 v0, v18

    int-to-float v1, v0

    const v2, 0x3f2a7efa    # 0.666f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v9, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 1121
    const-string v1, "\\[(id|club)([\\d-]+)\\|([^\\]]+)\\]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$txt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 1122
    .local v15, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1123
    const-string v1, "club"

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1124
    .local v10, "grp":Z
    iget-object v2, v9, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vkontakte://profile/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v10, :cond_3

    const-string v1, "-"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1125
    iget-object v1, v9, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1124
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 1127
    .end local v10    # "grp":Z
    :cond_4
    iget-object v1, v9, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->extractLinks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1129
    .local v14, "lnks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1130
    .local v13, "lnk":Ljava/lang/String;
    iget-object v1, v9, Lcom/vkontakte/android/NewsComment;->links:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vklink://view/?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1132
    .end local v13    # "lnk":Ljava/lang/String;
    :cond_5
    iget-object v1, v9, Lcom/vkontakte/android/NewsComment;->linkTitles:Ljava/util/Vector;

    invoke-virtual {v1, v14}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v9, Lcom/vkontakte/android/NewsComment;->time:I

    .line 1134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2500(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v1

    if-lez v1, :cond_6

    .line 1135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2500(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v1

    iput v1, v9, Lcom/vkontakte/android/NewsComment;->resp_to:I

    .line 1136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2700(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/NewsComment;->respToName:Ljava/lang/String;

    .line 1138
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$800(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1140
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->val$clearCommentBar:Z

    if-eqz v1, :cond_7

    .line 1141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2502(Lcom/vkontakte/android/fragments/PostViewFragment;I)I

    .line 1142
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/fragments/PostViewFragment$28$1;-><init>(Lcom/vkontakte/android/fragments/PostViewFragment$28;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 1158
    new-instance v12, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v12, "intent":Landroid/content/Intent;
    const-string v1, "post_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1160
    const-string v1, "owner_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    const-string v1, "comments"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1162
    const-string v1, "likes"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    const-string v1, "liked"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1165
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v5

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->numComments:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/fragments/PostViewFragment$28;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v8

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/vkontakte/android/cache/NewsfeedCache;->update(Landroid/content/Context;IIIIIZZ)V

    .line 1166
    return-void
.end method
