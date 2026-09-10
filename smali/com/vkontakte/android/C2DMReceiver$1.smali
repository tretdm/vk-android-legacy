.class Lcom/vkontakte/android/C2DMReceiver$1;
.super Ljava/lang/Object;
.source "C2DMReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetMessageInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/C2DMReceiver;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/C2DMReceiver;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$mid:I

.field private final synthetic val$num:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/C2DMReceiver;IIILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/C2DMReceiver$1;->this$0:Lcom/vkontakte/android/C2DMReceiver;

    iput p2, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$mid:I

    iput p3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$num:I

    iput p4, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$uid:I

    iput-object p5, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$text:Ljava/lang/String;

    iput-object p6, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$context:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "photo"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "read"    # Z

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 90
    if-eqz p3, :cond_1

    .line 91
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$mid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already read - ignored!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$num:I

    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "prevUid":I
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 97
    .local v2, "up":Lcom/vkontakte/android/UserProfile;
    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$uid:I

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 98
    iput-object p2, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 99
    iput-object p1, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 100
    sget-object v3, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    iget v1, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 101
    :cond_2
    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$uid:I

    if-eq v1, v3, :cond_5

    if-eqz v1, :cond_5

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-le v3, v4, :cond_5

    const/4 v3, 0x0

    sput-object v3, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    .line 105
    :goto_1
    sput-object v2, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 106
    iget-object v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$text:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/String;Z)V

    .line 107
    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$uid:I

    invoke-static {v3}, Lcom/vkontakte/android/LongPollService;->checkAndPreload(I)V

    .line 109
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    if-nez v3, :cond_4

    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 110
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 123
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$context:Landroid/content/Context;

    iget v4, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$uid:I

    iget-object v5, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$text:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/vkontakte/android/cache/DialogsCache;->update(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    new-instance v0, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 129
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iput-boolean v6, v0, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v8

    long-to-int v3, v3

    iput v3, v0, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 131
    iget-object v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$text:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    .line 132
    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$mid:I

    iput v3, v0, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 133
    iput-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 134
    iput-boolean v6, v0, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 135
    iput v7, v0, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 137
    iget-object v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/DialogsCache;->add(Lcom/vkontakte/android/DialogEntry;Landroid/content/Context;)V

    .line 138
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    if-nez v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 139
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v3, v6, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 140
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    goto/16 :goto_0

    .line 103
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_5
    sput-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto :goto_1

    .line 110
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 111
    .restart local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v5, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$uid:I

    if-ne v4, v5, :cond_3

    .line 112
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$text:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v8

    long-to-int v3, v3

    iput v3, v0, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 115
    iput-boolean v6, v0, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 116
    iget v3, p0, Lcom/vkontakte/android/C2DMReceiver$1;->val$mid:I

    iput v3, v0, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 117
    iput v7, v0, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 118
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v3, v6, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_2
.end method
