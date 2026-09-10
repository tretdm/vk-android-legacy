.class public Lcom/vkontakte/android/UserListActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "UserListActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/UserListActivity$UserListAdapter;,
        Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/CustomTitleActivity;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final INVITE_RESULT:I = 0x69afa

.field public static final TYPE_CHAT_MEMBERS:I = 0x2

.field public static final TYPE_FAVE:I = 0x4

.field public static final TYPE_FOLLOWERS:I = 0x5

.field public static final TYPE_GROUP_MEMBERS:I = 0x1

.field public static final TYPE_LIKES:I = 0x0

.field public static final TYPE_POLL_VOTERS:I = 0x6

.field public static final TYPE_PREDEFINED:I = 0x3


# instance fields
.field private chatAdminID:I

.field private chatControlView:Landroid/view/View;

.field protected contentView:Landroid/widget/FrameLayout;

.field protected dataLoading:Z

.field protected footerView:Landroid/widget/FrameLayout;

.field protected hasExtended:Z

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field protected list:Landroid/widget/ListView;

.field protected moreAvailable:Z

.field protected preloadOnReady:Z

.field protected preloadedUsers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected preloading:Z

.field protected progress:Landroid/widget/ProgressBar;

.field private type:I

.field protected users:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    .line 59
    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UserListActivity;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/UserListActivity;I)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UserListActivity;->removeChatUser(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/UserListActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->chatAdminID:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/UserListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->chatControlView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/UserListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UserListActivity;->setChatTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/UserListActivity;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/vkontakte/android/UserListActivity;->chatAdminID:I

    return-void
.end method

.method private removeChatUser(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 380
    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 381
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/UserListActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/UserListActivity$10;-><init>(Lcom/vkontakte/android/UserListActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 406
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 408
    return-void
.end method

.method private setChatTitle(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 411
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    const v0, 0x7f090200

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 436
    :goto_0
    return-void

    .line 415
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/MessagesEditChat;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/vkontakte/android/api/MessagesEditChat;-><init>(ILjava/lang/String;)V

    .line 416
    new-instance v1, Lcom/vkontakte/android/UserListActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/UserListActivity$11;-><init>(Lcom/vkontakte/android/UserListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesEditChat;->setCallback(Lcom/vkontakte/android/api/MessagesEditChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/vkontakte/android/UserListActivity$UserListAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/UserListActivity$UserListAdapter;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    return-object v0
.end method

.method public loadData()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/16 v7, 0x64

    const/4 v8, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->dataLoading:Z

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    if-nez v0, :cond_2

    .line 174
    new-instance v0, Lcom/vkontakte/android/api/LikesGetList;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ltype"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "oid"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "item_id"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget-boolean v5, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    if-eqz v5, :cond_8

    const/16 v5, 0x32

    :goto_1
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/LikesGetList;-><init>(IIIII)V

    .line 175
    new-instance v1, Lcom/vkontakte/android/UserListActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$3;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/LikesGetList;->setCallback(Lcom/vkontakte/android/api/LikesGetList$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 205
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 206
    new-instance v0, Lcom/vkontakte/android/api/GroupsGetMembers;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gid"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v7}, Lcom/vkontakte/android/api/GroupsGetMembers;-><init>(III)V

    .line 207
    new-instance v1, Lcom/vkontakte/android/UserListActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$4;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGetMembers;->setCallback(Lcom/vkontakte/android/api/GroupsGetMembers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 237
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 238
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetChatUsers;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesGetChatUsers;-><init>(I)V

    .line 239
    new-instance v1, Lcom/vkontakte/android/UserListActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$5;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetChatUsers;->setCallback(Lcom/vkontakte/android/api/MessagesGetChatUsers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 272
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 274
    .local v6, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 275
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->updateList()V

    .line 276
    iput-boolean v8, p0, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    .line 277
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .end local v6    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 281
    new-instance v0, Lcom/vkontakte/android/api/FaveGetUsers;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FaveGetUsers;-><init>()V

    .line 282
    new-instance v1, Lcom/vkontakte/android/UserListActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$6;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetUsers;->setCallback(Lcom/vkontakte/android/api/FaveGetUsers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 303
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 305
    :cond_6
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 306
    new-instance v0, Lcom/vkontakte/android/api/SubscriptionsGetFollowers;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v7}, Lcom/vkontakte/android/api/SubscriptionsGetFollowers;-><init>(III)V

    .line 307
    new-instance v1, Lcom/vkontakte/android/UserListActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$7;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/SubscriptionsGetFollowers;->setCallback(Lcom/vkontakte/android/api/SubscriptionsGetFollowers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 337
    :cond_7
    iget v0, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 338
    new-instance v0, Lcom/vkontakte/android/api/PollsGetVoters;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "oid"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "poll_id"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "answer_id"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/PollsGetVoters;-><init>(IIIII)V

    .line 339
    new-instance v1, Lcom/vkontakte/android/UserListActivity$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$8;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsGetVoters;->setCallback(Lcom/vkontakte/android/api/PollsGetVoters$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 367
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 174
    goto/16 :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 439
    const v2, 0x69afa

    if-ne p1, v2, :cond_1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 440
    const-string v2, "profile"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 441
    .local v1, "u":Lcom/vkontakte/android/UserProfile;
    iget-object v2, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 447
    new-instance v2, Lcom/vkontakte/android/api/MessagesAddChatUser;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "chat_id"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/api/MessagesAddChatUser;-><init>(II)V

    .line 448
    new-instance v3, Lcom/vkontakte/android/UserListActivity$12;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/UserListActivity$12;-><init>(Lcom/vkontakte/android/UserListActivity;Lcom/vkontakte/android/UserProfile;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/MessagesAddChatUser;->setCallback(Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 461
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 462
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 464
    .end local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_1
    :goto_0
    return-void

    .line 441
    .restart local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 442
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v4, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v3, v4, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901fe

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/high16 v12, 0x41f00000    # 30.0f

    const/high16 v8, 0x40e00000    # 7.0f

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/UserListActivity;->contentView:Landroid/widget/FrameLayout;

    .line 67
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/UserListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/UserListActivity;->setContentView(Landroid/view/View;)V

    .line 71
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    .line 72
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 73
    .local v5, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020224

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 79
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "extended"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/vkontakte/android/UserListActivity;->hasExtended:Z

    .line 83
    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    .line 84
    new-instance v6, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v7, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;

    invoke-direct {v7, p0, v10}, Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/UserListActivity;Lcom/vkontakte/android/UserListActivity$UserPhotosAdapter;)V

    iget-object v8, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    invoke-direct {v6, v7, v8, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v6, p0, Lcom/vkontakte/android/UserListActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 85
    iget v6, p0, Lcom/vkontakte/android/UserListActivity;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 86
    const v6, 0x7f030014

    invoke-static {p0, v6, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 87
    .local v2, "fv":Landroid/view/View;
    const v6, 0x7f06005d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/UserListActivity$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/UserListActivity$1;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v6, v2, v10, v9}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 94
    iput-object v2, p0, Lcom/vkontakte/android/UserListActivity;->chatControlView:Landroid/view/View;

    .line 95
    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 96
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    const v7, -0xe0e0f

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 97
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v1, "btnPost":Landroid/widget/ImageView;
    const v6, 0x7f0200cc

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x10

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 101
    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v6, Lcom/vkontakte/android/UserListActivity$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/UserListActivity$2;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/UserListActivity;->addViewAtRight(Landroid/view/View;)V

    .line 112
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "btnPost":Landroid/widget/ImageView;
    .end local v2    # "fv":Landroid/view/View;
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 121
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/vkontakte/android/UserListActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 124
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    .line 128
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020224

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v4, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/UserListActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->loadData()V

    .line 137
    return-void

    .line 114
    .end local v4    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/vkontakte/android/UserListActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7, v10, v9}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 115
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 116
    iget-object v6, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UserListActivity;->startActivity(Landroid/content/Intent;)V

    .line 473
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 552
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 553
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/UserListActivity$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$13;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    .line 555
    const-wide/16 v2, 0x1f4

    .line 553
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 559
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 560
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 561
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/UserListActivity$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/UserListActivity$14;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    .line 564
    const-wide/16 v2, 0xa

    .line 562
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 566
    :cond_0
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 146
    iget-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    if-eqz v0, :cond_2

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 148
    iput-boolean v2, p0, Lcom/vkontakte/android/UserListActivity;->preloadOnReady:Z

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->users:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->updateList()V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/UserListActivity;->preloadedUsers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 153
    iput-boolean v2, p0, Lcom/vkontakte/android/UserListActivity;->preloading:Z

    .line 154
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->loadData()V

    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/UserListActivity;->loadData()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Lcom/vkontakte/android/UserListActivity$9;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/UserListActivity$9;-><init>(Lcom/vkontakte/android/UserListActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UserListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method
