.class Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;
.super Ljava/lang/Object;
.source "GCMBroadcastReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GCMBroadcastReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GCMBroadcastReceiver$1;Lcom/vkontakte/android/Message;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->this$1:Lcom/vkontakte/android/GCMBroadcastReceiver$1;

    iput-object p2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iput-object p3, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v4, 0x0

    .line 185
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 186
    .local v8, "user":Lcom/vkontakte/android/UserProfile;
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v0, v1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    .line 187
    .local v0, "notifyText":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-boolean v1, v1, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_user_name_acc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/vkontakte/android/Message;->getServiceMessageText(Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 192
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 193
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v6, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    iget-object v2, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iget-object v3, v8, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->peer:I

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 212
    return-void

    .line 195
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    instance-of v1, v6, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    goto :goto_0

    :cond_4
    instance-of v1, v6, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v1, :cond_5

    .line 198
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    goto :goto_0

    :cond_5
    instance-of v1, v6, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v1, :cond_7

    move-object v7, v6

    .line 200
    check-cast v7, Lcom/vkontakte/android/DocumentAttachment;

    .line 201
    .local v7, "da":Lcom/vkontakte/android/DocumentAttachment;
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, v7, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-nez v1, :cond_6

    const v1, 0x7f0801d3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    goto :goto_0

    .line 201
    :cond_6
    const v1, 0x7f080031

    goto :goto_1

    .line 202
    .end local v7    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_7
    instance-of v1, v6, Lcom/vkontakte/android/PostAttachment;

    if-eqz v1, :cond_8

    .line 203
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    goto :goto_0

    :cond_8
    instance-of v1, v6, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    goto :goto_0

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_9
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 208
    const v1, 0x7f0d001d

    iget-object v2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
