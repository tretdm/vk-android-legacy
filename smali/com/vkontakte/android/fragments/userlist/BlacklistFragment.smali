.class public Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;
.super Lcom/vkontakte/android/fragments/AbsUserListFragment;
.source "BlacklistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private removeClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;-><init>()V

    .line 22
    new-instance v0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$1;-><init>(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;Lcom/vkontakte/android/UserProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->unban(Lcom/vkontakte/android/UserProfile;)V

    return-void
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->removeClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method private unban(Lcom/vkontakte/android/UserProfile;)V
    .locals 3
    .param p1, "user"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 76
    new-instance v0, Lcom/vkontakte/android/api/AccountBanUser;

    iget v1, p1, Lcom/vkontakte/android/UserProfile;->uid:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/AccountBanUser;-><init>(IZ)V

    new-instance v1, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$3;-><init>(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;Lcom/vkontakte/android/UserProfile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountBanUser;->setCallback(Lcom/vkontakte/android/api/AccountBanUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 93
    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 73
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/vkontakte/android/api/AccountGetBanned;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/AccountGetBanned;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$2;-><init>(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountGetBanned;->setCallback(Lcom/vkontakte/android/api/AccountGetBanned$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 65
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->adapter:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;-><init>(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->adapter:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->adapter:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;

    return-object v0
.end method

.method protected hasExtended()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/AbsUserListFragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    const v0, 0x7f0d004c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 35
    return-void
.end method
