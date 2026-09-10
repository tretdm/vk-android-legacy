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

    .line 99
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DialogsActivity$1;)Lcom/vkontakte/android/DialogsActivity;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    const-string v12, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 103
    const-string v12, "peer_id"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 104
    .local v11, "uid":I
    const-string v12, "msg_id"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 105
    .local v6, "mid":I
    const-string v12, "read_state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 107
    .local v9, "state":Z
    sget-object v12, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 116
    .end local v6    # "mid":I
    .end local v9    # "state":Z
    .end local v11    # "uid":I
    :cond_1
    const-string v12, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 117
    const/4 v12, 0x0

    sput-boolean v12, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 118
    iget-object v12, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-static {v12}, Lcom/vkontakte/android/DialogsActivity;->access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/vkontakte/android/ui/RefreshableListView;->refresh()V

    .line 207
    :cond_2
    :goto_0
    return-void

    .line 107
    .restart local v6    # "mid":I
    .restart local v9    # "state":Z
    .restart local v11    # "uid":I
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/DialogEntry;

    .line 108
    .local v2, "e":Lcom/vkontakte/android/DialogEntry;
    iget v13, v2, Lcom/vkontakte/android/DialogEntry;->mid:I

    if-ne v13, v6, :cond_0

    .line 109
    iput-boolean v9, v2, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 110
    iget-object v12, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v12}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    goto :goto_0

    .line 122
    .end local v2    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v6    # "mid":I
    .end local v9    # "state":Z
    .end local v11    # "uid":I
    :cond_4
    const-string v12, "com.vkontakte.android.CHAT_TITLE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 123
    const-string v12, "chat_id"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const v13, 0x77359400

    add-int v4, v12, v13

    .line 124
    .local v4, "id":I
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "title":Ljava/lang/String;
    sget-object v12, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 126
    .local v1, "de":Lcom/vkontakte/android/DialogEntry;
    iget-object v13, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v13, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v13, v4, :cond_5

    .line 127
    iget-object v13, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iput-object v10, v13, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 128
    iget-object v13, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v13}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    goto :goto_1

    .line 134
    .end local v1    # "de":Lcom/vkontakte/android/DialogEntry;
    .end local v4    # "id":I
    .end local v10    # "title":Ljava/lang/String;
    :cond_6
    const-string v12, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 135
    const-string v12, "peer_id"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 136
    .restart local v11    # "uid":I
    const-string v12, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Message;

    .line 137
    .local v7, "msg":Lcom/vkontakte/android/Message;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v12, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-lt v3, v12, :cond_7

    .line 172
    new-instance v12, Lcom/vkontakte/android/api/GetMessageInfo;

    iget v13, v7, Lcom/vkontakte/android/Message;->id:I

    invoke-direct {v12, v11, v13}, Lcom/vkontakte/android/api/GetMessageInfo;-><init>(II)V

    .line 173
    new-instance v13, Lcom/vkontakte/android/DialogsActivity$1$1;

    invoke-direct {v13, p0, v11, v7}, Lcom/vkontakte/android/DialogsActivity$1$1;-><init>(Lcom/vkontakte/android/DialogsActivity$1;ILcom/vkontakte/android/Message;)V

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/api/GetMessageInfo;->setCallback(Lcom/vkontakte/android/api/GetMessageInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v12

    .line 205
    iget-object v13, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 138
    :cond_7
    sget-object v12, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v12, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/DialogEntry;

    .line 139
    .restart local v2    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v12, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v12, v12, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v12, v11, :cond_e

    .line 140
    iget-object v12, v7, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/vkontakte/android/DialogEntry;->setLastMessage(Ljava/lang/String;)V

    .line 141
    iget-boolean v12, v7, Lcom/vkontakte/android/Message;->readState:Z

    iput-boolean v12, v2, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 142
    iget v12, v7, Lcom/vkontakte/android/Message;->time:I

    iput v12, v2, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 143
    iget v12, v7, Lcom/vkontakte/android/Message;->id:I

    iput v12, v2, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 144
    const/4 v12, -0x1

    iput v12, v2, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 145
    const-string v12, "is_out"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v2, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 146
    const v12, 0x77359400

    if-le v11, v12, :cond_9

    .line 147
    const-string v12, "sender_photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    .line 152
    :goto_3
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    iget-object v12, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    array-length v12, v12

    if-lt v5, v12, :cond_b

    .line 158
    :goto_5
    sget-object v12, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v12, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 159
    sget-object v12, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 160
    iget-object v12, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v12}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 162
    const/4 v8, 0x0

    .line 163
    .local v8, "prevUid":I
    sget-object v12, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v12, :cond_8

    sget-object v12, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    iget v8, v12, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 164
    :cond_8
    if-eq v8, v11, :cond_d

    sget v12, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_d

    const/4 v12, 0x0

    sput-object v12, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto/16 :goto_0

    .line 148
    .end local v5    # "j":I
    .end local v8    # "prevUid":I
    :cond_9
    iget-boolean v12, v2, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-eqz v12, :cond_a

    .line 149
    iget-object v12, p0, Lcom/vkontakte/android/DialogsActivity$1;->this$0:Lcom/vkontakte/android/DialogsActivity;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/vkontakte/android/DialogsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "userphoto"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    goto :goto_3

    .line 151
    :cond_a
    const-string v12, ""

    iput-object v12, v2, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    goto :goto_3

    .line 153
    .restart local v5    # "j":I
    :cond_b
    iget-object v12, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    aget v12, v12, v5

    if-lez v12, :cond_c

    .line 154
    iput v5, v2, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    goto :goto_5

    .line 152
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 166
    .restart local v8    # "prevUid":I
    :cond_d
    iget-object v12, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    sput-object v12, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto/16 :goto_0

    .line 137
    .end local v5    # "j":I
    .end local v8    # "prevUid":I
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method
