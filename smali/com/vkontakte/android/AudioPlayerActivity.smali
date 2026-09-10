.class public Lcom/vkontakte/android/AudioPlayerActivity;
.super Lcom/vkontakte/android/VKFragmentActivity;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/AudioPlayerActivity$CoverInfoHolder;,
        Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;,
        Lcom/vkontakte/android/AudioPlayerActivity$NoPaddingTransitionDrawable;
    }
.end annotation


# static fields
.field private static pauseIcon:Landroid/graphics/drawable/Drawable;

.field private static playIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field addBtn:Landroid/widget/ImageView;

.field private addRequest:Lcom/vkontakte/android/APIRequest;

.field private animArtist:Ljava/lang/String;

.field private animTitle:Ljava/lang/String;

.field private aview:Landroid/view/View;

.field canUpdateProgress:Z

.field private coverAid:I

.field private coverOid:I

.field private coverViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field file:Lcom/vkontakte/android/AudioFile;

.field private firstInfoUpdate:Z

.field public isRegistered:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private viewPagerScrollState:I

.field wasTouching:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;-><init>()V

    .line 62
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->canUpdateProgress:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->isRegistered:Z

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverViews:Ljava/util/HashMap;

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->firstInfoUpdate:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->animArtist:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->animTitle:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->addRequest:Lcom/vkontakte/android/APIRequest;

    .line 75
    new-instance v0, Lcom/vkontakte/android/AudioPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioPlayerActivity$1;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 1022
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/AudioPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->viewPagerScrollState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/AudioPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getCurrentCoverScroller()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/AudioPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->viewPagerScrollState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->updateCoverImage()V

    return-void
.end method

.method static synthetic access$1200()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/vkontakte/android/AudioPlayerActivity;->pauseIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/vkontakte/android/AudioPlayerActivity;->playIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/AudioPlayerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverViews:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/AudioPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->showBroadcastDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->addRequest:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/AudioFile;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/AudioPlayerActivity;->deleteFile(Lcom/vkontakte/android/AudioFile;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/AudioPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->firstInfoUpdate:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/AudioPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->firstInfoUpdate:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/AudioPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->animArtist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/AudioPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->animArtist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/AudioPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->animTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/AudioPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->animTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/vkontakte/android/AudioPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/AudioPlayerActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->usePager()Z

    move-result v0

    return v0
.end method

.method private addCurrent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 477
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->addRequest:Lcom/vkontakte/android/APIRequest;

    if-nez v1, :cond_0

    .line 478
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 479
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 480
    invoke-direct {p0, v0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->deleteFile(Lcom/vkontakte/android/AudioFile;Z)V

    .line 509
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    :goto_0
    return-void

    .line 483
    .restart local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_1
    if-eqz v0, :cond_0

    .line 484
    new-instance v1, Lcom/vkontakte/android/api/AudioAdd;

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v3, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vkontakte/android/api/AudioAdd;-><init>(III)V

    new-instance v2, Lcom/vkontakte/android/AudioPlayerActivity$12;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity$12;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/AudioAdd;->setCallback(Lcom/vkontakte/android/api/AudioAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->addRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private confirmAndDelete()V
    .locals 4

    .prologue
    .line 512
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 513
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 514
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_0

    .line 515
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0086

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d037e

    new-instance v3, Lcom/vkontakte/android/AudioPlayerActivity$13;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity$13;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d018d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 529
    .end local v0    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    return-void
.end method

.method private deleteFile(Lcom/vkontakte/android/AudioFile;Z)V
    .locals 3
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;
    .param p2, "updateCover"    # Z

    .prologue
    .line 532
    new-instance v0, Lcom/vkontakte/android/api/AudioDelete;

    iget v1, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/AudioDelete;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/AudioPlayerActivity$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/AudioPlayerActivity$14;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;Z)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AudioDelete;->setCallback(Lcom/vkontakte/android/api/AudioDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 558
    return-void
.end method

.method private doUpdateCover(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oldAid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->oldAid:I

    const/4 v4, 0x2

    new-instance v5, Lcom/vkontakte/android/AudioPlayerActivity$18;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/AudioPlayerActivity$18;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Z)V

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIIIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 798
    return-void
.end method

.method private getCurrentCoverScroller()Landroid/view/View;
    .locals 3

    .prologue
    .line 572
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 573
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverViews:Ljava/util/HashMap;

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 576
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v2, 0x7f080072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private searchArtist()V
    .locals 4

    .prologue
    .line 561
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 562
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 563
    .local v1, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v1, :cond_0

    .line 564
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "search"

    iget-object v3, v1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 566
    const-string v2, "AudioListFragment"

    invoke-static {v2, v0, p0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 569
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "file":Lcom/vkontakte/android/AudioFile;
    :cond_0
    return-void
.end method

.method private showBroadcastDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 684
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v2, "grps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getAdminedGroups(Ljava/util/ArrayList;)V

    .line 686
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v6, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v5, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v8, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v8}, Lcom/vkontakte/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v7

    .line 689
    .local v7, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0174

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .local v1, "g":Lcom/vkontakte/android/api/Group;
    iget-object v8, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [Z

    .line 692
    .local v0, "checked":[Z
    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    aput-boolean v8, v0, v10

    .line 693
    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    const/4 v3, 0x1

    .line 695
    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 696
    .restart local v1    # "g":Lcom/vkontakte/android/api/Group;
    iget v8, v1, Lcom/vkontakte/android/api/Group;->id:I

    neg-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    aput-boolean v8, v0, v3

    .line 697
    iget v8, v1, Lcom/vkontakte/android/api/Group;->id:I

    neg-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 700
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    :cond_1
    new-instance v8, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d003a

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v10, Lcom/vkontakte/android/AudioPlayerActivity$17;

    invoke-direct {v10, p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity$17;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;[Z)V

    invoke-virtual {v9, v8, v0, v10}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d01cd

    new-instance v10, Lcom/vkontakte/android/AudioPlayerActivity$16;

    invoke-direct {v10, p0, v0, v5}, Lcom/vkontakte/android/AudioPlayerActivity$16;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;[ZLjava/util/ArrayList;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d0052

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 722
    return-void
.end method

.method private toggleCachedState()V
    .locals 3

    .prologue
    .line 459
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 460
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->isEnoughSpaceToCache()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    const v1, 0x7f0d01af

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 465
    .local v0, "file":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_0

    .line 466
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 467
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent()V

    .line 471
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 469
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    goto :goto_1
.end method

.method private updateCoverImage()V
    .locals 4

    .prologue
    .line 801
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    const/4 v2, 0x0

    new-instance v3, Lcom/vkontakte/android/AudioPlayerActivity$19;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerActivity$19;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 834
    return-void
.end method

.method private usePager()Z
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public displayInfo(Lcom/vkontakte/android/AudioFile;)V
    .locals 1
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 598
    new-instance v0, Lcom/vkontakte/android/AudioPlayerActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerActivity$15;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 675
    return-void
.end method

.method public enableBroadcast(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 892
    new-instance v0, Lcom/vkontakte/android/AudioPlayerActivity$22;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerActivity$22;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 896
    return-void
.end method

.method public enableControlButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 899
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 900
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 901
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 902
    return-void
.end method

.method public forceUpdateCover()V
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverOid:I

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverAid:I

    .line 679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->updateCover(Z)V

    .line 680
    return-void
.end method

.method public haveLyrics()Z
    .locals 2

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getCurrentCoverScroller()Landroid/view/View;

    move-result-object v0

    .line 879
    .local v0, "cur":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 880
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public invalidatePager()V
    .locals 3

    .prologue
    .line 591
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 592
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 595
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f08006e

    const v10, 0x7f080070

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->requestWindowFeature(I)Z

    .line 100
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v4, v7, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v7, 0x8000000

    invoke-virtual {v4, v7}, Landroid/view/Window;->addFlags(I)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    const v4, 0x7f0d01c1

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->setTitle(I)V

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v4, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v8, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v4, v7, v0, v8, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 113
    iput v5, p0, Lcom/vkontakte/android/AudioPlayerActivity;->viewPagerScrollState:I

    .line 114
    const v4, 0x7f030016

    invoke-static {p0, v4, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    .line 115
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    new-instance v7, Lcom/vkontakte/android/AudioPlayerActivity$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioPlayerActivity$2;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 122
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioPlayerActivity$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioPlayerActivity$3;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 152
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 155
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 157
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v4, v7, :cond_1

    .line 158
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 160
    :cond_1
    const v4, 0x7f080067

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioPlayerActivity$4;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioPlayerActivity$4;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v4, 0x7f080068

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioPlayerActivity$5;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioPlayerActivity$5;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v4, 0x7f080066

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioPlayerActivity$6;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioPlayerActivity$6;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v4, 0x7f08006c

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    new-instance v7, Lcom/vkontakte/android/AudioPlayerActivity$7;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioPlayerActivity$7;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 207
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v4, :cond_2

    .line 211
    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkontakte/android/AudioPlayerService;->isLoop()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 212
    const v4, 0x7f080065

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkontakte/android/AudioPlayerService;->isRandom()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 215
    :cond_2
    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioPlayerActivity$8;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioPlayerActivity$8;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v4, 0x7f080065

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioPlayerActivity$9;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioPlayerActivity$9;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v4, 0x7f08006f

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioPlayerActivity$10;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioPlayerActivity$10;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget-object v4, Lcom/vkontakte/android/AudioPlayerActivity;->playIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f020098

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/AudioPlayerActivity;->playIcon:Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f020097

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/vkontakte/android/AudioPlayerActivity;->pauseIcon:Landroid/graphics/drawable/Drawable;

    .line 254
    :cond_3
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 255
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    new-instance v4, Ljava/io/File;

    const-string v7, "/system/app/SecLauncher2.apk"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/io/File;

    const-string v7, "/system/app/SecLauncher3.apk"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_4
    move v1, v6

    .line 257
    .local v1, "isTouchWiz":Z
    :goto_0
    if-eqz v1, :cond_9

    .line 258
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v7, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v7}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 259
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v7, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v7}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 265
    :goto_1
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 266
    .local v3, "titleView":Landroid/widget/TextView;
    const v4, 0x7f08006b

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    const v4, 0x7f08006d

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 268
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v4, :cond_5

    .line 269
    const v4, 0x7f08006f

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkontakte/android/AudioPlayerService;->isBroadcast()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 271
    :cond_5
    iput v5, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverOid:I

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverAid:I

    .line 273
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v7, 0x7f080071

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 274
    .local v2, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v2, :cond_7

    .line 275
    new-instance v4, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

    invoke-direct {v4, p0, v12}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Lcom/vkontakte/android/AudioPlayerActivity$1;)V

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 276
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v4, :cond_6

    .line 277
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 278
    :cond_6
    new-instance v4, Lcom/vkontakte/android/AudioPlayerActivity$11;

    invoke-direct {v4, p0, v2}, Lcom/vkontakte/android/AudioPlayerActivity$11;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 338
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_7

    .line 339
    new-instance v4, Lcom/vkontakte/android/ui/DepthPageTransformer;

    invoke-direct {v4}, Lcom/vkontakte/android/ui/DepthPageTransformer;-><init>()V

    invoke-virtual {v2, v6, v4}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 342
    :cond_7
    return-void

    .end local v1    # "isTouchWiz":Z
    .end local v2    # "pager":Landroid/support/v4/view/ViewPager;
    .end local v3    # "titleView":Landroid/widget/TextView;
    :cond_8
    move v1, v5

    .line 256
    goto/16 :goto_0

    .line 261
    .restart local v1    # "isTouchWiz":Z
    :cond_9
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 262
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onDestroy()V

    .line 347
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->finish()V

    .line 455
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 412
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 450
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 414
    :pswitch_0
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->toggleCachedState()V

    goto :goto_0

    .line 417
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->showLyrics()V

    goto :goto_0

    .line 420
    :pswitch_2
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->addCurrent()V

    goto :goto_0

    .line 423
    :pswitch_3
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->confirmAndDelete()V

    goto :goto_0

    .line 426
    :pswitch_4
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->searchArtist()V

    goto :goto_0

    .line 429
    :pswitch_5
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 430
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 431
    iget-object v5, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v6, Lcom/vkontakte/android/AudioAttachment;

    sget-object v7, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkontakte/android/AudioAttachment;-><init>(Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/4 v5, -0x1

    iput v5, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 433
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/RepostActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "post"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    const-string v5, "msg"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioPlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 443
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v3, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-direct {v3}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;-><init>()V

    .line 444
    .local v3, "pf":Lcom/vkontakte/android/fragments/AudioPlaylistFragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 445
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 446
    const-string v5, "dialog"

    invoke-virtual {v3, v1, v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x7f0801e3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 367
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onPause()V

    .line 368
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->setVolumeControlStream(I)V

    .line 369
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->viewPagerScrollState:I

    if-eqz v0, :cond_1

    .line 371
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->setVolume(F)V

    .line 373
    :cond_1
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/AudioPlayerService;->unregisterPlayerView(Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0801e6

    const v8, 0x7f0801e5

    const v7, 0x7f0801e3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 385
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v4, :cond_4

    .line 386
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    .line 387
    .local v1, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v1, :cond_4

    .line 388
    iget v4, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v5, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v4, v5}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v1, Lcom/vkontakte/android/AudioFile;->oldOid:I

    iget v5, v1, Lcom/vkontakte/android/AudioFile;->oldAid:I

    invoke-static {v4, v5}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    move v0, v3

    .line 389
    .local v0, "cached":Z
    :goto_0
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IS CACHED = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_6

    const v4, 0x7f020094

    :goto_1
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 392
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 393
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "enableAudioCache"

    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    move v4, v3

    :goto_2
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 394
    iget v4, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_9

    .line 395
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, v1, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-eqz v4, :cond_8

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    iget v4, v1, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-eqz v4, :cond_2

    .line 397
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020091

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 398
    :cond_2
    const v4, 0x7f0801e7

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v5, v1, Lcom/vkontakte/android/AudioFile;->fromAttachment:Z

    if-nez v5, :cond_3

    move v2, v3

    :cond_3
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 404
    :goto_4
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->haveLyrics()Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 405
    const-string v2, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lyrics enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .end local v0    # "cached":Z
    .end local v1    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_4
    return v3

    .restart local v1    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_5
    move v0, v2

    .line 388
    goto/16 :goto_0

    .line 390
    .restart local v0    # "cached":Z
    :cond_6
    const v4, 0x7f020095

    goto/16 :goto_1

    :cond_7
    move v4, v2

    .line 393
    goto :goto_2

    :cond_8
    move v4, v2

    .line 395
    goto :goto_3

    .line 400
    :cond_9
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020080

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 402
    const v4, 0x7f0801e7

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onResume()V

    .line 353
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->setVolumeControlStream(I)V

    .line 354
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->finish()V

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_1
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/AudioPlayerService;->registerPlayerView(Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;)V

    goto :goto_0
.end method

.method public setBuffered(I)V
    .locals 1
    .param p1, "progr"    # I

    .prologue
    .line 934
    new-instance v0, Lcom/vkontakte/android/AudioPlayerActivity$26;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerActivity$26;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 939
    return-void
.end method

.method public setNumber(II)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 905
    new-instance v0, Lcom/vkontakte/android/AudioPlayerActivity$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/AudioPlayerActivity$23;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;II)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 911
    return-void
.end method

.method public setPlaying(Z)V
    .locals 1
    .param p1, "playing"    # Z

    .prologue
    .line 914
    new-instance v0, Lcom/vkontakte/android/AudioPlayerActivity$24;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerActivity$24;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 920
    return-void
.end method

.method public setPosition(IJ)V
    .locals 1
    .param p1, "progr"    # I
    .param p2, "ms"    # J

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->canUpdateProgress:Z

    if-nez v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 925
    new-instance v0, Lcom/vkontakte/android/AudioPlayerActivity$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkontakte/android/AudioPlayerActivity$25;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;IJ)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showLyrics()V
    .locals 4

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getCurrentCoverScroller()Landroid/view/View;

    move-result-object v0

    .line 885
    .local v0, "cur":Landroid/view/View;
    const v2, 0x7f080072

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 886
    .local v1, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    .line 887
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 888
    :cond_0
    return-void
.end method

.method public updateCover(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    .line 725
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    .line 726
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCover "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverAid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverOid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverAid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverOid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v0, v1, :cond_2

    .line 731
    :cond_1
    :goto_0
    return-void

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverAid:I

    .line 729
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerActivity;->coverOid:I

    .line 730
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerActivity;->doUpdateCover(Z)V

    goto :goto_0
.end method

.method public updateLyrics()V
    .locals 6

    .prologue
    const v4, 0x7f080072

    const/4 v3, 0x0

    .line 837
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->getCurrentCoverScroller()Landroid/view/View;

    move-result-object v0

    .line 838
    .local v0, "cur":Landroid/view/View;
    if-nez v0, :cond_1

    .line 839
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerActivity$20;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerActivity$20;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 847
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 848
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-lez v2, :cond_0

    .line 849
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/AudioCache;->getLyrics(II)Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, "l":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 851
    const v2, 0x7f080075

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 853
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 856
    :cond_2
    new-instance v2, Lcom/vkontakte/android/api/AudioGetLyrics;

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerActivity;->file:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-direct {v2, v3}, Lcom/vkontakte/android/api/AudioGetLyrics;-><init>(I)V

    new-instance v3, Lcom/vkontakte/android/AudioPlayerActivity$21;

    invoke-direct {v3, p0, v0}, Lcom/vkontakte/android/AudioPlayerActivity$21;-><init>(Lcom/vkontakte/android/AudioPlayerActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/AudioGetLyrics;->setCallback(Lcom/vkontakte/android/api/AudioGetLyrics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public updatePager()V
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 585
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 588
    :cond_0
    return-void
.end method
