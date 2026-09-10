.class Lcom/vkontakte/android/NewPostActivity$23;
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

.field private final synthetic val$ptext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$23;->val$ptext:Ljava/lang/String;

    .line 774
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 817
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x0

    .line 776
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 777
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v9}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 778
    .local v4, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 779
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "post_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 780
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->val$ptext:Ljava/lang/String;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 782
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v5, v5, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v5, v5, Lcom/vkontakte/android/NewPostActivity;->uid:I

    :goto_0
    iput v5, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 783
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v5, v5, Lcom/vkontakte/android/NewPostActivity;->uid:I

    iput v5, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 784
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v5, v5, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "group_title"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 785
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v5, v5, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "group_photo"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    iput-object v5, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 786
    const/16 v5, 0x42

    iput v5, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 787
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v5

    if-lt v2, v5, :cond_6

    .line 795
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 797
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/NewPostActivity;->access$1(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 798
    iget-object v5, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v6}, Lcom/vkontakte/android/NewPostActivity;->access$1(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v5, v5, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v5, :cond_1

    .line 802
    iget-object v5, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    new-instance v6, Lcom/vkontakte/android/LinkAttachment;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://vkontakte.ru/id"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "- "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "username"

    const-string v10, "DELETED"

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 806
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "entry"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 807
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/NewPostActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 809
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v5, v5, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v5, v6, :cond_2

    .line 810
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v1, v5}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 812
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/NewPostActivity;->setResult(I)V

    .line 813
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/NewPostActivity;->finish()V

    .line 814
    return-void

    .line 782
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    sget v5, Lcom/vkontakte/android/Global;->uid:I

    goto/16 :goto_0

    .line 784
    :cond_4
    const-string v5, "username"

    const-string v6, "DELETED"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 785
    :cond_5
    const-string v5, "userphoto"

    const-string v6, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 789
    .restart local v2    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/NewPostActivity;->access$12(Lcom/vkontakte/android/NewPostActivity;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/NewPostActivity$23;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v6}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 790
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    if-eqz v0, :cond_7

    iget-object v5, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method
