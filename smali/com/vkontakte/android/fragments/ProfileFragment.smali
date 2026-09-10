.class public Lcom/vkontakte/android/fragments/ProfileFragment;
.super Lcom/vkontakte/android/fragments/PostListFragment;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;,
        Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;,
        Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;
    }
.end annotation


# static fields
.field private static final AVA_RESULT:I = 0xf3d

.field private static final EDIT_RESULT:I = 0xf3e


# instance fields
.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private buttons:Landroid/widget/LinearLayout;

.field private buttonsWrap:Landroid/widget/LinearLayout;

.field private counterClickListener:Landroid/view/View$OnClickListener;

.field private countersWrap:Landroid/widget/LinearLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private emptyText:Landroid/widget/TextView;

.field private fixedPostId:I

.field private headerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headerView:Landroid/view/View;

.field private infoAdapter:Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;

.field private infoItemClickListener:Landroid/view/View$OnClickListener;

.field private infoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private infoLine:Ljava/lang/String;

.field private lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

.field private ownerOnly:Z

.field private photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

.field private photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private postponedView:Landroid/view/View;

.field private profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

.field private relativesViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Landroid/view/View;

.field private showExtended:Z

.field private suggestsView:Landroid/view/View;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostListFragment;-><init>()V

    .line 104
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->showExtended:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->relativesViews:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    .line 112
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->ownerOnly:Z

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoLine:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photos:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/vkontakte/android/fragments/ProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$1;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItemClickListener:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Lcom/vkontakte/android/fragments/ProfileFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$2;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->counterClickListener:Landroid/view/View$OnClickListener;

    .line 273
    new-instance v0, Lcom/vkontakte/android/fragments/ProfileFragment$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$3;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 307
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/ProfileFragment;)Lcom/vkontakte/android/api/ExtendedUserProfile;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/api/ExtendedUserProfile;)Lcom/vkontakte/android/api/ExtendedUserProfile;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/ExtendedUserProfile;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/ProfileFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    return v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->toggleExtendedInfo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/ProfileFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ProfileFragment;->switchOwnerOnly(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->deletePhoto()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateHeaderItems()V

    return-void
.end method

.method static synthetic access$1702(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/ProfileFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/ProfileFragment;->loadWall(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ProfileFragment;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->openAudioStatus()V

    return-void
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoLine:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateButtons()V

    return-void
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->doLeaveGroup()V

    return-void
.end method

.method static synthetic access$2500(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->doToggleBlacklist()V

    return-void
.end method

.method static synthetic access$2600(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updatePostsButtons()V

    return-void
.end method

.method static synthetic access$2700(Lcom/vkontakte/android/fragments/ProfileFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->fixedPostId:I

    return v0
.end method

.method static synthetic access$2702(Lcom/vkontakte/android/fragments/ProfileFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->fixedPostId:I

    return p1
.end method

.method static synthetic access$2800(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ProfileFragment;->showStatusEditDlg(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/vkontakte/android/fragments/ProfileFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->ownerOnly:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/vkontakte/android/fragments/ProfileFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->showExtended:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/vkontakte/android/fragments/ProfileFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/vkontakte/android/fragments/ProfileFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->relativesViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->showNewPost()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->addFriend()V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ProfileFragment;->doAddFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->doRemoveFriend()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/ProfileFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ProfileFragment;->joinGroup(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ProfileFragment;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->leaveGroup()V

    return-void
.end method

.method private addFriend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1404
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030001

    invoke-static {v1, v2, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1405
    .local v0, "alertView":Landroid/view/View;
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0d000e

    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d021a

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01cd

    new-instance v3, Lcom/vkontakte/android/fragments/ProfileFragment$20;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/fragments/ProfileFragment$20;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0052

    invoke-virtual {v1, v2, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1418
    return-void

    .line 1405
    :cond_0
    const v2, 0x7f0d000f

    goto :goto_0
.end method

.method private buildInfoItems()V
    .locals 28

    .prologue
    .line 1091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1092
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_2

    .line 1093
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v4, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkontakte/android/AudioFile;

    if-eqz v6, :cond_8

    :cond_1
    const-string v6, "status"

    :goto_1
    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v1, :cond_4d

    .line 1097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    if-lez v1, :cond_3

    .line 1099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    if-lez v1, :cond_9

    .line 1100
    const-string v1, "%d %s %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aput-object v5, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1103
    .local v4, "bd":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d021c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "bdate"

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    .end local v4    # "bd":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->hometown:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v8, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->hometown:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relation:I

    if-lez v1, :cond_5

    .line 1110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    if-lez v1, :cond_b

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_a

    const v1, 0x7f070054

    :goto_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->relation:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartnerName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1114
    .local v8, "rel":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v5, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0234

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->relationPartner:I

    if-lez v2, :cond_d

    const-string v10, "relation"

    :goto_5
    invoke-direct/range {v5 .. v10}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    .end local v8    # "rel":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->langs:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->langs:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 1120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d022b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->relatives:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;

    .line 1122
    .local v8, "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    const/16 v26, 0x0

    .line 1123
    .local v26, "typeRes":I
    iget v1, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->type:I

    packed-switch v1, :pswitch_data_0

    .line 1140
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v13, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relative"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1093
    .end local v8    # "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v26    # "typeRes":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1102
    :cond_9
    const-string v1, "%d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v5, v5, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "bd":Ljava/lang/String;
    goto/16 :goto_2

    .line 1111
    .end local v4    # "bd":Ljava/lang/String;
    :cond_a
    const v1, 0x7f070055

    goto/16 :goto_3

    .line 1113
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_c

    const v1, 0x7f070052

    :goto_8
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->relation:I

    add-int/lit8 v2, v2, -0x1

    aget-object v8, v1, v2

    .local v8, "rel":Ljava/lang/String;
    goto/16 :goto_4

    .end local v8    # "rel":Ljava/lang/String;
    :cond_c
    const v1, 0x7f070053

    goto :goto_8

    .line 1114
    .restart local v8    # "rel":Ljava/lang/String;
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 1125
    .local v8, "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v26    # "typeRes":I
    :pswitch_0
    iget-object v1, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_e

    const v26, 0x7f0d0235

    .line 1126
    :goto_9
    goto/16 :goto_7

    .line 1125
    :cond_e
    const v26, 0x7f0d0236

    goto :goto_9

    .line 1128
    :pswitch_1
    iget-object v1, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_f

    const v26, 0x7f0d023b

    .line 1129
    :goto_a
    goto/16 :goto_7

    .line 1128
    :cond_f
    const v26, 0x7f0d023c

    goto :goto_a

    .line 1131
    :pswitch_2
    iget-object v1, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_10

    const v26, 0x7f0d023d

    .line 1132
    :goto_b
    goto/16 :goto_7

    .line 1131
    :cond_10
    const v26, 0x7f0d023e

    goto :goto_b

    .line 1134
    :pswitch_3
    iget-object v1, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_11

    const v26, 0x7f0d0237

    .line 1135
    :goto_c
    goto/16 :goto_7

    .line 1134
    :cond_11
    const v26, 0x7f0d0238

    goto :goto_c

    .line 1137
    :pswitch_4
    iget-object v1, v8, Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;->user:Lcom/vkontakte/android/UserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v1, :cond_12

    const v26, 0x7f0d0239

    :goto_d
    goto/16 :goto_7

    :cond_12
    const v26, 0x7f0d023a

    goto :goto_d

    .line 1143
    .end local v8    # "rel":Lcom/vkontakte/android/api/ExtendedUserProfile$Relative;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v26    # "typeRes":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 1144
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0228

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 1146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d021f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 1148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0230

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "mobilePhone"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 1150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0225

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->homePhone:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "homePhone"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 1152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0241

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->skype:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "skype"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->instagram:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 1154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d022c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->instagram:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "instagram"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0245

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->twitter:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "twitter"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 1158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0220

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->facebookName:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "facebook"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 1160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "website"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 1162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d022e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->livejournal:Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "livejournal"

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_30

    .line 1165
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0229

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->schools:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/vkontakte/android/api/ExtendedUserProfile$School;

    .line 1167
    .local v24, "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    if-eqz v24, :cond_1f

    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->name:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 1168
    move-object/from16 v0, v24

    iget-object v12, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->name:Ljava/lang/String;

    .line 1169
    .local v12, "title":Ljava/lang/String;
    move-object/from16 v0, v24

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->graduation:I

    if-lez v1, :cond_20

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget v6, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->graduation:I

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1172
    :cond_20
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->city:Ljava/lang/String;

    if-eqz v1, :cond_2a

    move-object/from16 v0, v24

    iget-object v13, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->city:Ljava/lang/String;

    .line 1173
    .local v13, "subtitle":Ljava/lang/String;
    :goto_f
    move-object/from16 v0, v24

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    if-gtz v1, :cond_21

    move-object/from16 v0, v24

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    if-lez v1, :cond_22

    :cond_21
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1175
    :cond_22
    move-object/from16 v0, v24

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    if-lez v1, :cond_23

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1177
    :cond_23
    move-object/from16 v0, v24

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->from:I

    if-lez v1, :cond_24

    move-object/from16 v0, v24

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    if-lez v1, :cond_24

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1179
    :cond_24
    move-object/from16 v0, v24

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    if-lez v1, :cond_25

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    iget v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->to:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1181
    :cond_25
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    if-eqz v1, :cond_26

    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1182
    :cond_26
    if-eqz v13, :cond_27

    .line 1183
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1184
    :cond_27
    move-object/from16 v0, v24

    iget-object v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->speciality:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 1185
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1186
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->speciality:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1188
    :cond_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    move-object/from16 v0, v24

    iget-object v11, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$School;->type:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 1172
    .end local v13    # "subtitle":Ljava/lang/String;
    :cond_2a
    const-string v13, ""

    goto/16 :goto_f

    .line 1190
    .end local v12    # "title":Ljava/lang/String;
    .end local v24    # "s":Lcom/vkontakte/android/api/ExtendedUserProfile$School;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->universities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_10
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/vkontakte/android/api/ExtendedUserProfile$University;

    .line 1191
    .local v27, "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    move-object/from16 v0, v27

    iget-object v12, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->name:Ljava/lang/String;

    .line 1192
    .restart local v12    # "title":Ljava/lang/String;
    move-object/from16 v0, v27

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->graduation:I

    if-lez v1, :cond_2c

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v27

    iget v6, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->graduation:I

    rem-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1195
    :cond_2c
    const-string v13, ""

    .line 1196
    .restart local v13    # "subtitle":Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->faculty:Ljava/lang/String;

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->faculty:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1197
    :cond_2d
    move-object/from16 v0, v27

    iget-object v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->chair:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 1198
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1199
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/vkontakte/android/api/ExtendedUserProfile$University;->chair:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1201
    :cond_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0246

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 1204
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "subtitle":Ljava/lang/String;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v27    # "u":Lcom/vkontakte/android/api/ExtendedUserProfile$University;
    :cond_30
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    if-eqz v1, :cond_31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_33

    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    if-eqz v1, :cond_32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    if-gtz v1, :cond_33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    if-gtz v1, :cond_33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    if-gtz v1, :cond_33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    if-gtz v1, :cond_33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    if-lez v1, :cond_3a

    .line 1205
    :cond_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    if-lez v1, :cond_34

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 1208
    .local v23, "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v23

    array-length v2, v0

    if-ge v1, v2, :cond_34

    .line 1209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->political:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v23, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    .end local v23    # "opts":[Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    if-eqz v1, :cond_35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_35

    .line 1212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->religion:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    :cond_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    if-lez v1, :cond_36

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 1215
    .restart local v23    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v23

    array-length v2, v0

    if-ge v1, v2, :cond_36

    .line 1216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->lifeMain:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v23, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    .end local v23    # "opts":[Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    if-lez v1, :cond_37

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 1220
    .restart local v23    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v23

    array-length v2, v0

    if-ge v1, v2, :cond_37

    .line 1221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->peopleMain:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v23, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    .end local v23    # "opts":[Ljava/lang/String;
    :cond_37
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    if-lez v1, :cond_38

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 1225
    .restart local v23    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v23

    array-length v2, v0

    if-ge v1, v2, :cond_38

    .line 1226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->smoking:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v23, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    .end local v23    # "opts":[Ljava/lang/String;
    :cond_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    if-lez v1, :cond_39

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 1230
    .restart local v23    # "opts":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v23

    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 1231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->alcohol:I

    add-int/lit8 v2, v2, -0x1

    aget-object v17, v23, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v23    # "opts":[Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    if-eqz v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    .line 1234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->inspiredBy:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    if-nez v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 1237
    :cond_3b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d022a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    if-eqz v1, :cond_3c

    .line 1239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0232

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->activities:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_3c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 1241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d022d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->interests:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_3d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 1243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->music:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_3e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 1245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d022f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->movies:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    :cond_3f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 1247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->tv:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    :cond_40
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 1249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d021e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->books:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_41
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 1251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0223

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->games:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    :cond_42
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 1253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0233

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->quotations:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 1255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0219

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_44
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "pages"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "pages"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    :goto_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v3, "subscriptions"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v3, "subscriptions"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_12
    add-int v25, v2, v1

    .line 1258
    .local v25, "subscriptions":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 1259
    .local v21, "groups":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "docs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "docs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1260
    .local v20, "docs":I
    :goto_14
    if-gtz v25, :cond_45

    if-gtz v21, :cond_45

    if-lez v20, :cond_48

    .line 1261
    :cond_45
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    if-lez v25, :cond_46

    .line 1263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "subscriptions"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    :cond_46
    if-lez v21, :cond_47

    .line 1265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "groups"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_47
    if-lez v20, :cond_48

    .line 1267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "docs"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    .end local v21    # "groups":I
    .end local v25    # "subscriptions":I
    :cond_48
    :goto_15
    return-void

    .line 1257
    .end local v20    # "docs":I
    :cond_49
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_11

    :cond_4a
    const/4 v1, 0x0

    goto/16 :goto_12

    .line 1258
    .restart local v25    # "subscriptions":I
    :cond_4b
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 1259
    .restart local v21    # "groups":I
    :cond_4c
    const/16 v20, 0x0

    goto/16 :goto_14

    .line 1271
    .end local v21    # "groups":I
    .end local v25    # "subscriptions":I
    :cond_4d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    if-eqz v1, :cond_4e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4e

    .line 1272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->about:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    :cond_4e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    if-eqz v1, :cond_4f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 1274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->website:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "website"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    :cond_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventStartTime:I

    if-lez v1, :cond_50

    .line 1276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventStartTime:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "time"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    :cond_50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    if-lez v1, :cond_51

    .line 1278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->eventEndTime:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "time"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    :cond_51
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-eqz v1, :cond_52

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_52

    .line 1280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-wide v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->lat:D

    const-wide v5, -0x3f3e6c0000000000L    # -9000.0

    cmpl-double v2, v2, v5

    if-eqz v2, :cond_54

    const-string v19, "place"

    :goto_16
    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    :cond_52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    if-eqz v1, :cond_53

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_53

    .line 1282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->mobilePhone:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "wiki"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    :cond_53
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "docs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v2, "docs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 1284
    .restart local v20    # "docs":I
    :goto_17
    if-lez v20, :cond_48

    .line 1285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    if-lez v20, :cond_48

    .line 1287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    new-instance v14, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;

    const/4 v15, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "docs"

    invoke-direct/range {v14 .. v19}, Lcom/vkontakte/android/fragments/ProfileFragment$InfoItem;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1280
    .end local v20    # "docs":I
    :cond_54
    const/16 v19, 0x0

    goto/16 :goto_16

    .line 1283
    :cond_55
    const/16 v20, 0x0

    goto :goto_17

    .line 1123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private copyLink()V
    .locals 4

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-nez v1, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1602
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1603
    .local v0, "cm":Landroid/text/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://vk.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->screenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0153

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private deletePhoto()V
    .locals 2

    .prologue
    .line 607
    new-instance v0, Lcom/vkontakte/android/api/PhotosDeleteAvatar;

    invoke-direct {v0}, Lcom/vkontakte/android/api/PhotosDeleteAvatar;-><init>()V

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$14;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosDeleteAvatar;->setCallback(Lcom/vkontakte/android/api/PhotosDeleteAvatar$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 624
    return-void
.end method

.method private doAddFriend(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1421
    new-instance v0, Lcom/vkontakte/android/api/FriendsAdd;

    iget v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    invoke-direct {v0, v1, p1}, Lcom/vkontakte/android/api/FriendsAdd;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$21;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/ProfileFragment$21;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsAdd;->setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1491
    return-void
.end method

.method private doLeaveGroup()V
    .locals 2

    .prologue
    .line 1578
    new-instance v0, Lcom/vkontakte/android/api/GroupsLeave;

    iget v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$26;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$26;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;->setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1598
    return-void
.end method

.method private doRemoveFriend()V
    .locals 2

    .prologue
    .line 1530
    new-instance v0, Lcom/vkontakte/android/api/FriendsDelete;

    iget v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$24;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$24;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsDelete;->setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1557
    return-void
.end method

.method private doToggleBlacklist()V
    .locals 3

    .prologue
    .line 1629
    new-instance v1, Lcom/vkontakte/android/api/AccountBanUser;

    iget v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/AccountBanUser;-><init>(IZ)V

    new-instance v0, Lcom/vkontakte/android/fragments/ProfileFragment$28;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$28;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/AccountBanUser;->setCallback(Lcom/vkontakte/android/api/AccountBanUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1645
    return-void

    .line 1629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private joinGroup(Z)V
    .locals 3
    .param p1, "sure"    # Z

    .prologue
    .line 1494
    new-instance v1, Lcom/vkontakte/android/api/GroupsJoin;

    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    neg-int v2, v0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/GroupsJoin;-><init>(IZ)V

    new-instance v0, Lcom/vkontakte/android/fragments/ProfileFragment$22;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$22;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/GroupsJoin;->setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1513
    return-void

    .line 1494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveGroup()V
    .locals 3

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1561
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->doLeaveGroup()V

    .line 1575
    :goto_0
    return-void

    .line 1564
    :cond_1
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d014f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d014e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$25;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$25;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private loadWall(II)V
    .locals 6
    .param p1, "_offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 1648
    if-lez p1, :cond_0

    iget p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->offset:I

    .line 1649
    :cond_0
    move v2, p1

    .line 1650
    .local v2, "offset":I
    new-instance v0, Lcom/vkontakte/android/api/WallGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->ownerOnly:Z

    const/4 v5, 0x0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/WallGet;-><init>(IIIZZ)V

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$29;

    invoke-direct {v1, p0, v2, p2}, Lcom/vkontakte/android/fragments/ProfileFragment$29;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;II)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGet;->setCallback(Lcom/vkontakte/android/api/WallGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1745
    return-void
.end method

.method private openAudioStatus()V
    .locals 5

    .prologue
    .line 1343
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1344
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1345
    const-string v1, "act_uid"

    iget v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1346
    const-string v1, "list"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vkontakte/android/AudioFile;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/api/ExtendedUserProfile;->audioStatus:Lcom/vkontakte/android/AudioFile;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1347
    const-string v1, "referer"

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1349
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1350
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "action"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1351
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1352
    return-void
.end method

.method private openInBrowser()V
    .locals 4

    .prologue
    .line 1608
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://m.vk.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->screenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1609
    return-void
.end method

.method private removeFriend()V
    .locals 7

    .prologue
    .line 1516
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00a4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameAcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameAcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$23;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$23;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1527
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1382
    new-instance v0, Lcom/vkontakte/android/api/StatusSet;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/StatusSet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$19;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/ProfileFragment$19;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/StatusSet;->setCallback(Lcom/vkontakte/android/api/StatusSet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1401
    return-void
.end method

.method private showNewPost()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1331
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1332
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    iget v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1333
    iget v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-gez v1, :cond_1

    .line 1334
    const-string v1, "group_title"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    const-string v1, "group_photo"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "public"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1338
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-nez v1, :cond_2

    const-string v1, "suggest"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1339
    :cond_2
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1340
    return-void
.end method

.method private showStatusEditDlg(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1355
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1356
    .local v1, "ed":Landroid/widget/EditText;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 1357
    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1358
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1360
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0304

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0275

    new-instance v4, Lcom/vkontakte/android/fragments/ProfileFragment$17;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/fragments/ProfileFragment$17;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0052

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1371
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$18;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/fragments/ProfileFragment$18;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1378
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1379
    return-void
.end method

.method private switchOwnerOnly(Z)V
    .locals 4
    .param p1, "owner"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1077
    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->ownerOnly:Z

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->dataLoading:Z

    if-eqz v2, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->ownerOnly:Z

    .line 1079
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->refreshing:Z

    .line 1080
    iget v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->itemsPerPage:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->loadWall(II)V

    .line 1081
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v3, 0x7f08015e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1082
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v2, 0x7f08015f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1083
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v2, 0x7f080160

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v2, 0x7f080161

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1081
    goto :goto_1
.end method

.method private toggleBlacklist()V
    .locals 7

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->doToggleBlacklist()V

    .line 1626
    :goto_0
    return-void

    .line 1614
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0087

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameAcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastNameAcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$27;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$27;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private toggleExtendedInfo()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v6, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    .line 1316
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->showExtended:Z

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->showExtended:Z

    .line 1317
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v8, 0x7f080155

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1318
    .local v7, "arrow":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v1, v8, :cond_3

    .line 1319
    const-string v4, "rotation"

    const/4 v1, 0x2

    new-array v8, v1, [F

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->showExtended:Z

    if-eqz v1, :cond_1

    move v1, v5

    :goto_1
    aput v1, v8, v2

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->showExtended:Z

    if-eqz v1, :cond_2

    :goto_2
    aput v6, v8, v3

    invoke-static {v7, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1326
    :goto_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoAdapter:Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;->notifyDataSetChanged()V

    .line 1327
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 1328
    return-void

    .end local v7    # "arrow":Landroid/view/View;
    :cond_0
    move v1, v2

    .line 1316
    goto :goto_0

    .restart local v7    # "arrow":Landroid/view/View;
    :cond_1
    move v1, v6

    .line 1319
    goto :goto_1

    :cond_2
    move v6, v5

    goto :goto_2

    .line 1321
    :cond_3
    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->showExtended:Z

    if-eqz v1, :cond_4

    move v1, v5

    :goto_4
    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->showExtended:Z

    if-eqz v2, :cond_5

    move v2, v6

    :goto_5
    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1322
    .local v0, "anim":Landroid/view/animation/RotateAnimation;
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1323
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1324
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .end local v0    # "anim":Landroid/view/animation/RotateAnimation;
    :cond_4
    move v1, v6

    .line 1321
    goto :goto_4

    :cond_5
    move v2, v5

    goto :goto_5
.end method

.method private updateButtons()V
    .locals 13

    .prologue
    .line 804
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 805
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 917
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    .line 807
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 808
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 810
    :cond_1
    iget v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v7, :cond_8

    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "firstButton":Landroid/widget/Button;
    const/4 v1, 0x0

    .line 813
    .local v1, "friendStatus":Ljava/lang/String;
    iget v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-ne v7, v8, :cond_f

    .line 814
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 815
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0d021b

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 816
    const-string v7, "post"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 818
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 819
    .local v5, "secondButton":Landroid/widget/ImageView;
    const v7, 0x7f02013a

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 820
    const v7, 0x7f020048

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 821
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 822
    const-string v7, "photo"

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 823
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42600000    # 56.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 824
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_3

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 825
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "secondButton":Landroid/widget/ImageView;
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 845
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x42280000    # 42.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 846
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    :cond_5
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->canWrite:Z

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-eq v7, v8, :cond_7

    .line 849
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 850
    .local v5, "secondButton":Landroid/widget/Button;
    const v7, 0x7f0d0247

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    .line 851
    const-string v7, "message"

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 852
    invoke-virtual {v5}, Landroid/widget/Button;->setSingleLine()V

    .line 853
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 854
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 855
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 856
    :cond_6
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "secondButton":Landroid/widget/Button;
    :cond_7
    if-eqz v1, :cond_8

    .line 860
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 861
    .local v2, "fs":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    const v7, -0x414040

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 863
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    .line 864
    .local v4, "pad":I
    const/4 v7, 0x0

    invoke-virtual {v2, v4, v4, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 865
    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 866
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 867
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v1    # "friendStatus":Ljava/lang/String;
    .end local v2    # "fs":Landroid/widget/TextView;
    .end local v4    # "pad":I
    :cond_8
    iget v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-gez v7, :cond_e

    .line 871
    const/4 v6, 0x0

    .line 872
    .local v6, "writeButton":Landroid/widget/Button;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    :cond_9
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v7, :cond_a

    .line 873
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .end local v6    # "writeButton":Landroid/widget/Button;
    check-cast v6, Landroid/widget/Button;

    .line 874
    .restart local v6    # "writeButton":Landroid/widget/Button;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v7, :cond_14

    const v7, 0x7f0d021b

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 875
    const-string v7, "post"

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 876
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 877
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    :cond_a
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1b

    .line 880
    :cond_b
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-nez v7, :cond_16

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    .line 881
    :cond_c
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 882
    .restart local v0    # "firstButton":Landroid/widget/Button;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_15

    :cond_d
    const v7, 0x7f0d0147

    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 883
    const-string v7, "join"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 884
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v6    # "writeButton":Landroid/widget/Button;
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 827
    .restart local v0    # "firstButton":Landroid/widget/Button;
    .restart local v1    # "friendStatus":Ljava/lang/String;
    :cond_f
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    if-nez v7, :cond_10

    .line 828
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 829
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0d021a

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 830
    const-string v7, "add"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 831
    :cond_10
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 832
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 833
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0d0222

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 834
    const-string v7, "cancel"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 835
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00ff

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameDat:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 836
    :cond_11
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_13

    .line 837
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "firstButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 838
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0d0221

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 839
    const-string v7, "accept"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 840
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v7, v7, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v7, :cond_12

    const v7, 0x7f0d00fd

    :goto_5
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v8, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_12
    const v7, 0x7f0d00fe

    goto :goto_5

    .line 841
    :cond_13
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 842
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00fc

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 874
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v1    # "friendStatus":Ljava/lang/String;
    .restart local v6    # "writeButton":Landroid/widget/Button;
    :cond_14
    const v7, 0x7f0d0243

    goto/16 :goto_2

    .line 882
    .restart local v0    # "firstButton":Landroid/widget/Button;
    :cond_15
    const v7, 0x7f0d0148

    goto/16 :goto_3

    .line 886
    .end local v0    # "firstButton":Landroid/widget/Button;
    :cond_16
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_19

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupAccess:I

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_19

    .line 887
    :cond_17
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 888
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0d0125

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 889
    const-string v7, "join"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 890
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 893
    .restart local v5    # "secondButton":Landroid/widget/Button;
    const v7, 0x7f0d0126

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(I)V

    .line 894
    const-string v7, "join_unsure"

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 895
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 897
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_18

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 898
    :cond_18
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 899
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "secondButton":Landroid/widget/Button;
    :cond_19
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    .line 900
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 901
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0d0149

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 902
    const-string v7, "join"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 903
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 905
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v6, :cond_1a

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 906
    :cond_1a
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 908
    .end local v0    # "firstButton":Landroid/widget/Button;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1b
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v7, v7, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_e

    .line 909
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 910
    .restart local v0    # "firstButton":Landroid/widget/Button;
    const v7, 0x7f0d0222

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(I)V

    .line 911
    const-string v7, "leave"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 912
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4
.end method

.method private updateCounters()V
    .locals 15

    .prologue
    .line 920
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 923
    iget v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v12, Lcom/vkontakte/android/Global;->uid:I

    if-ne v11, v12, :cond_6

    .line 924
    :cond_0
    const/4 v11, 0x6

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "friends"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "followers"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "groups"

    aput-object v12, v2, v11

    const/4 v11, 0x3

    const-string v12, "photos"

    aput-object v12, v2, v11

    const/4 v11, 0x4

    const-string v12, "videos"

    aput-object v12, v2, v11

    const/4 v11, 0x5

    const-string v12, "audios"

    aput-object v12, v2, v11

    .line 925
    .local v2, "cntrs":[Ljava/lang/String;
    const/4 v11, 0x6

    new-array v9, v11, [I

    fill-array-data v9, :array_0

    .line 933
    .local v9, "titleRes":[I
    :goto_0
    const/4 v7, 0x0

    .line 934
    .local v7, "n":I
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 935
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v11, v11, 0xf

    const/4 v12, 0x3

    if-lt v11, v12, :cond_1

    iget v11, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v11, v12, :cond_9

    :cond_1
    const/4 v10, 0x1

    .line 936
    .local v10, "twoRow":Z
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    .line 937
    .local v3, "curLayout":Landroid/widget/LinearLayout;
    if-eqz v10, :cond_a

    .line 938
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 939
    new-instance v3, Landroid/widget/LinearLayout;

    .end local v3    # "curLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 940
    .restart local v3    # "curLayout":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 941
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 942
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 943
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    const/4 v11, 0x6

    if-ge v7, v11, :cond_d

    array-length v11, v2

    if-ge v5, v11, :cond_d

    .line 948
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    aget-object v12, v2, v5

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    aget-object v12, v2, v5

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_5

    .line 949
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f030068

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 950
    .local v1, "cntr":Landroid/view/View;
    const v11, 0x7f08013f

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 952
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    aget-object v12, v2, v5

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 953
    .local v0, "c":I
    const v11, 0x7f08013f

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aget v13, v9, v5

    const v12, 0x1869f

    if-le v0, v12, :cond_b

    const/4 v12, 0x7

    :goto_4
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v13, v12, v14}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    const v11, 0x7f08013e

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x1869f

    if-le v0, v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v13, v0, 0x3e8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "K"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/high16 v12, 0x42700000    # 60.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v6, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 956
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v7, :cond_3

    if-eqz v10, :cond_2

    const/4 v11, 0x3

    if-eq v7, v11, :cond_3

    :cond_2
    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 957
    :cond_3
    if-eqz v10, :cond_4

    const/4 v11, 0x3

    if-ne v7, v11, :cond_4

    .line 958
    new-instance v3, Landroid/widget/LinearLayout;

    .end local v3    # "curLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 959
    .restart local v3    # "curLayout":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 960
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 962
    :cond_4
    aget-object v11, v2, v5

    invoke-virtual {v1, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 963
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->counterClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 964
    invoke-virtual {v3, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    add-int/lit8 v7, v7, 0x1

    .line 947
    .end local v0    # "c":I
    .end local v1    # "cntr":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 926
    .end local v2    # "cntrs":[Ljava/lang/String;
    .end local v3    # "curLayout":Landroid/widget/LinearLayout;
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "i":I
    .end local v7    # "n":I
    .end local v9    # "titleRes":[I
    .end local v10    # "twoRow":Z
    :cond_6
    iget v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-gez v11, :cond_8

    .line 927
    const/4 v11, 0x6

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "members"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "topics"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "docs"

    aput-object v12, v2, v11

    const/4 v11, 0x3

    const-string v12, "photos"

    aput-object v12, v2, v11

    const/4 v11, 0x4

    const-string v12, "videos"

    aput-object v12, v2, v11

    const/4 v11, 0x5

    const-string v12, "audios"

    aput-object v12, v2, v11

    .line 928
    .restart local v2    # "cntrs":[Ljava/lang/String;
    const/4 v11, 0x6

    new-array v9, v11, [I

    const/4 v12, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_7

    const v11, 0x7f07004c

    :goto_6
    aput v11, v9, v12

    const/4 v11, 0x1

    const v12, 0x7f070056

    aput v12, v9, v11

    const/4 v11, 0x2

    const v12, 0x7f07004b

    aput v12, v9, v11

    const/4 v11, 0x3

    const v12, 0x7f070051

    aput v12, v9, v11

    const/4 v11, 0x4

    const v12, 0x7f070057

    aput v12, v9, v11

    const/4 v11, 0x5

    const v12, 0x7f070049

    aput v12, v9, v11

    .restart local v9    # "titleRes":[I
    goto/16 :goto_0

    .end local v9    # "titleRes":[I
    :cond_7
    const v11, 0x7f07004f

    goto :goto_6

    .line 930
    .end local v2    # "cntrs":[Ljava/lang/String;
    :cond_8
    const/4 v11, 0x7

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "friends"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "mutual_friends"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "followers"

    aput-object v12, v2, v11

    const/4 v11, 0x3

    const-string v12, "photos"

    aput-object v12, v2, v11

    const/4 v11, 0x4

    const-string v12, "videos"

    aput-object v12, v2, v11

    const/4 v11, 0x5

    const-string v12, "audios"

    aput-object v12, v2, v11

    const/4 v11, 0x6

    const-string v12, "groups"

    aput-object v12, v2, v11

    .line 931
    .restart local v2    # "cntrs":[Ljava/lang/String;
    const/4 v11, 0x7

    new-array v9, v11, [I

    fill-array-data v9, :array_1

    .restart local v9    # "titleRes":[I
    goto/16 :goto_0

    .line 935
    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    .restart local v7    # "n":I
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 945
    .restart local v3    # "curLayout":Landroid/widget/LinearLayout;
    .restart local v10    # "twoRow":Z
    :cond_a
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .restart local v0    # "c":I
    .restart local v1    # "cntr":Landroid/view/View;
    .restart local v5    # "i":I
    :cond_b
    move v12, v0

    .line 953
    goto/16 :goto_4

    .line 954
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 968
    .end local v0    # "c":I
    .end local v1    # "cntr":Landroid/view/View;
    :cond_d
    rem-int/lit8 v11, v7, 0x3

    if-eqz v11, :cond_10

    .line 969
    rem-int/lit8 v11, v7, 0x3

    rsub-int/lit8 v8, v11, 0x3

    .line 970
    .local v8, "nn":I
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v8, :cond_10

    .line 971
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/high16 v12, 0x42700000    # 60.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v6, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 972
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-lez v5, :cond_f

    if-eqz v10, :cond_e

    const/4 v11, 0x3

    if-eq v5, v11, :cond_f

    :cond_e
    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 973
    :cond_f
    new-instance v11, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 976
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "nn":I
    :cond_10
    return-void

    .line 925
    :array_0
    .array-data 4
        0x7f07004d
        0x7f07004c
        0x7f07004e
        0x7f070051
        0x7f070057
        0x7f070049
    .end array-data

    .line 931
    :array_1
    .array-data 4
        0x7f07004d
        0x7f070050
        0x7f07004c
        0x7f070051
        0x7f070057
        0x7f070049
        0x7f07004e
    .end array-data
.end method

.method private updateHeaderItems()V
    .locals 10

    .prologue
    const v9, 0x7f08015f

    const/4 v3, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 682
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->contentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 685
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    const-string v4, "gif"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v4, :cond_2

    .line 691
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v4, 0x7f080158

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->showAllPosts:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v0, :cond_10

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->ownerOnly:Z

    .line 694
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v4, 0x7f08015e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->ownerOnly:Z

    if-nez v0, :cond_11

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 695
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->ownerOnly:Z

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 697
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateHeaderView()V

    .line 698
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->buildInfoItems()V

    .line 699
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateButtons()V

    .line 700
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateCounters()V

    .line 701
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photos:Ljava/util/ArrayList;

    iget v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v7, "photos"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->counters:Ljava/util/HashMap;

    const-string v7, "photos"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    invoke-virtual {v4, v5, v6, v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->init(Ljava/util/List;II)V

    .line 702
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v0, :cond_13

    .line 703
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d036d

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :goto_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 707
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v0, v8, :cond_5

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 713
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v1, 0x7f080160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v0, :cond_14

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v0, v8, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-gez v0, :cond_9

    .line 715
    :cond_8
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 717
    :cond_9
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v0, v8, :cond_a

    .line 718
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 720
    :cond_a
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canSeeAllPosts:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    if-ne v0, v8, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-ltz v0, :cond_d

    :cond_c
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_e

    .line 721
    :cond_d
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 722
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_15

    .line 723
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 726
    :goto_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 727
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 730
    :cond_e
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 731
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 735
    :cond_f
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    if-gez v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 737
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    const v1, 0x7f0d0226

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 741
    :goto_7
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->setRefreshEnabled(Z)V

    .line 744
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateList()V

    goto/16 :goto_0

    :cond_10
    move v0, v2

    .line 693
    goto/16 :goto_1

    :cond_11
    move v0, v2

    .line 694
    goto/16 :goto_2

    :cond_12
    move v0, v2

    .line 701
    goto/16 :goto_3

    .line 705
    :cond_13
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d036d

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d012e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_14
    move v0, v3

    .line 713
    goto/16 :goto_5

    .line 725
    :cond_15
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 739
    :cond_16
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    const v1, 0x7f0d0227

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7
.end method

.method private updateHeaderView()V
    .locals 17

    .prologue
    .line 979
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v11, :cond_6

    .line 980
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 981
    .local v5, "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    if-eqz v11, :cond_0

    .line 982
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 983
    .local v1, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    const-string v12, "F"

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 984
    .local v8, "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020166

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 985
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 986
    new-instance v11, Landroid/text/style/ImageSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v4, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v8, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 987
    const-string v11, "\u00a0"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 988
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 989
    move-object v5, v1

    .line 991
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080157

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080154

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v11, :cond_8

    .line 1023
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v9, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->city:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    if-lez v11, :cond_3

    .line 1026
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1027
    .local v2, "c":Ljava/util/Calendar;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1028
    .local v6, "now":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1029
    .local v3, "c2":Ljava/util/Calendar;
    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->bDay:I

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 1030
    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v12, v12, Lcom/vkontakte/android/api/ExtendedUserProfile;->bMonth:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->bYear:I

    sub-int v10, v6, v11

    .line 1032
    .local v10, "years":I
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1033
    add-int/lit8 v10, v10, -0x1

    .line 1035
    :cond_2
    const v11, 0x7f070048

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v11, v10, v12}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v3    # "c2":Ljava/util/Calendar;
    .end local v6    # "now":I
    .end local v10    # "years":I
    :cond_3
    const-string v11, ", "

    invoke-static {v11, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoLine:Ljava/lang/String;

    .line 1041
    .end local v9    # "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->activity:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 1042
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080154

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoLine:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v11, :cond_9

    .line 1045
    const v11, 0x7f0d01d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/vkontakte/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1046
    .local v7, "online":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget v11, v11, Lcom/vkontakte/android/UserProfile;->online:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    .line 1047
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1048
    .restart local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    const-string v12, "F"

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 1049
    .restart local v8    # "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200ef

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1050
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1051
    new-instance v11, Landroid/text/style/ImageSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v4, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v8, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1052
    const-string v11, "\u00a0"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1053
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1054
    move-object v7, v1

    .line 1056
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080156

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    .end local v7    # "online":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080156

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1074
    return-void

    .line 993
    .end local v5    # "name":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v5, v11, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 994
    .restart local v5    # "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->verified:Z

    if-eqz v11, :cond_7

    .line 995
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 996
    .restart local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    const-string v12, "F"

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 997
    .restart local v8    # "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020166

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 998
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 999
    new-instance v11, Landroid/text/style/ImageSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v4, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v8, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1000
    const-string v11, "\u00a0"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1001
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1002
    move-object v5, v1

    .line 1004
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080157

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080157

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->setSingleLine()V

    .line 1006
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080157

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080157

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080157

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080157

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    goto/16 :goto_0

    .line 1039
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->infoLine:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoLine:Ljava/lang/String;

    goto/16 :goto_1

    .line 1057
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    if-lez v11, :cond_c

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v11, :cond_b

    const v11, 0x7f0d014c

    :goto_3
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v15, v15, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeen:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v11, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1059
    .restart local v7    # "online":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v11, v11, Lcom/vkontakte/android/api/ExtendedUserProfile;->lastSeenMobile:Z

    if-eqz v11, :cond_a

    .line 1060
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1061
    .restart local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    const-string v12, "F"

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 1062
    .restart local v8    # "sp":Landroid/text/Spannable;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0200ef

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1063
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1064
    new-instance v11, Landroid/text/style/ImageSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v4, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v8, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1065
    const-string v11, "\u00a0"

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1066
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1067
    move-object v7, v1

    .line 1069
    .end local v1    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080156

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1058
    .end local v7    # "online":Ljava/lang/CharSequence;
    :cond_b
    const v11, 0x7f0d014d

    goto :goto_3

    .line 1071
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v12, 0x7f080156

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updatePostsButtons()V
    .locals 5

    .prologue
    const v4, 0x7f08007b

    .line 1303
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->postponedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1304
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->suggestsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1305
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    if-lez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->postponedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070047

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->postponedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    if-lez v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->suggestsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v1, v1, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-eqz v1, :cond_2

    const v1, 0x7f070067

    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->suggestsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    :cond_1
    return-void

    .line 1310
    :cond_2
    const v1, 0x7f070068

    goto :goto_0
.end method


# virtual methods
.method protected canAddPost(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 4
    .param p1, "post"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 375
    iget v2, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-ne v2, v3, :cond_0

    .line 376
    const/16 v2, 0x800

    invoke-virtual {p1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->updatePostsButtons(II)V

    :cond_0
    :goto_0
    move v0, v1

    .line 384
    :cond_1
    return v0

    .line 378
    :cond_2
    const/16 v2, 0x1000

    invoke-virtual {p1, v2}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updatePostsButtons(II)V

    goto :goto_0
.end method

.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 1753
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 668
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->refreshing:Z

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/fragments/ProfileFragment;->loadInitial(ZI)V

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/ProfileFragment;->loadWall(II)V

    goto :goto_0
.end method

.method public editProfile()V
    .locals 3

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/ProfileEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xf3e

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 570
    return-void
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 3

    .prologue
    .line 389
    new-instance v0, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;-><init>()V

    .line 390
    .local v0, "la":Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;
    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/fragments/ProfileFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 391
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MergeImageLoaderAdapter;->addAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 392
    return-object v0
.end method

.method protected getPostsOffset()I
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoAdapter:Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v0, :cond_0

    const-string v0, "wall_user"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "wall_group"

    goto :goto_0
.end method

.method public loadInitial(ZI)V
    .locals 3
    .param p1, "refresh"    # Z
    .param p2, "count"    # I

    .prologue
    .line 751
    new-instance v0, Lcom/vkontakte/android/api/GetFullProfile;

    iget v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/GetFullProfile;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$16;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/fragments/ProfileFragment$16;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GetFullProfile;->setCallback(Lcom/vkontakte/android/api/GetFullProfile$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 801
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0xf3d

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 573
    if-ne p1, v7, :cond_0

    if-ne p2, v5, :cond_0

    .line 574
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    const-string v2, "file"

    const-string v3, "file"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 579
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    if-ne p1, v7, :cond_2

    if-ne p2, v4, :cond_2

    .line 580
    const-string v2, "option"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 581
    .local v0, "idx":I
    if-nez v0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->openProfilePhotos()V

    .line 584
    :cond_1
    if-ne v0, v4, :cond_2

    .line 585
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0086

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d00a7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d037e

    new-instance v4, Lcom/vkontakte/android/fragments/ProfileFragment$13;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$13;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d018d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 599
    .end local v0    # "idx":I
    :cond_2
    const/16 v2, 0xf3e

    if-ne p1, v2, :cond_3

    if-ne p2, v5, :cond_3

    .line 600
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d023f

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 602
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->loadData()V

    .line 604
    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    .line 318
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 319
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 320
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 323
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    .line 324
    iget v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-nez v3, :cond_0

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    .line 325
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {p1, v3}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/ProfileFragment;->setHasOptionsMenu(Z)V

    .line 327
    iget v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-gez v3, :cond_4

    const v3, 0x7f0d0122

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 328
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_container"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 329
    .local v1, "abId":I
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 330
    .local v2, "actionBarView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 331
    new-instance v3, Lcom/vkontakte/android/fragments/ProfileFragment$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$4;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    if-nez v3, :cond_2

    .line 341
    new-instance v3, Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-direct {v3}, Lcom/vkontakte/android/ui/MergeAdapter;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    .line 342
    new-instance v3, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;Lcom/vkontakte/android/fragments/ProfileFragment$1;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoAdapter:Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;

    .line 343
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->infoAdapter:Lcom/vkontakte/android/fragments/ProfileFragment$ProfileInfoAdapter;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->lAdapter:Lcom/vkontakte/android/ui/MergeAdapter;

    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    :cond_2
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 347
    return-void

    .line 325
    .end local v1    # "abId":I
    .end local v2    # "actionBarView":Landroid/view/View;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "club"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 327
    :cond_4
    const v3, 0x7f0d0218

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 415
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateCounters()V

    .line 416
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 311
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v7, 0x7f0801fe

    const v6, 0x7f0801fd

    const v5, 0x7f080200

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 397
    :cond_0
    const v0, 0x7f0f0009

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 398
    const v0, 0x7f0801fc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    const v0, 0x7f0801fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->groupType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->canPost:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    if-lez v0, :cond_6

    .line 401
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 404
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0d033b

    :goto_4
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 398
    goto :goto_1

    :cond_3
    move v0, v2

    .line 399
    goto :goto_2

    :cond_4
    move v1, v2

    .line 402
    goto :goto_3

    .line 405
    :cond_5
    const v0, 0x7f0d004e

    goto :goto_4

    .line 407
    :cond_6
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 408
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v3, v3, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v3, v1, :cond_7

    :goto_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 409
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 408
    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const v8, -0xcec8bd

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    .line 446
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/PostListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f03006b

    invoke-virtual {p1, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    .line 449
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 450
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 451
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v2, 0x7f080153

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$5;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    .line 459
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 460
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    .line 461
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 462
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttons:Landroid/widget/LinearLayout;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 464
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->buttonsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 465
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    .line 466
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 467
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->countersWrap:Landroid/widget/LinearLayout;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 468
    new-instance v1, Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 469
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v1, v8}, Lcom/vkontakte/android/ui/PhotoFeedView;->setBackgroundColor(I)V

    .line 470
    const v1, 0x7f030070

    invoke-virtual {p1, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    .line 471
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v2, 0x7f08015e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$6;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$6;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v2, 0x7f08015f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$7;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v2, 0x7f080160

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$8;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->selector:Landroid/view/View;

    const v2, 0x7f08015e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setSelected(Z)V

    .line 491
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    .line 492
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    const v2, 0x7f0d0369

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 493
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 494
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 495
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 496
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyText:Landroid/widget/TextView;

    const v2, -0x5c5c5d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030034

    invoke-static {v1, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->postponedView:Landroid/view/View;

    .line 499
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030034

    invoke-static {v1, v2, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->suggestsView:Landroid/view/View;

    .line 500
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->postponedView:Landroid/view/View;

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$9;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$9;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->suggestsView:Landroid/view/View;

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$10;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$10;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->removeView(Landroid/view/View;)V

    .line 519
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v2, 0x7f080158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$11;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$11;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_0

    .line 530
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->headerView:Landroid/view/View;

    const v2, 0x7f080158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ProfileFragment$12;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$12;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateHeaderItems()V

    .line 541
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 314
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->onDestroy()V

    .line 315
    return-void
.end method

.method public onDetach()V
    .locals 6

    .prologue
    .line 350
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "abId":I
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 353
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    :cond_0
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->onDetach()V

    .line 356
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 419
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 442
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 421
    :sswitch_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->removeFriend()V

    goto :goto_0

    .line 424
    :sswitch_1
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->leaveGroup()V

    goto :goto_0

    .line 427
    :sswitch_2
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->copyLink()V

    goto :goto_0

    .line 430
    :sswitch_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->openInBrowser()V

    goto :goto_0

    .line 433
    :sswitch_4
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->toggleBlacklist()V

    goto :goto_0

    .line 436
    :sswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->editProfile()V

    goto :goto_0

    .line 439
    :sswitch_6
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->showNewPost()V

    goto :goto_0

    .line 419
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08000c -> :sswitch_2
        0x7f0801fb -> :sswitch_6
        0x7f0801fc -> :sswitch_5
        0x7f0801fd -> :sswitch_0
        0x7f0801fe -> :sswitch_1
        0x7f0801ff -> :sswitch_3
        0x7f080200 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->onPause()V

    .line 360
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->onPause()V

    .line 361
    return-void
.end method

.method protected onPostDeleted(Lcom/vkontakte/android/NewsEntry;)V
    .locals 3
    .param p1, "post"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 546
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->updatePostsButtons(II)V

    .line 549
    :cond_0
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0, v2, v1}, Lcom/vkontakte/android/fragments/ProfileFragment;->updatePostsButtons(II)V

    .line 552
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->onResume()V

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->photoFeed:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->onResume()V

    .line 366
    return-void
.end method

.method public openProfilePhotos()V
    .locals 6

    .prologue
    .line 627
    new-instance v0, Lcom/vkontakte/android/api/PhotosGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    const/4 v2, -0x6

    const/4 v3, 0x0

    const/16 v4, 0x1f4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/PhotosGet;-><init>(IIIIZ)V

    new-instance v1, Lcom/vkontakte/android/fragments/ProfileFragment$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ProfileFragment$15;-><init>(Lcom/vkontakte/android/fragments/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGet;->setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 658
    return-void
.end method

.method public setUserPhoto(Ljava/lang/String;)V
    .locals 1
    .param p1, "photo"    # Ljava/lang/String;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    if-nez v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->profile:Lcom/vkontakte/android/UserProfile;

    iput-object p1, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iput-object p1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    .line 678
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateList()V

    goto :goto_0
.end method

.method public showUpdatePhotoDlg(Z)V
    .locals 5
    .param p1, "havePhotos"    # Z

    .prologue
    const/4 v4, 0x1

    .line 555
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/ImagePickerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "allow_album"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    const-string v2, "limit"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 560
    const v2, 0x7f0d01d2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    const v2, 0x7f0d009d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    const-string v2, "custom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 564
    :cond_0
    const-string v2, "no_thumbs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 565
    const/16 v2, 0xf3d

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 566
    return-void
.end method

.method public updatePostsButtons(II)V
    .locals 3
    .param p1, "postponed"    # I
    .param p2, "suggested"    # I

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    .line 1294
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->suggestedCount:I

    .line 1295
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updatePostsButtons()V

    .line 1296
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->updateList()V

    .line 1297
    iget v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "postponed_count"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ProfileFragment;->profile:Lcom/vkontakte/android/api/ExtendedUserProfile;

    iget v2, v2, Lcom/vkontakte/android/api/ExtendedUserProfile;->postponedCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1300
    :cond_0
    return-void
.end method
