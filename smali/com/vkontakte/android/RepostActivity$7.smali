.class Lcom/vkontakte/android/RepostActivity$7;
.super Ljava/lang/Object;
.source "RepostActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallRepost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/RepostActivity;->doRepostWithComment(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/RepostActivity;

.field private final synthetic val$comment:Ljava/lang/String;

.field private final synthetic val$gid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/RepostActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    iput p2, p0, Lcom/vkontakte/android/RepostActivity$7;->val$gid:I

    iput-object p3, p0, Lcom/vkontakte/android/RepostActivity$7;->val$comment:Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    const v1, 0x7f080068

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/RepostActivity;->finish()V

    .line 236
    return-void
.end method

.method public success(III)V
    .locals 11
    .param p1, "repostID"    # I
    .param p2, "reposts"    # I
    .param p3, "likes"    # I

    .prologue
    const/4 v6, 0x0

    .line 173
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "repost id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/vkontakte/android/RepostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 175
    .local v9, "prefs":Landroid/content/SharedPreferences;
    new-instance v8, Lcom/vkontakte/android/NewsEntry;

    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/vkontakte/android/NewsEntry;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 176
    .local v8, "newPost":Lcom/vkontakte/android/NewsEntry;
    iget v0, p0, Lcom/vkontakte/android/RepostActivity$7;->val$gid:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0xc

    iput v1, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 177
    :cond_0
    iput p1, v8, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 179
    iget v0, p0, Lcom/vkontakte/android/RepostActivity$7;->val$gid:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/vkontakte/android/RepostActivity$7;->val$gid:I

    neg-int v0, v0

    :goto_0
    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->userID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 180
    iget v0, p0, Lcom/vkontakte/android/RepostActivity$7;->val$gid:I

    if-nez v0, :cond_6

    const-string v0, "username"

    const-string v1, ""

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 181
    iget v0, p0, Lcom/vkontakte/android/RepostActivity$7;->val$gid:I

    if-nez v0, :cond_7

    const-string v0, "userphoto"

    const-string v1, ""

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->val$comment:Ljava/lang/String;

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    .line 184
    iput v6, v8, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 185
    iput v6, v8, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 186
    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    and-int/lit8 v0, v0, -0xd

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 187
    iget v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit16 v0, v0, 0xa2

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 191
    iget-object v0, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/RepostAttachment;

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    :cond_3
    iget-object v10, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Lcom/vkontakte/android/RepostAttachment;

    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v2}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    iget-object v3, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v3}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    iget-object v4, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v4}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v5}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 215
    :goto_3
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/RepostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 216
    iget v0, p0, Lcom/vkontakte/android/RepostActivity$7;->val$gid:I

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/RepostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 218
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "entry"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/RepostActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    iget v0, p0, Lcom/vkontakte/android/RepostActivity$7;->val$gid:I

    if-nez v0, :cond_a

    .line 222
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    const v1, 0x7f0801e7

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    :goto_4
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iput p2, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 227
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iput p3, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$7(Lcom/vkontakte/android/RepostActivity;)V

    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/RepostActivity;->finish()V

    .line 230
    return-void

    .line 179
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_5
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    goto/16 :goto_0

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$5(Lcom/vkontakte/android/RepostActivity;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$6(Lcom/vkontakte/android/RepostActivity;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 201
    :cond_8
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    goto/16 :goto_3

    .line 208
    :cond_9
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->time:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    invoke-static {v0}, Lcom/vkontakte/android/RepostActivity;->access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    iput-object v0, v8, Lcom/vkontakte/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    goto/16 :goto_3

    .line 224
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_a
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity$7;->this$0:Lcom/vkontakte/android/RepostActivity;

    const v1, 0x7f0801e8

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4
.end method
