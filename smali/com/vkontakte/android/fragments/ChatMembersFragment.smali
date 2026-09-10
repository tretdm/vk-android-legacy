.class public Lcom/vkontakte/android/fragments/ChatMembersFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;,
        Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;
    }
.end annotation


# static fields
.field private static final INVITE_RESULT:I = 0x9808

.field private static final PHOTO_RESULT:I = 0x9807


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

.field private admin:I

.field private chatPhoto:Ljava/lang/String;

.field private chatUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;"
        }
    .end annotation
.end field

.field private create:Z

.field private dndText:Landroid/widget/TextView;

.field private dndView:Landroid/widget/FrameLayout;

.field private id:I

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

.field private leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

.field private list:Landroid/widget/ListView;

.field private notifySwitch:Lde/ankri/views/Switch;

.field private notifyView:Landroid/widget/FrameLayout;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private sendBtn:Landroid/view/View;

.field private titleEdit:Landroid/widget/EditText;

.field private titleView:Landroid/view/View;

.field private uploadID:I

.field private uploadProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    .line 95
    new-instance v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatPhoto:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->removeUser(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->admin:I

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->adapter:Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lde/ankri/views/Switch;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifySwitch:Lde/ankri/views/Switch;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->showDndDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->showFriendPicker()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveChat()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->createChat()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setChatTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/ChatMembersFragment;Z)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setMute(Z)V

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateList()V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setDnd(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateSettings()V

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->doRemoveUser(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/ChatMembersFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private createChat()V
    .locals 7

    .prologue
    .line 401
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 403
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v3, "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 407
    const-string v5, ", "

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 409
    .end local v1    # "i":I
    .end local v3    # "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 411
    new-instance v5, Lcom/vkontakte/android/api/MessagesCreateChat;

    invoke-direct {v5, v4, v2}, Lcom/vkontakte/android/api/MessagesCreateChat;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 412
    new-instance v6, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/MessagesCreateChat;->setCallback(Lcom/vkontakte/android/api/MessagesCreateChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 441
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 442
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 443
    return-void

    .line 405
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v1    # "i":I
    .restart local v3    # "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ChatUser;

    iget-object v5, v5, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    .end local v1    # "i":I
    .end local v3    # "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    .local v0, "cu":Lcom/vkontakte/android/ChatUser;
    iget-object v6, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private doRemoveUser(I)V
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 562
    new-instance v1, Lcom/vkontakte/android/api/MessagesRemoveChatUser;

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    iget-object v0, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/MessagesRemoveChatUser;-><init>(II)V

    .line 563
    new-instance v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$14;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$14;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/MessagesRemoveChatUser;->setCallback(Lcom/vkontakte/android/api/MessagesRemoveChatUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 575
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 577
    return-void
.end method

.method private leaveChat()V
    .locals 3

    .prologue
    .line 580
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 582
    const v1, 0x7f0601de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 583
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 597
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 599
    return-void
.end method

.method private removeUser(I)V
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 548
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 550
    const v1, 0x7f06017b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 551
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/fragments/ChatMembersFragment$13;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$13;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 557
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 559
    return-void
.end method

.method private setChatTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/MessagesEditChat;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    invoke-direct {v0, v1, p1}, Lcom/vkontakte/android/api/MessagesEditChat;-><init>(ILjava/lang/String;)V

    .line 532
    new-instance v1, Lcom/vkontakte/android/fragments/ChatMembersFragment$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$12;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesEditChat;->setCallback(Lcom/vkontakte/android/api/MessagesEditChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 543
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private setDnd(I)V
    .locals 5
    .param p1, "time"    # I

    .prologue
    .line 468
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set dnd "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 470
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dnd"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x77359400

    iget v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    return-void
.end method

.method private setMute(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    const v4, 0x77359400

    .line 459
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 461
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mute"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mute"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private showDndDialog()V
    .locals 8

    .prologue
    const v7, 0x7f0601dc

    const/4 v6, 0x0

    .line 474
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "notify"

    invoke-virtual {v3, v4, v6}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 475
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dnd"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x77359400

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 476
    .local v0, "dnd":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    .line 477
    .local v1, "now":I
    if-le v0, v1, :cond_0

    .line 478
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    invoke-virtual {v3, v7}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 480
    const v4, 0x7f0601dd

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 481
    const v4, 0x7f060034

    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 488
    const v4, 0x7f060035

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 489
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 518
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 492
    const v4, 0x7f0d0054

    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$11;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$11;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 515
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 516
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showFriendPicker()V
    .locals 4

    .prologue
    .line 521
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 522
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 523
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "FriendsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 526
    const v2, 0x9808

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 527
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->adapter:Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->notifyDataSetChanged()V

    .line 397
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 398
    return-void
.end method

.method private updateSettings()V
    .locals 9

    .prologue
    const v7, 0x77359400

    const/4 v4, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v5, "notify"

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 447
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifySwitch:Lde/ankri/views/Switch;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mute"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Lde/ankri/views/Switch;->setChecked(Z)V

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "dnd"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 449
    .local v0, "dnd":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v1, v5

    .line 450
    .local v1, "now":I
    if-le v0, v1, :cond_2

    .line 451
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0054

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v3, v3, v5

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    :goto_2
    return-void

    .line 447
    .end local v0    # "dnd":I
    .end local v1    # "now":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 452
    .restart local v0    # "dnd":I
    .restart local v1    # "now":I
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 454
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v9, 0x9807

    const/4 v8, 0x1

    .line 602
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 603
    const v4, 0x9808

    if-ne p1, v4, :cond_0

    .line 604
    const-string v4, "user"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 605
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v4, Lcom/vkontakte/android/api/MessagesAddChatUser;

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    iget v6, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v4, v5, v6}, Lcom/vkontakte/android/api/MessagesAddChatUser;-><init>(II)V

    .line 606
    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;

    invoke-direct {v5, p0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/UserProfile;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/MessagesAddChatUser;->setCallback(Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 622
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 623
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 625
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    if-ne p1, v9, :cond_1

    .line 626
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 627
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    .line 628
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 629
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    const v5, 0x7f060030

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 631
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    const/4 v5, -0x3

    const v6, 0x7f060027

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/ChatMembersFragment$17;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$17;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 637
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 645
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 646
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    .line 647
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 648
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v4, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const-string v4, "id"

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    const-string v4, "new"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 653
    .local v2, "rp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "chat_id"

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string v4, "req_params"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 655
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 658
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "rp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    if-ne p2, v8, :cond_2

    if-ne p1, v9, :cond_2

    .line 659
    new-instance v4, Lcom/vkontakte/android/api/MessagesDeleteChatPhoto;

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    invoke-direct {v4, v5}, Lcom/vkontakte/android/api/MessagesDeleteChatPhoto;-><init>(I)V

    .line 660
    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$19;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$19;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/MessagesDeleteChatPhoto;->setCallback(Lcom/vkontakte/android/api/MessagesDeleteChatPhoto$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 671
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 672
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 674
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 24
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 147
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "create"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    .line 151
    new-instance v18, Landroid/widget/ListView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    .line 152
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 153
    new-instance v10, Lcom/vkontakte/android/fragments/ChatMembersFragment$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$2;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Landroid/content/Context;)V

    .line 158
    .local v10, "fv":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 160
    .end local v10    # "fv":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->adapter:Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/drawable/ColorDrawable;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const v19, -0x1f1f20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const v19, -0x1f1f20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "id"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "admin"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->admin:I

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x20

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    new-instance v18, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const v19, 0x7f030029

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080090

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "title"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v19

    const/high16 v20, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v20

    const/high16 v21, 0x41000000    # 8.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v21

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v22

    const/high16 v23, 0x41000000    # 8.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 225
    new-instance v18, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0601d5

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v18 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(IF)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0200ac

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlayPadding(IIII)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v19

    const/high16 v20, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v20

    const/high16 v21, 0x41200000    # 10.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v21

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v22

    const/high16 v23, 0x41200000    # 10.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->setPadding(IIII)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, -0xc77239

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0200da

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 235
    new-instance v18, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0601d6

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v18 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(IF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0200aa

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlayPadding(IIII)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v19

    const/high16 v20, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v20

    const/high16 v21, 0x41200000    # 10.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v21

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v22

    const/high16 v23, 0x41200000    # 10.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->setPadding(IIII)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x1000000

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0200da

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 245
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v14, "nview":Landroid/widget/LinearLayout;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 247
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 248
    .local v13, "nv":Landroid/widget/TextView;
    const/16 v18, 0x1

    const/high16 v19, 0x41900000    # 18.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 249
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    const v18, 0x7f0601db

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 251
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/high16 v20, 0x41e00000    # 28.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v18 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v16, Lde/ankri/views/Switch;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lde/ankri/views/Switch;-><init>(Landroid/content/Context;)V

    .line 253
    .local v16, "sw":Lde/ankri/views/Switch;
    const v18, 0x7f0601d9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 254
    const v18, 0x7f0601da

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 255
    const/16 v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setTextColor(I)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020240

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020237

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    new-instance v18, Lcom/vkontakte/android/fragments/ChatMembersFragment$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$5;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 264
    new-instance v4, Landroid/content/res/ColorStateList;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, -0x1

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 265
    .local v4, "csl":Landroid/content/res/ColorStateList;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lde/ankri/views/Switch;->setSwitchTextColor(Landroid/content/res/ColorStateList;)V

    .line 266
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifySwitch:Lde/ankri/views/Switch;

    .line 267
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    const/high16 v20, 0x41c00000    # 24.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v18

    const/high16 v19, 0x41800000    # 16.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v19

    const/high16 v20, 0x41200000    # 10.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    add-int v19, v19, v20

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v20

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v21

    const/high16 v22, 0x41200000    # 10.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 269
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const v19, 0x7f0200b0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 272
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 273
    .local v11, "hl1":Landroid/view/View;
    const v18, 0x7f0200da

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 276
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    .local v8, "dview":Landroid/widget/LinearLayout;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 279
    .local v7, "dv":Landroid/widget/TextView;
    const/16 v18, 0x1

    const/high16 v19, 0x41900000    # 18.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 280
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    const v18, 0x7f0601dc

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 282
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, -0xc77239

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "qwe"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/high16 v20, 0x41e00000    # 28.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v18 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    const/high16 v21, 0x41e00000    # 28.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v18

    const/high16 v19, 0x41800000    # 16.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v19

    const/high16 v20, 0x41200000    # 10.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    add-int v19, v19, v20

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v20

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v21

    const/high16 v22, 0x41200000    # 10.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 289
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const v19, 0x7f0200ac

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 292
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 293
    .local v12, "hl2":Landroid/view/View;
    const v18, 0x7f0200da

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const v18, 0x7f0601e4

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "users"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 298
    .local v17, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v6, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v6}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 299
    .local v6, "cur":Lcom/vkontakte/android/UserProfile;
    sget v18, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v18

    iput v0, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 300
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "username"

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 301
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "userphoto"

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 302
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_2

    .line 309
    const/high16 v18, 0x7f030000

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080021

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v19, 0x7f060123

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$6;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setHasOptionsMenu(Z)V

    .line 334
    .end local v6    # "cur":Lcom/vkontakte/android/UserProfile;
    .end local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateSettings()V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080091

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 351
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 352
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v18, "com.vkontakte.android.CHAT_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v18, "com.vkontakte.android.UPLOAD_DONE"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v18, "com.vkontakte.android.UPLOAD_PROGRESS"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v18, "com.vkontakte.android.UPLOAD_FAILED"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    sget-object v18, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    const-string v20, "com.vkontakte.android.permission.ACCESS_DATA"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 361
    .end local v9    # "filter":Landroid/content/IntentFilter;
    :goto_3
    return-void

    .line 295
    :cond_1
    const v18, 0x7f060136

    goto/16 :goto_0

    .line 302
    .restart local v6    # "cur":Lcom/vkontakte/android/UserProfile;
    .restart local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/UserProfile;

    .line 303
    .local v15, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v5, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v5}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 304
    .local v5, "cu":Lcom/vkontakte/android/ChatUser;
    iput-object v15, v5, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 305
    iput-object v6, v5, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateList()V

    goto/16 :goto_1

    .line 319
    .end local v5    # "cu":Lcom/vkontakte/android/ChatUser;
    .end local v6    # "cur":Lcom/vkontakte/android/UserProfile;
    .end local v15    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    move/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-static/range {v18 .. v19}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto/16 :goto_2

    .line 358
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f080091

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f08008f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 388
    const v1, 0x7f060012

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 389
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 390
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 392
    .end local v0    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 393
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 364
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 365
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    if-nez v0, :cond_0

    .line 367
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 374
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 375
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 379
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 380
    return-void
.end method
