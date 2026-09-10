.class public Lcom/vkontakte/android/fragments/ChatMembersFragment;
.super Landroid/app/Fragment;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;,
        Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;
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

.field private notifySwitch:Landroid/widget/Switch;

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
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

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

    .line 906
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    return v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateChatUsers()V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->showFriendPicker()V

    return-void
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveChat()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->createChat()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setChatTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/fragments/ChatMembersFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setMute(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/vkontakte/android/fragments/ChatMembersFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatPhoto:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->left:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/vkontakte/android/fragments/ChatMembersFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->left:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateSettings()V

    return-void
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateList()V

    return-void
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->loadOnlines()V

    return-void
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setDnd(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->doRemoveUser(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->removeUser(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->admin:I

    return v0
.end method

.method static synthetic access$2900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    return v0
.end method

.method static synthetic access$3000(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/ui/OverlayTextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkontakte/android/fragments/ChatMembersFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->adapter:Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->showDndDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/ChatMembersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatMembersFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createChat()V
    .locals 8

    .prologue
    .line 452
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 454
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v4, "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x3

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 456
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/ChatUser;

    iget-object v6, v6, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    :cond_0
    const-string v6, ", "

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 460
    .end local v1    # "i":I
    .end local v4    # "ttl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    .local v0, "cu":Lcom/vkontakte/android/ChatUser;
    iget-object v6, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 462
    .end local v0    # "cu":Lcom/vkontakte/android/ChatUser;
    :cond_2
    new-instance v6, Lcom/vkontakte/android/api/MessagesCreateChat;

    invoke-direct {v6, v5, v3}, Lcom/vkontakte/android/api/MessagesCreateChat;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v7, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$10;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/api/MessagesCreateChat;->setCallback(Lcom/vkontakte/android/api/MessagesCreateChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 489
    return-void
.end method

.method private doRemoveUser(I)V
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 630
    new-instance v1, Lcom/vkontakte/android/api/MessagesRemoveChatUser;

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    iget-object v0, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/MessagesRemoveChatUser;-><init>(II)V

    new-instance v0, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$16;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/MessagesRemoveChatUser;->setCallback(Lcom/vkontakte/android/api/MessagesRemoveChatUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 645
    return-void
.end method

.method private leaveChat()V
    .locals 3

    .prologue
    .line 648
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d005f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/ChatMembersFragment$17;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$17;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 667
    return-void
.end method

.method private loadOnlines()V
    .locals 5

    .prologue
    .line 416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v1, "needOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ChatUser;

    .line 418
    .local v2, "user":Lcom/vkontakte/android/ChatUser;
    iget-object v3, v2, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->isFriend(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    iget-object v3, v2, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_0
    iget-object v3, v2, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v2, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Lcom/vkontakte/android/data/Friends;->getOnlineStatus(I)I

    move-result v4

    iput v4, v3, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_0

    .line 424
    .end local v2    # "user":Lcom/vkontakte/android/ChatUser;
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateList()V

    .line 425
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 444
    :goto_1
    return-void

    .line 426
    :cond_2
    new-instance v3, Lcom/vkontakte/android/api/GetUserOnlines;

    invoke-direct {v3, v1}, Lcom/vkontakte/android/api/GetUserOnlines;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$9;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/GetUserOnlines;->setCallback(Lcom/vkontakte/android/api/GetUserOnlines$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private removeUser(I)V
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 616
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$15;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 627
    return-void
.end method

.method private setChatTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/MessagesEditChat;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    invoke-direct {v0, v1, p1}, Lcom/vkontakte/android/api/MessagesEditChat;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/fragments/ChatMembersFragment$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$14;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesEditChat;->setCallback(Lcom/vkontakte/android/api/MessagesEditChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private setDnd(I)V
    .locals 5
    .param p1, "time"    # I

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 516
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 517
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateServerSettings()V

    .line 518
    return-void
.end method

.method private setMute(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    const v4, 0x77359400

    .line 505
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 506
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 507
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 511
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateServerSettings()V

    .line 512
    return-void

    .line 509
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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
    const v7, 0x7f0d005b

    const/4 v6, 0x0

    .line 542
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "notify"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 543
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dnd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x77359400

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 544
    .local v0, "dnd":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    .line 545
    .local v1, "now":I
    if-le v0, v1, :cond_0

    .line 546
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d00ad

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d037e

    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$12;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$12;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d018d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 586
    :goto_0
    return-void

    .line 559
    :cond_0
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07000a

    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$13;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$13;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showFriendPicker()V
    .locals 4

    .prologue
    .line 589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "FriendsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 594
    const v2, 0x9808

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 595
    return-void
.end method

.method private updateChatUsers()V
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    new-instance v1, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$8;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 400
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->adapter:Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;->notifyDataSetChanged()V

    .line 448
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 449
    return-void
.end method

.method private updateServerSettings()V
    .locals 8

    .prologue
    const v7, 0x77359400

    const/4 v6, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "notify"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 522
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 523
    .local v1, "mute":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 524
    .local v0, "dnd":I
    new-instance v3, Lcom/vkontakte/android/api/AccountSetSilenceMode;

    iget v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v4, v7

    invoke-direct {v3, v4, v0, v1}, Lcom/vkontakte/android/api/AccountSetSilenceMode;-><init>(IIZ)V

    .local v3, "req":Lcom/vkontakte/android/APIRequest;
    move-object v4, v3

    .line 525
    check-cast v4, Lcom/vkontakte/android/api/AccountSetSilenceMode;

    new-instance v5, Lcom/vkontakte/android/fragments/ChatMembersFragment$11;

    invoke-direct {v5, p0, v3}, Lcom/vkontakte/android/fragments/ChatMembersFragment$11;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/APIRequest;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/AccountSetSilenceMode;->setCallback(Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->setBackground(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 539
    return-void
.end method

.method private updateSettings()V
    .locals 9

    .prologue
    const v7, 0x77359400

    const/4 v4, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "notify"

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 493
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifySwitch:Landroid/widget/Switch;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mute"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dnd"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    add-int/2addr v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 495
    .local v0, "dnd":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v1, v5

    .line 496
    .local v1, "now":I
    if-le v0, v1, :cond_2

    .line 497
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07000a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v3, v3, v5

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :goto_2
    return-void

    .end local v0    # "dnd":I
    .end local v1    # "now":I
    :cond_0
    move v3, v4

    .line 493
    goto :goto_0

    .line 498
    .restart local v0    # "dnd":I
    .restart local v1    # "now":I
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 500
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

    .line 670
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 671
    const v3, 0x9808

    if-ne p1, v3, :cond_0

    .line 672
    const-string v3, "user"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 673
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v3, Lcom/vkontakte/android/api/MessagesAddChatUser;

    iget v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v3, v4, v5}, Lcom/vkontakte/android/api/MessagesAddChatUser;-><init>(II)V

    new-instance v4, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$18;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/UserProfile;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/MessagesAddChatUser;->setCallback(Lcom/vkontakte/android/api/MessagesAddChatUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 709
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    if-ne p1, v8, :cond_1

    .line 710
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    .line 711
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 712
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    const v4, 0x7f0d034a

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 714
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    const/4 v4, -0x3

    const v5, 0x7f0d0052

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/ChatMembersFragment$19;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$19;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 720
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/vkontakte/android/fragments/ChatMembersFragment$20;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$20;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 728
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 729
    invoke-static {}, Lcom/vkontakte/android/UploaderService;->getNewID()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    .line 730
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 731
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "type"

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    const-string v3, "file"

    const-string v4, "file"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v3, "id"

    iget v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->uploadID:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    const-string v3, "new"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 736
    .local v2, "rp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "chat_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v3, "req_params"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 738
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 741
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "rp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-ne p2, v7, :cond_2

    if-ne p1, v8, :cond_2

    .line 742
    new-instance v3, Lcom/vkontakte/android/api/MessagesDeleteChatPhoto;

    iget v4, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    invoke-direct {v3, v4}, Lcom/vkontakte/android/api/MessagesDeleteChatPhoto;-><init>(I)V

    new-instance v4, Lcom/vkontakte/android/fragments/ChatMembersFragment$21;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment$21;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/MessagesDeleteChatPhoto;->setCallback(Lcom/vkontakte/android/api/MessagesDeleteChatPhoto$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 757
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 25
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 149
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "create"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    .line 153
    new-instance v19, Landroid/widget/ListView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    .line 154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 155
    new-instance v10, Lcom/vkontakte/android/fragments/ChatMembersFragment$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$2;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Landroid/content/Context;)V

    .line 160
    .local v10, "fv":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 162
    .end local v10    # "fv":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/fragments/ChatMembersFragment$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->adapter:Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersAdapter;

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const v20, -0x1f1f20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const v20, -0x1f1f20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "id"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->id:I

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "admin"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->admin:I

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$3;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    new-instance v19, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v20, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatMembersFragment$ChatMembersPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;Lcom/vkontakte/android/fragments/ChatMembersFragment$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f030020

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f08008f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "title"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$4;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v20

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v21

    const/high16 v22, 0x41000000    # 8.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v22

    const/high16 v23, 0x41800000    # 16.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleEdit:Landroid/widget/EditText;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v23

    const/high16 v24, 0x41000000    # 8.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    add-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 227
    new-instance v19, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const v20, 0x7f0d0058

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41900000    # 18.0f

    invoke-virtual/range {v19 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(IF)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x11

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const v20, 0x7f02003f

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlayPadding(IIII)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v20

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v21

    const/high16 v22, 0x41200000    # 10.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v22

    const/high16 v23, 0x41800000    # 16.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v23

    const/high16 v24, 0x41200000    # 10.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    add-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Lcom/vkontakte/android/ui/OverlayTextView;->setPadding(IIII)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const v20, -0xc77239

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->inviteBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const v20, 0x7f020077

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 237
    new-instance v19, Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const v20, 0x7f0d005e

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41900000    # 18.0f

    invoke-virtual/range {v19 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(IF)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const/16 v20, 0x11

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const v20, 0x7f02003d

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlayPadding(IIII)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v20

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v21

    const/high16 v22, 0x41200000    # 10.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v22

    const/high16 v23, 0x41800000    # 16.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v23

    const/high16 v24, 0x41200000    # 10.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    add-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Lcom/vkontakte/android/ui/OverlayTextView;->setPadding(IIII)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const/high16 v20, -0x1000000

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->leaveBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v19, v0

    const v20, 0x7f020077

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 247
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, -0x7a7a7b

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41900000    # 18.0f

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x11

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, 0x41a00000    # 20.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/high16 v21, 0x41a00000    # 20.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/high16 v22, 0x41a00000    # 20.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/high16 v23, 0x41a00000    # 20.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->returnText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x7f0d0273

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 254
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 255
    .local v15, "nview":Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 256
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 257
    .local v14, "nv":Landroid/widget/TextView;
    const/16 v19, 0x1

    const/high16 v20, 0x41900000    # 18.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 258
    const/high16 v19, -0x1000000

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    const v19, 0x7f0d0065

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 260
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/high16 v21, 0x41e00000    # 28.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const v20, 0x7f03007b

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    .line 262
    .local v17, "sw":Landroid/widget/Switch;
    const v19, 0x7f0d01d0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 263
    const v19, 0x7f0d01cb

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 264
    const/16 v19, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTextColor(I)V

    .line 267
    new-instance v19, Lcom/vkontakte/android/fragments/ChatMembersFragment$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$5;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 273
    new-instance v4, Landroid/content/res/ColorStateList;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, -0x1

    aput v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 275
    .local v4, "csl":Landroid/content/res/ColorStateList;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifySwitch:Landroid/widget/Switch;

    .line 276
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    const/high16 v21, 0x41c00000    # 24.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v19

    const/high16 v20, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    add-int v19, v19, v20

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v20

    const/high16 v21, 0x41200000    # 10.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v21

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v22

    const/high16 v23, 0x41200000    # 10.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 278
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const v20, 0x7f020043

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 281
    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 282
    .local v11, "hl1":Landroid/view/View;
    const v19, 0x7f020077

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->notifyView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 285
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 286
    .local v8, "dview":Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 287
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 288
    .local v7, "dv":Landroid/widget/TextView;
    const/16 v19, 0x1

    const/high16 v20, 0x41900000    # 18.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    const/high16 v19, -0x1000000

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    const v19, 0x7f0d005b

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 291
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41900000    # 18.0f

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, -0xc77239

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "qwe"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/high16 v21, 0x41e00000    # 28.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/high16 v22, 0x41e00000    # 28.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v19

    const/high16 v20, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    add-int v19, v19, v20

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v20

    const/high16 v21, 0x41200000    # 10.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v21

    const/high16 v22, 0x41800000    # 16.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v22

    const/high16 v23, 0x41200000    # 10.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 298
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const v20, 0x7f02003f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 301
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 302
    .local v12, "hl2":Landroid/view/View;
    const v19, 0x7f020077

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->dndView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    const v19, 0x7f0d0094

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 305
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "users"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 307
    .local v18, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v6, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v6}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 308
    .local v6, "cur":Lcom/vkontakte/android/UserProfile;
    sget v19, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v19

    iput v0, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 309
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "username"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 310
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "userphoto"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 311
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/UserProfile;

    .line 312
    .local v16, "p":Lcom/vkontakte/android/UserProfile;
    new-instance v5, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v5}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 313
    .local v5, "cu":Lcom/vkontakte/android/ChatUser;
    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 314
    iput-object v6, v5, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->chatUsers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateList()V

    goto :goto_1

    .line 304
    .end local v5    # "cu":Lcom/vkontakte/android/ChatUser;
    .end local v6    # "cur":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v18    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    const v19, 0x7f0d0060

    goto/16 :goto_0

    .line 318
    .restart local v6    # "cur":Lcom/vkontakte/android/UserProfile;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v18    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    const/high16 v19, 0x7f030000

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080022

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0d008f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatMembersFragment$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$6;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->setHasOptionsMenu(Z)V

    .line 331
    .end local v6    # "cur":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateSettings()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080090

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatMembersFragment$7;-><init>(Lcom/vkontakte/android/fragments/ChatMembersFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 349
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v19, "com.vkontakte.android.CHAT_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v19, "com.vkontakte.android.UPLOAD_DONE"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v19, "com.vkontakte.android.UPLOAD_PROGRESS"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v19, "com.vkontakte.android.UPLOAD_FAILED"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    sget-object v19, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "com.vkontakte.android.permission.ACCESS_DATA"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 359
    .end local v9    # "filter":Landroid/content/IntentFilter;
    :goto_3
    return-void

    .line 328
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatMembersFragment;->updateChatUsers()V

    goto :goto_2

    .line 356
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080090

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->titleView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f08008e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 407
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 408
    const v1, 0x7f0d028c

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 409
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->sendBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 410
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 412
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 413
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 363
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->create:Z

    if-nez v0, :cond_0

    .line 365
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 373
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 377
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatMembersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 378
    return-void
.end method
