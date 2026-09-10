.class public Lcom/vkontakte/android/AudioListActivity;
.super Lcom/vkontakte/android/CustomTitleListActivity;
.source "AudioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;
    }
.end annotation


# static fields
.field public static _lastInstance:Lcom/vkontakte/android/AudioListActivity;

.field public static fromTab:Lcom/vkontakte/android/AudioListActivity;

.field public static lastInstance:Lcom/vkontakte/android/AudioListActivity;


# instance fields
.field audios:[Lcom/vkontakte/android/AudioFile;

.field private backDownConsumed:Z

.field public currentPlaylistID:I

.field private currentPlaylistTitle:Ljava/lang/String;

.field private lastSearchQuery:Ljava/lang/String;

.field private lastUpdate:I

.field private listsIds:[I

.field private listsTitles:[Ljava/lang/String;

.field private ll:Landroid/widget/LinearLayout;

.field myAudios:[Lcom/vkontakte/android/AudioFile;

.field private ownerID:I

.field playlistBtn:Landroid/widget/ImageView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private regViewRunnable:Ljava/lang/Runnable;

.field searchBar:Landroid/view/View;

.field private searchRequest:Lcom/vkontakte/android/APIRequest;

.field searchResults:[Lcom/vkontakte/android/AudioFile;

.field private searchTimer:Ljava/util/Timer;

.field private selectMode:Z

.field private showSearch:Z

.field private slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

.field private statusBarHeight:I

.field tBtn1:Landroid/widget/Button;

.field tBtn2:Landroid/widget/Button;

.field titleButtons:Landroid/widget/LinearLayout;

.field private viewsInList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    .line 63
    sput-object v0, Lcom/vkontakte/android/AudioListActivity;->_lastInstance:Lcom/vkontakte/android/AudioListActivity;

    .line 64
    sput-object v0, Lcom/vkontakte/android/AudioListActivity;->fromTab:Lcom/vkontakte/android/AudioListActivity;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleListActivity;-><init>()V

    .line 61
    new-array v0, v4, [Lcom/vkontakte/android/AudioFile;

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    new-array v0, v4, [Lcom/vkontakte/android/AudioFile;

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    new-array v0, v4, [Lcom/vkontakte/android/AudioFile;

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    .line 68
    iput-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->showSearch:Z

    .line 70
    iput v4, p0, Lcom/vkontakte/android/AudioListActivity;->ownerID:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->searchTimer:Ljava/util/Timer;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->lastSearchQuery:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->viewsInList:Ljava/util/Vector;

    .line 75
    iput v4, p0, Lcom/vkontakte/android/AudioListActivity;->statusBarHeight:I

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/AudioListActivity;->lastUpdate:I

    .line 79
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->listsIds:[I

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->listsTitles:[Ljava/lang/String;

    .line 82
    iput-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->backDownConsumed:Z

    .line 83
    new-instance v0, Lcom/vkontakte/android/AudioListActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioListActivity$1;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->regViewRunnable:Ljava/lang/Runnable;

    .line 91
    iput-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->selectMode:Z

    .line 93
    new-instance v0, Lcom/vkontakte/android/AudioListActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioListActivity$2;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 58
    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioListActivity;)Lcom/vkontakte/android/ui/SlidingDrawer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/AudioListActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/AudioListActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioListActivity;->showSearch:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/AudioListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->lastSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/AudioListActivity;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/vkontakte/android/AudioListActivity;->lastUpdate:I

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/AudioListActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity;->searchRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/AudioListActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity;->listsTitles:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/AudioListActivity;[I)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity;->listsIds:[I

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/AudioListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/AudioListActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->viewsInList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/AudioListActivity;)[I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->listsIds:[I

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/AudioListActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->listsTitles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/AudioListActivity;[I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 789
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/AudioListActivity;->showListSelectDialog([I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/AudioListActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioListActivity;->selectMode:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/AudioListActivity;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/vkontakte/android/AudioListActivity;->ownerID:I

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/AudioListActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->regViewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private showListSelectDialog([I[Ljava/lang/String;)V
    .locals 2
    .param p1, "ids"    # [I
    .param p2, "titles"    # [Ljava/lang/String;

    .prologue
    .line 790
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 792
    new-instance v1, Lcom/vkontakte/android/AudioListActivity$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/AudioListActivity$20;-><init>(Lcom/vkontakte/android/AudioListActivity;[I[Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 798
    new-instance v1, Lcom/vkontakte/android/AudioListActivity$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioListActivity$21;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 805
    return-void
.end method


# virtual methods
.method public addCurrentFile()V
    .locals 3

    .prologue
    .line 698
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.add"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 699
    const-string v1, "aid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 700
    const-string v1, "oid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 701
    new-instance v1, Lcom/vkontakte/android/AudioListActivity$17;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioListActivity$17;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 721
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 722
    return-void
.end method

.method public addFromTop(Lcom/vkontakte/android/AudioFile;)V
    .locals 5
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const/4 v4, 0x0

    .line 316
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lcom/vkontakte/android/AudioFile;

    .line 317
    .local v0, "nf":[Lcom/vkontakte/android/AudioFile;
    aput-object p1, v0, v4

    .line 318
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    .line 320
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioListActivity;->localSearch(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public delete(Lcom/vkontakte/android/AudioFile;)V
    .locals 6
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const/4 v5, 0x0

    .line 329
    const/4 v1, -0x1

    .line 330
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 336
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [Lcom/vkontakte/android/AudioFile;

    .line 338
    .local v2, "list":[Lcom/vkontakte/android/AudioFile;
    array-length v3, v2

    if-nez v3, :cond_2

    .line 339
    iput-object v2, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    .line 340
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioListActivity;->localSearch(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 349
    :goto_2
    return-void

    .line 331
    .end local v2    # "list":[Lcom/vkontakte/android/AudioFile;
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v4, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v3, v4, :cond_1

    .line 332
    move v1, v0

    .line 333
    goto :goto_1

    .line 330
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .restart local v2    # "list":[Lcom/vkontakte/android/AudioFile;
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    invoke-static {v3, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iput-object v2, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    .line 348
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioListActivity;->localSearch(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public deleteCurrentFile()V
    .locals 3

    .prologue
    .line 725
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.delete"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 726
    const-string v1, "aid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getAid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 727
    const-string v1, "oid"

    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 728
    new-instance v1, Lcom/vkontakte/android/AudioListActivity$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioListActivity$18;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 743
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 744
    return-void
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 956
    iget v0, p0, Lcom/vkontakte/android/AudioListActivity;->lastUpdate:I

    if-lez v0, :cond_0

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/AudioListActivity;->lastUpdate:I

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 786
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method public getOwnerID()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/vkontakte/android/AudioListActivity;->ownerID:I

    return v0
.end method

.method public loadList(ILjava/lang/String;IZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "playPos"    # I
    .param p4, "sBigProgress"    # Z

    .prologue
    const/4 v6, 0x0

    .line 390
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 391
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistID:I

    if-eq v1, p1, :cond_1

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/SlidingDrawer;->setVisibility(I)V

    .line 394
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioPlayerService;->setCurrentFile(Lcom/vkontakte/android/AudioFile;)V

    .line 396
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistID:I

    .line 397
    iput-object p2, p0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistTitle:Ljava/lang/String;

    .line 398
    if-nez p2, :cond_2

    .line 399
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 400
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090097

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 404
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/vkontakte/android/AudioListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 405
    const v1, 0x7f060197

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    if-eqz p4, :cond_3

    .line 408
    const v1, 0x7f06001c

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 409
    new-array v1, v6, [Lcom/vkontakte/android/AudioFile;

    iput-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    .line 410
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioListActivity;->updateList(Z)V

    .line 414
    :cond_3
    const/4 v1, -0x2

    if-ne p1, v1, :cond_5

    .line 415
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/AudioListActivity$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioListActivity$13;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 424
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 473
    :goto_1
    return-void

    .line 402
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 429
    :cond_5
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "audio.get"

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    const-string v1, "Recommendations"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "req":Lcom/vkontakte/android/APIRequest;
    if-lez p1, :cond_6

    const-string v1, "album_id"

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 431
    :cond_6
    iget v1, p0, Lcom/vkontakte/android/AudioListActivity;->ownerID:I

    if-lez v1, :cond_8

    const-string v1, "uid"

    :goto_3
    iget v2, p0, Lcom/vkontakte/android/AudioListActivity;->ownerID:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 432
    new-instance v2, Lcom/vkontakte/android/AudioListActivity$14;

    invoke-direct {v2, p0, p3}, Lcom/vkontakte/android/AudioListActivity$14;-><init>(Lcom/vkontakte/android/AudioListActivity;I)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    .line 429
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_7
    const-string v1, ""

    goto :goto_2

    .line 431
    .restart local v0    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_8
    const-string v1, "gid"

    goto :goto_3
.end method

.method public loadPlaylists()V
    .locals 3

    .prologue
    .line 751
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.getAlbums"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 752
    const-string v1, "count"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 753
    iget v0, p0, Lcom/vkontakte/android/AudioListActivity;->ownerID:I

    if-lez v0, :cond_0

    const-string v0, "uid"

    :goto_0
    iget v2, p0, Lcom/vkontakte/android/AudioListActivity;->ownerID:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 754
    new-instance v1, Lcom/vkontakte/android/AudioListActivity$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioListActivity$19;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 782
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 783
    return-void

    .line 753
    :cond_0
    const-string v0, "gid"

    goto :goto_0
.end method

.method public localSearch(Ljava/lang/String;)V
    .locals 8
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 527
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 528
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 529
    .local v2, "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/AudioFile;>;"
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->myAudios:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 534
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Lcom/vkontakte/android/AudioFile;

    iput-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    .line 535
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_4

    .line 536
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 537
    return-void

    .line 529
    .end local v1    # "i":I
    :cond_0
    aget-object v0, v4, v3

    .line 530
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    if-nez v0, :cond_2

    .line 529
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 531
    :cond_2
    iget-object v6, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gt v6, v7, :cond_3

    iget-object v6, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-le v6, v7, :cond_1

    .line 532
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 535
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    .restart local v1    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/AudioFile;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v5, v4

    .line 911
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    :goto_0
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/AudioFile;->equals(Lcom/vkontakte/android/AudioFile;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 912
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 913
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 927
    :cond_0
    :goto_1
    return-void

    .line 910
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v5, v4

    .restart local v0    # "af":Lcom/vkontakte/android/AudioFile;
    goto :goto_0

    .line 915
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 916
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "action"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 917
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v1, v4, [Lcom/vkontakte/android/AudioFile;

    .line 918
    .local v1, "files":[Lcom/vkontakte/android/AudioFile;
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    iget-object v5, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    array-length v6, v6

    invoke-static {v4, v7, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    const-string v4, "list"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 922
    .local v2, "idx":I
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    if-lt v2, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 923
    :cond_3
    const-string v4, "position"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 924
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 925
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/AudioPlayerView;

    iget-boolean v4, v4, Lcom/vkontakte/android/AudioPlayerView;->isRegistered:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->regViewRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x102000a

    const/4 v11, -0x2

    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-static {p0}, Lcom/vkontakte/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "oid"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/AudioListActivity;->ownerID:I

    .line 108
    iget v4, p0, Lcom/vkontakte/android/AudioListActivity;->ownerID:I

    if-nez v4, :cond_7

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->inTab:Z

    .line 109
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "select"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->selectMode:Z

    .line 110
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "inTab"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "inTab"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->inTab:Z

    .line 112
    :cond_0
    iget-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->inTab:Z

    if-eqz v4, :cond_1

    .line 113
    sput-object p0, Lcom/vkontakte/android/AudioListActivity;->fromTab:Lcom/vkontakte/android/AudioListActivity;

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "username"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090097

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "username"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->setContentView(I)V

    .line 118
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 120
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v4}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 121
    iget-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->inTab:Z

    if-eqz v4, :cond_3

    .line 123
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    iget-object v4, v4, Lcom/vkontakte/android/MainActivity;->slidingPlayerView:Landroid/view/View;

    check-cast v4, Lcom/vkontakte/android/ui/SlidingDrawer;

    iput-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->inTab:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    if-nez v4, :cond_5

    .line 127
    :cond_4
    const v4, 0x7f03003c

    const/4 v7, 0x0

    invoke-static {p0, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/SlidingDrawer;

    iput-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    .line 128
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioListActivity$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioListActivity$3;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_5
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->playlistBtn:Landroid/widget/ImageView;

    .line 140
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->playlistBtn:Landroid/widget/ImageView;

    const v7, 0x7f0200c0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 143
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->playlistBtn:Landroid/widget/ImageView;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v4, v6, v6, v7, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 144
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->playlistBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->playlistBtn:Landroid/widget/ImageView;

    new-instance v7, Lcom/vkontakte/android/AudioListActivity$4;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioListActivity$4;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->playlistBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->addViewAtRight(Landroid/view/View;)V

    .line 153
    const v4, 0x7f030037

    const/4 v7, 0x0

    invoke-static {p0, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->searchBar:Landroid/view/View;

    .line 154
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    .local v2, "ll":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->searchBar:Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 158
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioListActivity$AudioListAdapter;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 164
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/AudioListActivity$5;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioListActivity$5;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    const v4, 0x7f06006a

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v7, Lcom/vkontakte/android/AudioListActivity$6;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioListActivity$6;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    const v4, 0x7f060123

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioListActivity$7;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AudioListActivity$7;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v4, 0x7f06006a

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 257
    const v4, 0x7f06001c

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020206

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->loadPlaylists()V

    .line 260
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "search_query"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 261
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "search_query"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "search":Ljava/lang/String;
    const v4, 0x7f06006a

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    new-instance v7, Lcom/vkontakte/android/AudioListActivity$8;

    invoke-direct {v7, p0, v3}, Lcom/vkontakte/android/AudioListActivity$8;-><init>(Lcom/vkontakte/android/AudioListActivity;Ljava/lang/String;)V

    .line 266
    const-wide/16 v8, 0x1f4

    .line 264
    invoke-virtual {v4, v7, v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    .end local v3    # "search":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 275
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/vkontakte/android/AudioListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09007c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09007d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090111

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    iput-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->listsTitles:[Ljava/lang/String;

    .line 280
    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v10, v4, v5

    const/4 v5, 0x2

    aput v11, v4, v5

    iput-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->listsIds:[I

    .line 282
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/SlidingDrawer;->setDrawingCacheEnabled(Z)V

    .line 284
    iget-boolean v4, p0, Lcom/vkontakte/android/AudioListActivity;->inTab:Z

    if-eqz v4, :cond_6

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_6

    .line 285
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    new-instance v5, Lcom/vkontakte/android/AudioListActivity$9;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/AudioListActivity$9;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/SlidingDrawer;->setOnDrawerCloseListener(Lcom/vkontakte/android/ui/SlidingDrawer$OnDrawerCloseListener;)V

    .line 292
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    new-instance v5, Lcom/vkontakte/android/AudioListActivity$10;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/AudioListActivity$10;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/SlidingDrawer;->setOnDrawerOpenListener(Lcom/vkontakte/android/ui/SlidingDrawer$OnDrawerOpenListener;)V

    .line 299
    iget-object v4, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    new-instance v5, Lcom/vkontakte/android/AudioListActivity$11;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/AudioListActivity$11;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/SlidingDrawer;->setOnDrawerScrollListener(Lcom/vkontakte/android/ui/SlidingDrawer$OnDrawerScrollListener;)V

    .line 313
    :cond_6
    return-void

    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "ll":Landroid/widget/LinearLayout;
    :cond_7
    move v4, v6

    .line 108
    goto/16 :goto_0

    .line 268
    .restart local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "ll":Landroid/widget/LinearLayout;
    :cond_8
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 269
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4, v10, v5}, Lcom/vkontakte/android/AudioListActivity;->loadList(ILjava/lang/String;IZ)V

    goto/16 :goto_2

    .line 271
    :cond_9
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090111

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v11, v4, v10, v5}, Lcom/vkontakte/android/AudioListActivity;->loadList(ILjava/lang/String;IZ)V

    goto/16 :goto_2

    .line 124
    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "ll":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 586
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 587
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->onDestroy()V

    .line 326
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 991
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 992
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 993
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 994
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 996
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/AudioListActivity;->search(Ljava/lang/String;I)V

    .line 998
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 567
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/SlidingDrawer;->animateClose()V

    .line 569
    iput-boolean v0, p0, Lcom/vkontakte/android/AudioListActivity;->backDownConsumed:Z

    .line 572
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/CustomTitleListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 576
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/AudioListActivity;->backDownConsumed:Z

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioListActivity;->backDownConsumed:Z

    .line 578
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/CustomTitleListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 634
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 664
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 666
    :cond_0
    :goto_0
    return v2

    .line 636
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->addCurrentFile()V

    goto :goto_0

    .line 639
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->deleteCurrentFile()V

    goto :goto_0

    .line 643
    :pswitch_2
    iget-object v3, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/SlidingDrawer;->animateClose()V

    .line 644
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 645
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "search_query"

    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v3, "oid"

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 650
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 651
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    iget v3, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v4, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 654
    invoke-static {v2}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    goto :goto_0

    .line 658
    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :pswitch_4
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent()V

    goto :goto_0

    .line 661
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->showAudioLyrics()V

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x7f0601a9
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 556
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->onPause()V

    .line 557
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    .line 558
    sput-object p0, Lcom/vkontakte/android/AudioListActivity;->_lastInstance:Lcom/vkontakte/android/AudioListActivity;

    .line 559
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioListActivity;->inTab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/SlidingDrawer;->setVisibility(I)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->unregister()V

    .line 564
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f0601ad

    const v7, 0x7f0601aa

    const v6, 0x7f0601a9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 591
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 592
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 593
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 594
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v4, 0x7f0b0001

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 596
    :cond_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 597
    const v1, 0x7f0601ae

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 598
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 599
    const v1, 0x7f0601ac

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 600
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 602
    const v1, 0x7f0601af

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 603
    const v1, 0x7f0601b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 604
    const v1, 0x7f0601b1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 606
    const v1, 0x7f0601ae

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v1, v5, :cond_2

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 607
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v1, v5, :cond_3

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getOid()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 608
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-lez v1, :cond_4

    move v1, v3

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 610
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 611
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v4, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v1, v4}, Lcom/vkontakte/android/cache/AudioCache;->isCachedByUser(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 629
    .end local v0    # "f":Lcom/vkontakte/android/AudioFile;
    :cond_1
    :goto_3
    iget-boolean v1, p0, Lcom/vkontakte/android/AudioListActivity;->inTab:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/SlidingDrawer;->isOpened()Z

    move-result v1

    if-nez v1, :cond_6

    :goto_4
    return v2

    :cond_2
    move v1, v3

    .line 606
    goto :goto_0

    :cond_3
    move v1, v2

    .line 607
    goto :goto_1

    :cond_4
    move v1, v2

    .line 608
    goto :goto_2

    .line 618
    :cond_5
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 619
    const v1, 0x7f0601ae

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 620
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 621
    const v1, 0x7f0601ac

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 622
    const v1, 0x7f0601ab

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 623
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 625
    const v1, 0x7f0601af

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 626
    const v1, 0x7f0601b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 627
    const v1, 0x7f0601b1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_6
    move v2, v3

    .line 629
    goto :goto_4
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 951
    iget v0, p0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistID:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistTitle:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vkontakte/android/AudioListActivity;->loadList(ILjava/lang/String;IZ)V

    .line 952
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 544
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->onResume()V

    .line 545
    sput-object p0, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    .line 546
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 547
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/SlidingDrawer;->setVisibility(I)V

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->register()Z

    .line 553
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->slidingPlayer:Lcom/vkontakte/android/ui/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/SlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 941
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 945
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->viewsInList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    return-void

    .line 945
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 946
    .local v0, "v":Landroid/view/View;
    check-cast v0, Lcom/vkontakte/android/HLLinearLayout;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Lcom/vkontakte/android/HLLinearLayout;->deselect()V

    goto :goto_0
.end method

.method public onScrolled(F)V
    .locals 9
    .param p1, "offset"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v4, 0x7f06001c

    .line 963
    const v2, 0x7f06001d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 964
    .local v1, "noMsgText":Landroid/widget/TextView;
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 965
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 966
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 967
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 968
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 969
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 970
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 971
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 972
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 973
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 987
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 976
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 977
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 978
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 979
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 980
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 981
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 982
    :cond_4
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 983
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 984
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reloadCurrentList(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x1

    .line 808
    iget-object v1, p0, Lcom/vkontakte/android/AudioListActivity;->audios:[Lcom/vkontakte/android/AudioFile;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 809
    iget v1, p0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistID:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioListActivity;->currentPlaylistTitle:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/vkontakte/android/AudioListActivity;->loadList(ILjava/lang/String;IZ)V

    .line 813
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public search(Ljava/lang/String;I)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "playPos"    # I

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->searchRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->searchRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->searchRequest:Lcom/vkontakte/android/APIRequest;

    .line 480
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 481
    new-array v0, v1, [Lcom/vkontakte/android/AudioFile;

    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->searchResults:[Lcom/vkontakte/android/AudioFile;

    .line 482
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->lastSearchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 486
    :cond_3
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity;->lastSearchQuery:Ljava/lang/String;

    .line 487
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 490
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.search"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 491
    const-string v1, "q"

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 492
    const-string v1, "count"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 493
    new-instance v1, Lcom/vkontakte/android/AudioListActivity$15;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/AudioListActivity$15;-><init>(Lcom/vkontakte/android/AudioListActivity;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 490
    iput-object v0, p0, Lcom/vkontakte/android/AudioListActivity;->searchRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public showAudioLyrics()V
    .locals 3

    .prologue
    .line 670
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-nez v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v0

    .line 672
    .local v0, "f":Lcom/vkontakte/android/AudioFile;
    if-eqz v0, :cond_0

    .line 673
    iget v1, v0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    if-gtz v1, :cond_2

    .line 674
    const v1, 0x7f090052

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 677
    :cond_2
    new-instance v1, Lcom/vkontakte/android/api/AudioGetLyrics;

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->lyricsID:I

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/AudioGetLyrics;-><init>(I)V

    .line 678
    new-instance v2, Lcom/vkontakte/android/AudioListActivity$16;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioListActivity$16;-><init>(Lcom/vkontakte/android/AudioListActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/AudioGetLyrics;->setCallback(Lcom/vkontakte/android/api/AudioGetLyrics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 693
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 694
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioListActivity;->updateList(Z)V

    .line 353
    return-void
.end method

.method public updateList(Z)V
    .locals 1
    .param p1, "updateSlidingPlayer"    # Z

    .prologue
    .line 356
    new-instance v0, Lcom/vkontakte/android/AudioListActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioListActivity$12;-><init>(Lcom/vkontakte/android/AudioListActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method
