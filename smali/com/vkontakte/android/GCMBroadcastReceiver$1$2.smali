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

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 10
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
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 143
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 144
    .local v8, "user":Lcom/vkontakte/android/UserProfile;
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v0, v1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    .line 145
    .local v0, "notifyText":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-boolean v1, v1, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    const-string v2, "%act"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "%act:chat_photo_update"

    iget-object v2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, v8, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0601fc

    :goto_0
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v5, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v5, v3, v9

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    const-string v1, "%act:chat_photo_remove"

    iget-object v2, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v2, v2, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, v8, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_5

    const v1, 0x7f06020b

    :goto_1
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v5, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v5, v3, v9

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 155
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 156
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v6, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v1, :cond_6

    .line 157
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    iget-object v2, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iget-object v3, v8, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget v5, v5, Lcom/vkontakte/android/Message;->peer:I

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 175
    return-void

    .line 147
    :cond_4
    const v1, 0x7f0601fb

    goto :goto_0

    .line 150
    :cond_5
    const v1, 0x7f06020a

    goto :goto_1

    .line 158
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_6
    instance-of v1, v6, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v1, :cond_7

    .line 159
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    goto :goto_2

    :cond_7
    instance-of v1, v6, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v1, :cond_8

    .line 161
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    goto :goto_2

    :cond_8
    instance-of v1, v6, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v1, :cond_a

    move-object v7, v6

    .line 163
    check-cast v7, Lcom/vkontakte/android/DocumentAttachment;

    .line 164
    .local v7, "da":Lcom/vkontakte/android/DocumentAttachment;
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, v7, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-nez v1, :cond_9

    const v1, 0x7f0601ba

    :goto_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    goto :goto_2

    .line 164
    :cond_9
    const v1, 0x7f060017

    goto :goto_3

    .line 165
    .end local v7    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_a
    instance-of v1, v6, Lcom/vkontakte/android/PostAttachment;

    if-eqz v1, :cond_b

    .line 166
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    goto :goto_2

    :cond_b
    instance-of v1, v6, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    goto :goto_2

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_c
    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vkontakte/android/GCMBroadcastReceiver$1$2;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v1, v1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 171
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

    goto/16 :goto_2
.end method
