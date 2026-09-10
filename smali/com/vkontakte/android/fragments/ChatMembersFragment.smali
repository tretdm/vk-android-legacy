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

.field private left:Z

.field private list:Landroid/widget/ListView;

.field private notifySwitch:Lde/ankri/views/Switch;

.field private notifyView:Landroid/widget/FrameLayout;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private returnText:Landroid/widget/TextView;

.field private sendBtn:Landroid/view/View;

.field private titleEdit:Landroid/widget/EditText;

.field private titleView:Landroid/view/View;

.field private uploadID:I

.field private uploadProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->left:Z

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    .line 100
    new-instance v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$1;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateChatUsers()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->admin:I

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->left:Z

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->adapter:Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lde/ankri/views/Switch;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifySwitch:Lde/ankri/views/Switch;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->showDndDialog()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->showFriendPicker()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveChat()V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->createChat()V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setChatTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/fragments/ChatMembersFragment;Z)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setMute(Z)V

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatPhoto:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/fragments/ChatMembersFragment;Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->left:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateList()V

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->loadOnlines()V

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setDnd(I)V

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateSettings()V

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->doRemoveUser(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/ChatMembersFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->removeUser(I)V

    return-void
.end method

.method private createChat()V
    .locals 7

    .prologue
    .line 450
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 452
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 453
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

    .line 456
    const-string v5, ", "

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 458
    .end local v1    # "i":I
    .end local v3    # "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 460
    new-instance v5, Lcom/vkontakte/android/api/MessagesCreateChat;

    invoke-direct {v5, v4, v2}, Lcom/vkontakte/android/api/MessagesCreateChat;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 461
    new-instance v6, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/MessagesCreateChat;->setCallback(Lcom/vkontakte/android/api/MessagesCreateChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 485
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 486
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 487
    return-void

    .line 454
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

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
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
    .line 606
    new-instance v1, Lcom/vkontakte/android/api/MessagesRemoveChatUser;

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    iget-object v0, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/MessagesRemoveChatUser;-><init>(II)V

    .line 607
    new-instance v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/MessagesRemoveChatUser;->setCallback(Lcom/vkontakte/android/api/MessagesRemoveChatUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 619
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 620
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 621
    return-void
.end method

.method private leaveChat()V
    .locals 3

    .prologue
    .line 624
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 625
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 626
    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 627
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 641
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 643
    return-void
.end method

.method private loadOnlines()V
    .locals 5

    .prologue
    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v0, "needOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateList()V

    .line 423
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 442
    :goto_1
    return-void

    .line 415
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ChatUser;

    .line 416
    .local v1, "user":Lcom/vkontakte/android/ChatUser;
    iget-object v3, v1, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->isFriend(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    iget-object v3, v1, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    :cond_1
    iget-object v3, v1, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v1, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Lcom/vkontakte/android/data/Friends;->getOnlineStatus(I)I

    move-result v4

    iput v4, v3, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_0

    .line 424
    .end local v1    # "user":Lcom/vkontakte/android/ChatUser;
    :cond_2
    new-instance v2, Lcom/vkontakte/android/api/GetUserOnlines;

    invoke-direct {v2, v0}, Lcom/vkontakte/android/api/GetUserOnlines;-><init>(Ljava/util/List;)V

    .line 425
    new-instance v3, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/GetUserOnlines;->setCallback(Lcom/vkontakte/android/api/GetUserOnlines$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 441
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private removeUser(I)V
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 592
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 593
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 594
    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 595
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/fragments/ChatMembersFragment$14;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$14;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 601
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 603
    return-void
.end method

.method private setChatTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 574
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

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/MessagesEditChat;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    invoke-direct {v0, v1, p1}, Lcom/vkontakte/android/api/MessagesEditChat;-><init>(ILjava/lang/String;)V

    .line 576
    new-instance v1, Lcom/vkontakte/android/fragments/ChatMembersFragment$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$13;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesEditChat;->setCallback(Lcom/vkontakte/android/api/MessagesEditChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 587
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private setDnd(I)V
    .locals 5
    .param p1, "time"    # I

    .prologue
    .line 512
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set dnd "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 514
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

    .line 515
    return-void
.end method

.method private setMute(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    const v4, 0x77359400

    .line 503
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 504
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 505
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

    .line 509
    :goto_0
    return-void

    .line 507
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
    const v7, 0x7f0801f6

    const/4 v6, 0x0

    .line 518
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "notify"

    invoke-virtual {v3, v4, v6}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 519
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

    .line 520
    .local v0, "dnd":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    .line 521
    .local v1, "now":I
    if-le v0, v1, :cond_0

    .line 522
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 523
    invoke-virtual {v3, v7}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 524
    const v4, 0x7f0801f7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 525
    const v4, 0x7f08004e

    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$11;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$11;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 532
    const v4, 0x7f08004f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 533
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 562
    :goto_0
    return-void

    .line 535
    :cond_0
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    const v4, 0x7f0d0054

    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$12;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$12;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 559
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 560
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showFriendPicker()V
    .locals 4

    .prologue
    .line 565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 567
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "FriendsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 570
    const v2, 0x9808

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 571
    return-void
.end method

.method private updateChatUsers()V
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    new-instance v1, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 398
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->adapter:Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->notifyDataSetChanged()V

    .line 446
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 447
    return-void
.end method

.method private updateSettings()V
    .locals 9

    .prologue
    const v7, 0x77359400

    const/4 v4, 0x0

    .line 490
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v5, "notify"

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 491
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

    .line 492
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

    .line 493
    .local v0, "dnd":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v1, v5

    .line 494
    .local v1, "now":I
    if-le v0, v1, :cond_2

    .line 495
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
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

    .line 500
    :goto_2
    return-void

    .line 491
    .end local v0    # "dnd":I
    .end local v1    # "now":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 496
    .restart local v0    # "dnd":I
    .restart local v1    # "now":I
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 498
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v8, 0x9807

    const/4 v7, 0x1

    .line 646
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 647
    const v3, 0x9808

    if-ne p1, v3, :cond_0

    .line 648
    const-string v3, "user"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 649
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v3, Lcom/vkontakte/android/api/MessagesAddChatUser;

    iget v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v3, v4, v5}, Lcom/vkontakte/android/api/MessagesAddChatUser;-><init>(II)V

    .line 650
    new-instance v4, Lcom/vkontakte/android/fragments/ChatMembersFragment$17;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$17;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/UserProfile;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/MessagesAddChatUser;->setCallback(Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 682
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 683
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 685
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    if-ne p1, v8, :cond_1

    .line 686
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    .line 687
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 688
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    const v4, 0x7f08004a

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 690
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    const/4 v4, -0x3

    const v5, 0x7f080041

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 696
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/vkontakte/android/fragments/ChatMembersFragment$19;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$19;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 704
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 705
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    .line 706
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 707
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "type"

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    const-string v3, "file"

    const-string v4, "file"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v3, "id"

    iget v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    const-string v3, "new"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 712
    .local v2, "rp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "chat_id"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v3, "req_params"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 717
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "rp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-ne p2, v7, :cond_2

    if-ne p1, v8, :cond_2

    .line 718
    new-instance v3, Lcom/vkontakte/android/api/MessagesDeleteChatPhoto;

    iget v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    invoke-direct {v3, v4}, Lcom/vkontakte/android/api/MessagesDeleteChatPhoto;-><init>(I)V

    .line 719
    new-instance v4, Lcom/vkontakte/android/fragments/ChatMembersFragment$20;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$20;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/MessagesDeleteChatPhoto;->setCallback(Lcom/vkontakte/android/api/MessagesDeleteChatPhoto$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 730
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 731
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 733
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 24
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 148
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "create"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    .line 152
    new-instance v18, Landroid/widget/ListView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    .line 153
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 154
    new-instance v10, Lcom/vkontakte/android/fragments/ChatMembersFragment$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$2;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Landroid/content/Context;)V

    .line 159
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

    .line 161
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

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/drawable/ColorDrawable;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const v19, -0x1f1f20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const v19, -0x1f1f20

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "id"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "admin"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->admin:I

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x20

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
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

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    const v19, 0x7f030030

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0900a6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "title"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 224
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

    .line 226
    new-instance v18, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0801ee

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v18 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(IF)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0200ad

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 231
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

    .line 232
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

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, -0xc77239

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0200e6

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 236
    new-instance v18, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0801ef

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v18 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(IF)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0200ab

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 241
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

    .line 242
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

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x1000000

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v18, v0

    const v19, 0x7f0200e6

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 246
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, -0x7a7a7b

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, 0x41a00000    # 20.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v19

    const/high16 v20, 0x41a00000    # 20.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/high16 v21, 0x41a00000    # 20.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/high16 v22, 0x41a00000    # 20.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f080365

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 253
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 254
    .local v14, "nview":Landroid/widget/LinearLayout;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 255
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 256
    .local v13, "nv":Landroid/widget/TextView;
    const/16 v18, 0x1

    const/high16 v19, 0x41900000    # 18.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    const v18, 0x7f0801f5

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 259
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/high16 v20, 0x41e00000    # 28.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v18 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v16, Lde/ankri/views/Switch;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lde/ankri/views/Switch;-><init>(Landroid/content/Context;)V

    .line 261
    .local v16, "sw":Lde/ankri/views/Switch;
    const v18, 0x7f0801f3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 262
    const v18, 0x7f0801f4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 263
    const/16 v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setTextColor(I)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020276

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02026d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    new-instance v18, Lcom/vkontakte/android/fragments/ChatMembersFragment$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$5;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/ankri/views/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
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

    .line 273
    .local v4, "csl":Landroid/content/res/ColorStateList;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lde/ankri/views/Switch;->setSwitchTextColor(Landroid/content/res/ColorStateList;)V

    .line 274
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifySwitch:Lde/ankri/views/Switch;

    .line 275
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x2

    const/high16 v20, 0x41c00000    # 24.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
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

    .line 277
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const v19, 0x7f0200b1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 280
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 281
    .local v11, "hl1":Landroid/view/View;
    const v18, 0x7f0200e6

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 284
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 285
    .local v8, "dview":Landroid/widget/LinearLayout;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 286
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 287
    .local v7, "dv":Landroid/widget/TextView;
    const/16 v18, 0x1

    const/high16 v19, 0x41900000    # 18.0f

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 288
    const/high16 v18, -0x1000000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    const v18, 0x7f0801f6

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 290
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, -0xc77239

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-string v19, "qwe"

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/high16 v20, 0x41e00000    # 28.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-direct/range {v18 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
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

    .line 296
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

    .line 297
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const v19, 0x7f0200ad

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 300
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 301
    .local v12, "hl2":Landroid/view/View;
    const v18, 0x7f0200e6

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const v18, 0x7f0801fe

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "users"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 306
    .local v17, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v6, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v6}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 307
    .local v6, "cur":Lcom/vkontakte/android/UserProfile;
    sget v18, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v18

    iput v0, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 308
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

    .line 309
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

    .line 310
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_2

    .line 317
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

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f09002b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v19, 0x7f08013c

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$6;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setHasOptionsMenu(Z)V

    .line 330
    .end local v6    # "cur":Lcom/vkontakte/android/UserProfile;
    .end local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateSettings()V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0900a7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 348
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v18, "com.vkontakte.android.CHAT_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v18, "com.vkontakte.android.UPLOAD_DONE"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v18, "com.vkontakte.android.UPLOAD_PROGRESS"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v18, "com.vkontakte.android.UPLOAD_FAILED"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
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

    .line 358
    .end local v9    # "filter":Landroid/content/IntentFilter;
    :goto_3
    return-void

    .line 303
    :cond_1
    const v18, 0x7f08014f

    goto/16 :goto_0

    .line 310
    .restart local v6    # "cur":Lcom/vkontakte/android/UserProfile;
    .restart local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/UserProfile;

    .line 311
    .local v15, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v5, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v5}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 312
    .local v5, "cu":Lcom/vkontakte/android/ChatUser;
    iput-object v15, v5, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 313
    iput-object v6, v5, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateList()V

    goto/16 :goto_1

    .line 327
    .end local v5    # "cu":Lcom/vkontakte/android/ChatUser;
    .end local v6    # "cur":Lcom/vkontakte/android/UserProfile;
    .end local v15    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateChatUsers()V

    goto/16 :goto_2

    .line 355
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0900a7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0900a5

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
    .line 405
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 406
    const v1, 0x7f08002c

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 407
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 408
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 410
    .end local v0    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 411
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 362
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    if-nez v0, :cond_0

    .line 364
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 372
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 377
    return-void
.end method
