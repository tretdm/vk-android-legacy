.class Lcom/vkontakte/android/DialogsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    .line 98
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DialogsActivity$1;)Lcom/vkontakte/android/DialogsActivity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 101
    const-string v7, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    const-string v7, "peer_id"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 103
    .local v6, "uid":I
    const-string v7, "msg_id"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, "mid":I
    const-string v7, "read_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 106
    .local v5, "state":Z
    sget-object v7, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 115
    .end local v2    # "mid":I
    .end local v5    # "state":Z
    .end local v6    # "uid":I
    :cond_1
    const-string v7, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 116
    sput-boolean v10, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 117
    iget-object v7, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v7}, Lcom/vkontakte/android/DialogsActivity;->access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/RefreshableListView;->refresh()V

    .line 186
    :cond_2
    :goto_0
    return-void

    .line 106
    .restart local v2    # "mid":I
    .restart local v5    # "state":Z
    .restart local v6    # "uid":I
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 107
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget v9, v0, Lcom/vkontakte/android/DialogEntry;->mid:I

    if-ne v9, v2, :cond_0

    .line 108
    iput-boolean v5, v0, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 109
    iget-object v7, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    goto :goto_0

    .line 121
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v2    # "mid":I
    .end local v5    # "state":Z
    .end local v6    # "uid":I
    :cond_4
    const-string v7, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 122
    const-string v7, "peer_id"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 123
    .restart local v6    # "uid":I
    const-string v7, "message"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 124
    .local v3, "msg":Lcom/vkontakte/android/Message;
    sget-object v7, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 151
    new-instance v7, Lcom/vkontakte/android/api/GetMessageInfo;

    iget v8, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-direct {v7, v6, v8}, Lcom/vkontakte/android/api/GetMessageInfo;-><init>(II)V

    .line 152
    new-instance v8, Lcom/vkontakte/android/DialogsActivity$1$1;

    invoke-direct {v8, p0, v6, v3}, Lcom/vkontakte/android/DialogsActivity$1$1;-><init>(Lcom/vkontakte/android/DialogsActivity$1;ILcom/vkontakte/android/Message;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/GetMessageInfo;->setCallback(Lcom/vkontakte/android/api/GetMessageInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 184
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 124
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 125
    .restart local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v9, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v9, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v9, v6, :cond_5

    .line 126
    iget-object v7, v3, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iput-object v7, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    .line 127
    const-string v7, "is_out"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_1
    iput-boolean v7, v0, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 128
    iget v7, v3, Lcom/vkontakte/android/Message;->time:I

    iput v7, v0, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 129
    iget v7, v3, Lcom/vkontakte/android/Message;->id:I

    iput v7, v0, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 130
    const/4 v7, -0x1

    iput v7, v0, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v7, v3, Lcom/vkontakte/android/Message;->attachCount:[I

    array-length v7, v7

    if-lt v1, v7, :cond_9

    .line 137
    :goto_3
    sget-object v7, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 138
    sget-object v7, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v7, v10, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 139
    iget-object v7, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, "prevUid":I
    sget-object v7, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v7, :cond_7

    sget-object v7, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    iget v4, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 143
    :cond_7
    if-eq v4, v6, :cond_b

    sget v7, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-le v7, v8, :cond_b

    const/4 v7, 0x0

    sput-object v7, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto/16 :goto_0

    .line 127
    .end local v1    # "i":I
    .end local v4    # "prevUid":I
    :cond_8
    iget-boolean v7, v3, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_1

    .line 132
    .restart local v1    # "i":I
    :cond_9
    iget-object v7, v3, Lcom/vkontakte/android/Message;->attachCount:[I

    aget v7, v7, v1

    if-lez v7, :cond_a

    .line 133
    iput v1, v0, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    goto :goto_3

    .line 131
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 145
    .restart local v4    # "prevUid":I
    :cond_b
    iget-object v7, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    sput-object v7, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto/16 :goto_0
.end method
