.class public Lcom/vkontakte/android/RepostActivity;
.super Landroid/app/Activity;
.source "RepostActivity.java"


# static fields
.field private static final SEL_CHAT_RESULT:I = 0x66

.field private static final SEL_GROUP_RESULT:I = 0x65


# instance fields
.field private groupName:Ljava/lang/String;

.field private groupPhoto:Ljava/lang/String;

.field private post:Lcom/vkontakte/android/NewsEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/RepostActivity;I)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/vkontakte/android/RepostActivity;->repostWithComment(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/RepostActivity;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/vkontakte/android/RepostActivity;->startGroupChooser()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/RepostActivity;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/vkontakte/android/RepostActivity;->startChatChooser()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/RepostActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/RepostActivity;->doRepostWithComment(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/RepostActivity;)Lcom/vkontakte/android/NewsEntry;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/RepostActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/RepostActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity;->groupPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/RepostActivity;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/vkontakte/android/RepostActivity;->broadcastUpdate()V

    return-void
.end method

.method private broadcastUpdate()V
    .locals 10

    .prologue
    const/16 v7, 0x8

    const/4 v9, 0x4

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "post_id"

    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v0, "owner_id"

    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string v0, "comments"

    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v0, "retweets"

    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v0, "likes"

    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v0, "liked"

    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const-string v0, "retweeted"

    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v1, v9}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/RepostActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    iget-object v4, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget-object v5, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v5, v5, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    iget-object v6, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v6

    iget-object v7, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v7, v9}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/cache/NewsfeedCache;->update(Landroid/content/Context;IIIIIZZ)V

    goto :goto_0
.end method

.method private doRepostWithComment(ILjava/lang/String;)V
    .locals 5
    .param p1, "gid"    # I
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 159
    const-string v1, "wall"

    .line 160
    .local v1, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 161
    .local v0, "akey":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 162
    const-string v1, "photo"

    .line 163
    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    iget-object v0, v2, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 166
    const-string v1, "video"

    .line 167
    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget-object v2, v2, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/VideoAttachment;

    iget-object v0, v2, Lcom/vkontakte/android/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 169
    :cond_1
    new-instance v2, Lcom/vkontakte/android/api/WallRepost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/vkontakte/android/api/WallRepost;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v3, Lcom/vkontakte/android/RepostActivity$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/vkontakte/android/RepostActivity$7;-><init>(Lcom/vkontakte/android/RepostActivity;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/WallRepost;->setCallback(Lcom/vkontakte/android/api/WallRepost$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 238
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 239
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 240
    return-void
.end method

.method private repostWithComment(I)V
    .locals 5
    .param p1, "gid"    # I

    .prologue
    .line 123
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, "ed":Landroid/widget/EditText;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 125
    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 126
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    const v3, 0x7f0801e6

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 129
    const v3, 0x7f080042

    new-instance v4, Lcom/vkontakte/android/RepostActivity$3;

    invoke-direct {v4, p0, p1, v1}, Lcom/vkontakte/android/RepostActivity$3;-><init>(Lcom/vkontakte/android/RepostActivity;ILandroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 135
    const v3, 0x7f080041

    new-instance v4, Lcom/vkontakte/android/RepostActivity$4;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/RepostActivity$4;-><init>(Lcom/vkontakte/android/RepostActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 141
    new-instance v3, Lcom/vkontakte/android/RepostActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/RepostActivity$5;-><init>(Lcom/vkontakte/android/RepostActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 148
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/vkontakte/android/RepostActivity$6;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/RepostActivity$6;-><init>(Lcom/vkontakte/android/RepostActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 156
    return-void
.end method

.method private startChatChooser()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/RepostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    return-void
.end method

.method private startGroupChooser()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "admin_only"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string v2, "select"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "GroupsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/RepostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 91
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 99
    if-eq p2, v4, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/vkontakte/android/RepostActivity;->finish()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_2

    .line 104
    if-ne p2, v4, :cond_2

    .line 105
    const-string v2, "name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/RepostActivity;->groupName:Ljava/lang/String;

    .line 106
    const-string v2, "photo"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/RepostActivity;->groupPhoto:Ljava/lang/String;

    .line 107
    const-string v2, "gid"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/vkontakte/android/RepostActivity;->repostWithComment(I)V

    .line 110
    :cond_2
    const/16 v2, 0x66

    if-ne p1, v2, :cond_0

    if-ne p2, v4, :cond_0

    .line 111
    const-string v2, "profile"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 112
    .local v1, "profile":Lcom/vkontakte/android/UserProfile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 115
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_3

    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 116
    :cond_3
    const-string v2, "post"

    iget-object v3, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    const-string v2, "ChatFragment"

    invoke-static {v2, v0, p0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 118
    invoke-virtual {p0}, Lcom/vkontakte/android/RepostActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0, v4, v4}, Lcom/vkontakte/android/RepostActivity;->overridePendingTransition(II)V

    .line 37
    invoke-virtual {p0}, Lcom/vkontakte/android/RepostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "post"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    iput-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v3, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v3, v3, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 42
    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/RepostActivity;->post:Lcom/vkontakte/android/NewsEntry;

    iget v2, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_2

    .line 43
    const v2, 0x7f0801e3

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/RepostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v2, "me"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_2
    const v2, 0x7f0801e4

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/RepostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v2, "group"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_3
    const v2, 0x7f0801e5

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/RepostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/RepostActivity;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/vkontakte/android/RepostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    invoke-direct {p0}, Lcom/vkontakte/android/RepostActivity;->startChatChooser()V

    .line 81
    :goto_0
    return-void

    .line 59
    :cond_4
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    const v3, 0x7f0801e2

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 61
    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/vkontakte/android/RepostActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/RepostActivity$1;-><init>(Lcom/vkontakte/android/RepostActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 74
    new-instance v3, Lcom/vkontakte/android/RepostActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/RepostActivity$2;-><init>(Lcom/vkontakte/android/RepostActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
