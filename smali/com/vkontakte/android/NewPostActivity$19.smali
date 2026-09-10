.class Lcom/vkontakte/android/NewPostActivity$19;
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

.field private final synthetic val$ptext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$19;->val$ptext:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/NewPostActivity$19;->val$atts:Ljava/util/ArrayList;

    .line 754
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 826
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 756
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "edit"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 757
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060180

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 758
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "edit"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 759
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->val$ptext:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 760
    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 761
    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$6(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 762
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewPostActivity;->access$6(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->clear()V

    .line 763
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 764
    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v3, :cond_1

    .line 767
    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$13(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/Attachment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.POST_REPLACED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "entry"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 771
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/NewPostActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 772
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewPostActivity;->setResult(I)V

    .line 773
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewPostActivity;->finish()V

    .line 774
    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_2

    .line 775
    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v3, v4}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 776
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 778
    :cond_2
    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v3, v4, :cond_3

    .line 779
    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v5, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/cache/NewsfeedCache;->remove(IILandroid/content/Context;)V

    .line 780
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 823
    :cond_3
    :goto_0
    return-void

    .line 784
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v4}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 785
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 786
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 787
    .restart local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "post_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 788
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->val$ptext:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 790
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v3, v3, Lcom/vkontakte/android/NewPostActivity;->uid:I

    :goto_1
    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 791
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v3, v3, Lcom/vkontakte/android/NewPostActivity;->uid:I

    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 792
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "group_title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 793
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "group_photo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 794
    const/16 v3, 0xc2

    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 795
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 796
    :cond_5
    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$19;->val$atts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 797
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewPostActivity;->access$6(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/AttachmentsEditorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->clear()V

    .line 801
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 803
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 804
    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/NewPostActivity;->signedFromGroup:Z

    if-eqz v3, :cond_7

    .line 808
    iget-object v3, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v4, Lcom/vkontakte/android/SignatureLinkAttachment;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://vkontakte.ru/id"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "username"

    const-string v7, "DELETED"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/vkontakte/android/SignatureLinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "entry"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 813
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/NewPostActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 815
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v3, v3, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_8

    .line 816
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 818
    :cond_8
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v3, v3, Lcom/vkontakte/android/NewPostActivity;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget v3, v3, Lcom/vkontakte/android/NewPostActivity;->uid:I

    if-gez v3, :cond_a

    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/NewPostActivity;->fromGroup:Z

    if-eqz v3, :cond_a

    .line 819
    :cond_9
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 821
    :cond_a
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3, v8}, Lcom/vkontakte/android/NewPostActivity;->setResult(I)V

    .line 822
    iget-object v3, p0, Lcom/vkontakte/android/NewPostActivity$19;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/NewPostActivity;->finish()V

    goto/16 :goto_0

    .line 790
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_b
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    goto/16 :goto_1

    .line 792
    :cond_c
    const-string v3, "username"

    const-string v4, "DELETED"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 793
    :cond_d
    const-string v3, "userphoto"

    const-string v4, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3
.end method
