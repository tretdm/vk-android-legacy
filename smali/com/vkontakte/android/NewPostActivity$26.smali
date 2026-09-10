.class Lcom/vkontakte/android/NewPostActivity$26;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "NewPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->post()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field private final synthetic val$atts:Ljava/util/ArrayList;

.field private final synthetic val$edit:Lcom/vkontakte/android/NewsEntry;

.field private final synthetic val$ptext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$ptext:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    iput-object p4, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$atts:Ljava/util/ArrayList;

    .line 1045
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 5
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1166
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v1, 0xd6

    if-ne p1, v1, :cond_4

    .line 1167
    const/4 v0, 0x0

    .line 1168
    .local v0, "err":Ljava/lang/String;
    const-string v1, "already scheduled for this time"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const v2, 0x7f080304

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1170
    :cond_0
    const-string v1, "posts on a day"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const v2, 0x7f080305

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1172
    :cond_1
    const-string v1, "schedule more than"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1173
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const v2, 0x7f080306

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1174
    :cond_2
    if-eqz v0, :cond_3

    .line 1175
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1183
    .end local v0    # "err":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 1178
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_5

    const/16 v1, 0x64

    if-ne p1, v1, :cond_5

    const-string v1, "publish_date"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1179
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080301

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1182
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 1047
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1048
    .local v3, "prefs":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "edit"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$24(Lcom/vkontakte/android/NewPostActivity;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1049
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080199

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1050
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "edit"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 1051
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1052
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 1053
    :cond_0
    const/16 v4, 0x800

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1054
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.POST_DELETED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "owner_id"

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    const-string v4, "post_id"

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1057
    const-string v4, "post"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1058
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/NewPostActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 1060
    const/16 v4, 0x800

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1062
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$ptext:Ljava/lang/String;

    :goto_0
    iput-object v4, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 1063
    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1064
    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1065
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->clear()V

    .line 1066
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1067
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1068
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "comment"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1069
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Lcom/vkontakte/android/NewPostActivity;->setResult(ILandroid/content/Intent;)V

    .line 1070
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->finish()V

    .line 1164
    :cond_2
    :goto_1
    return-void

    .line 1062
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$ptext:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1073
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$4(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1074
    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/NewPostActivity;->access$4(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v4, :cond_7

    .line 1077
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$25(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/Attachment;

    move-result-object v4

    if-nez v4, :cond_6

    .line 1078
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-lez v4, :cond_9

    .line 1079
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    new-instance v5, Lcom/vkontakte/android/SignatureLinkAttachment;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://vkontakte.ru/id"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    iget-object v7, v7, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/vkontakte/android/NewPostActivity;->access$10(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/Attachment;)V

    .line 1083
    :cond_6
    :goto_2
    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/NewPostActivity;->access$25(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/Attachment;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    :cond_7
    const/16 v4, 0x4000

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v5, v5, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1086
    const/16 v4, 0x2000

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v5, v5, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1087
    const/16 v4, 0x200

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v5, v5, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1088
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.POST_REPLACED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "entry"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1090
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/NewPostActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1091
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/NewPostActivity;->setResult(I)V

    .line 1092
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->finish()V

    .line 1093
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_8

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/vkontakte/android/cache/UserWallCache;->hasEntries(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_8

    const/16 v4, 0x1000

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1094
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4, v5}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 1095
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 1097
    :cond_8
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1098
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v5, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/cache/NewsfeedCache;->remove(IILandroid/content/Context;)V

    .line 1099
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1081
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    new-instance v5, Lcom/vkontakte/android/SignatureLinkAttachment;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://vkontakte.ru/id"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "username"

    const-string v8, "DELETED"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/vkontakte/android/NewPostActivity;->access$10(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_2

    .line 1103
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_a
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1104
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080307

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v9}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v10}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v10, v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1107
    :goto_3
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 1108
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "post_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 1109
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$ptext:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 1110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 1111
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v4, v4, Lcom/vkontakte/android/NewPostActivity;->uid:I

    :goto_4
    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 1112
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v4, v4, Lcom/vkontakte/android/NewPostActivity;->uid:I

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 1113
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "group_title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    iput-object v4, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 1114
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "group_photo"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    iput-object v4, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 1115
    const/16 v4, 0xc2

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 1116
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v4, v4, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-gez v4, :cond_c

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v4, :cond_c

    .line 1117
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v4, v4, Lcom/vkontakte/android/NewPostActivity;->uid:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/data/Groups;->getById(I)Lcom/vkontakte/android/api/Group;

    move-result-object v1

    .line 1118
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    if-eqz v1, :cond_b

    iget v4, v1, Lcom/vkontakte/android/api/Group;->isClosed:I

    if-nez v4, :cond_c

    .line 1119
    :cond_b
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 1121
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    :cond_c
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v4, :cond_d

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 1122
    :cond_d
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_e

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 1123
    :cond_e
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "suggest"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 1124
    :cond_f
    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$atts:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1125
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->clear()V

    .line 1129
    const/4 v4, 0x2

    iput v4, v0, Lcom/vkontakte/android/NewsEntry;->platform:I

    .line 1131
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$4(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1132
    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/NewPostActivity;->access$4(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_10
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v4, :cond_12

    .line 1136
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$25(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/Attachment;

    move-result-object v4

    if-nez v4, :cond_11

    .line 1137
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-lez v4, :cond_1d

    .line 1138
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    new-instance v5, Lcom/vkontakte/android/SignatureLinkAttachment;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://vkontakte.ru/id"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    iget v7, v7, Lcom/vkontakte/android/NewsEntry;->userID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    iget-object v7, v7, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/vkontakte/android/NewPostActivity;->access$10(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/Attachment;)V

    .line 1142
    :cond_11
    :goto_7
    iget-object v4, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/NewPostActivity;->access$25(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/Attachment;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    :cond_12
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1146
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "entry"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1147
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/NewPostActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1148
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$24(Lcom/vkontakte/android/NewPostActivity;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_14

    .line 1149
    :cond_13
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v4, "com.vkontakte.android.POST_DELETED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "owner_id"

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1151
    const-string v4, "post_id"

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1152
    const-string v4, "post"

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$26;->val$edit:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1153
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/NewPostActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1155
    :cond_14
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v4, v4, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_15

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/vkontakte/android/cache/UserWallCache;->hasEntries(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_15

    .line 1156
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 1158
    :cond_15
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v4, v4, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_16

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v4, v4, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-gez v4, :cond_17

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v4, v4, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v4, :cond_17

    :cond_16
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$19(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "suggest"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 1159
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1160
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 1162
    :cond_17
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/NewPostActivity;->setResult(I)V

    .line 1163
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->finish()V

    goto/16 :goto_1

    .line 1106
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_18
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "suggest"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_19

    const v4, 0x7f080199

    :goto_8
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_19
    const v4, 0x7f080059

    goto :goto_8

    .line 1111
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_1a
    sget v4, Lcom/vkontakte/android/Global;->uid:I

    goto/16 :goto_4

    .line 1113
    :cond_1b
    const-string v4, "username"

    const-string v5, "DELETED"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 1114
    :cond_1c
    const-string v4, "userphoto"

    const-string v5, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 1140
    :cond_1d
    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$26;->this$0:Lcom/vkontakte/android/NewPostActivity;

    new-instance v5, Lcom/vkontakte/android/SignatureLinkAttachment;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://vkontakte.ru/id"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "username"

    const-string v8, "DELETED"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/vkontakte/android/NewPostActivity;->access$10(Lcom/vkontakte/android/NewPostActivity;Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_7
.end method
