.class public Lcom/vkontakte/android/VideoListView;
.super Landroid/widget/FrameLayout;
.source "VideoListView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/VideoListView$VideoAdapter;,
        Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final COMMENTS_REQ:I = 0x2bc

.field public static final TYPE_USER:I = 0x0

.field public static final TYPE_WITH_USER:I = 0x1


# instance fields
.field private adapter:Lcom/vkontakte/android/VideoListView$VideoAdapter;

.field private albums:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/VideoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private bigProgress:Landroid/widget/ProgressBar;

.field private currentAlbum:I

.field private currentRequest:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private firstLoad:Z

.field private focusable:Landroid/view/View;

.field private footerView:Landroid/widget/FrameLayout;

.field private imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private listVideos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/VideoFile;",
            ">;"
        }
    .end annotation
.end field

.field private localSearchQuery:Ljava/lang/String;

.field private moreAvailable:Z

.field private needFullReload:Z

.field private noVideosView:Landroid/widget/TextView;

.field private numLocal:I

.field private searchBar:Landroid/view/View;

.field private searchQuery:Ljava/lang/String;

.field public selectMode:Z

.field private type:I

.field private uid:I

.field private videos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/VideoFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    .line 61
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    .line 66
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->firstLoad:Z

    .line 67
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 69
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    .line 73
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    .line 74
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 75
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->needFullReload:Z

    .line 79
    iput p2, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    .line 80
    iput p3, p0, Lcom/vkontakte/android/VideoListView;->type:I

    .line 81
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    .line 61
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    .line 66
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->firstLoad:Z

    .line 67
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 69
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    .line 73
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    .line 74
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 75
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->needFullReload:Z

    .line 86
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    .line 61
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    .line 66
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->firstLoad:Z

    .line 67
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 69
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    .line 73
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    .line 74
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 75
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->needFullReload:Z

    .line 91
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/VideoListView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/VideoListView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/VideoListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/VideoListView;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/VideoListView;I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/VideoListView;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/VideoListView;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/VideoListView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/VideoListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/VideoListView$VideoAdapter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->adapter:Lcom/vkontakte/android/VideoListView$VideoAdapter;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/VideoListView;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->firstLoad:Z

    return v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/VideoListView;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/VideoListView;->firstLoad:Z

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/VideoListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->focusable:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->deleteVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->addVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/VideoListView;Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/VideoListView;->doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/VideoListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->doDeleteVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/VideoListView;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    return v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/VideoListView;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/VideoListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->localSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/VideoListView;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/VideoListView;I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    return-void
.end method

.method private addVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 3
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 509
    new-instance v0, Lcom/vkontakte/android/api/VideoAdd;

    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoAdd;-><init>(II)V

    .line 510
    new-instance v1, Lcom/vkontakte/android/VideoListView$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/VideoListView$14;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoAdd;->setCallback(Lcom/vkontakte/android/api/VideoAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 522
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 523
    return-void
.end method

.method private deleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 3
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 466
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 467
    const v1, 0x7f0901c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 468
    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 469
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 470
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/VideoListView$12;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/VideoListView$12;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 476
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 479
    return-void
.end method

.method private doDeleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 482
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 483
    new-instance v1, Lcom/vkontakte/android/VideoListView$13;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/VideoListView$13;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 495
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 496
    return-void
.end method

.method private doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 449
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 451
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v2, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    new-instance v3, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v3, p3}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v2, p3, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 453
    iget v2, p3, Lcom/vkontakte/android/api/VideoFile;->date:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 454
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 455
    iget v2, p3, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 456
    iget v2, p3, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 457
    const/4 v2, 0x2

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 458
    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 459
    iput-object p1, v0, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 460
    iput-object p2, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 461
    const-string v2, "entry"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x2bc

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 463
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    const/16 v12, 0x11

    const/4 v11, -0x1

    const/high16 v8, 0x40e00000    # 7.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 95
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    .line 96
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 97
    .local v3, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020206

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 100
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 102
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 103
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f030037

    invoke-static {v4, v5, v10}, Lcom/vkontakte/android/VideoListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/VideoListView;->searchBar:Landroid/view/View;

    .line 106
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->searchBar:Landroid/view/View;

    const v5, 0x7f06006a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 107
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->searchBar:Landroid/view/View;

    const v5, 0x7f06006a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v5, Lcom/vkontakte/android/VideoListView$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/VideoListView$1;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->searchBar:Landroid/view/View;

    const v5, 0x7f060123

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/VideoListView$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/VideoListView$2;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->searchBar:Landroid/view/View;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 133
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->searchBar:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/VideoListView;->focusable:Landroid/view/View;

    .line 136
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->focusable:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 137
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->focusable:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 138
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->focusable:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->searchBar:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView;->focusable:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->focusable:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 143
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/VideoListView;->setBackgroundColor(I)V

    .line 144
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 145
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v10, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 146
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView;->searchBar:Landroid/view/View;

    invoke-virtual {v4, v5, v10, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 147
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/VideoListView$VideoAdapter;

    invoke-direct {v5, p0, v10}, Lcom/vkontakte/android/VideoListView$VideoAdapter;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/VideoListView$VideoAdapter;)V

    iput-object v5, p0, Lcom/vkontakte/android/VideoListView;->adapter:Lcom/vkontakte/android/VideoListView$VideoAdapter;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 149
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 150
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 151
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 152
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 153
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 154
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 155
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/VideoListView;->addView(Landroid/view/View;)V

    .line 157
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v5, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;

    invoke-direct {v5, p0, v10}, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;)V

    iget-object v6, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v4, v5, v6, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 159
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    .line 160
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/VideoListView;->addView(Landroid/view/View;)V

    .line 167
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    .line 168
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    const v5, -0x888889

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    const v5, 0x7f090130

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v11, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/VideoListView;->addView(Landroid/view/View;)V

    .line 178
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 179
    return-void
.end method

.method private loadData()V
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/4 v4, 0x1

    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 234
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 235
    new-instance v0, Lcom/vkontakte/android/api/VideoSearch;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    sub-int/2addr v2, v3

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/VideoSearch;-><init>(Ljava/lang/String;II)V

    .line 236
    new-instance v1, Lcom/vkontakte/android/VideoListView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$5;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoSearch;->setCallback(Lcom/vkontakte/android/api/VideoSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 263
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 235
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-nez v0, :cond_3

    .line 267
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 268
    new-instance v0, Lcom/vkontakte/android/api/VideoGet;

    iget v1, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/vkontakte/android/api/VideoGet;-><init>(IIII)V

    .line 269
    new-instance v1, Lcom/vkontakte/android/VideoListView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$6;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGet;->setCallback(Lcom/vkontakte/android/api/VideoGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 298
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 268
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 300
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-ne v0, v4, :cond_1

    .line 301
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 302
    new-instance v0, Lcom/vkontakte/android/api/VideoGetUserVideos;

    iget v1, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v5}, Lcom/vkontakte/android/api/VideoGetUserVideos;-><init>(III)V

    .line 303
    new-instance v1, Lcom/vkontakte/android/VideoListView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$7;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetUserVideos;->setCallback(Lcom/vkontakte/android/api/VideoGetUserVideos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 302
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private localSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    .line 553
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LOCAL SEARCH "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 555
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 559
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 560
    return-void

    .line 555
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    .line 556
    .local v0, "vf":Lcom/vkontakte/android/api/VideoFile;
    iget-object v2, v0, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 557
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 427
    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 429
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/vkontakte/android/VideoListView;->doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    .line 446
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 431
    :cond_0
    new-instance v1, Lcom/vkontakte/android/api/GetUserNameAndPhoto;

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/GetUserNameAndPhoto;-><init>(I)V

    .line 432
    new-instance v2, Lcom/vkontakte/android/VideoListView$11;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/VideoListView$11;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/GetUserNameAndPhoto;->setCallback(Lcom/vkontakte/android/api/GetUserNameAndPhoto$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 443
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 444
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lcom/vkontakte/android/VideoListView$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VideoListView$8;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoListView;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method


# virtual methods
.method public doShowAlbums()V
    .locals 5

    .prologue
    .line 205
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 206
    .local v1, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090140

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 210
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 212
    new-instance v3, Lcom/vkontakte/android/VideoListView$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/VideoListView$4;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 228
    return-void

    .line 208
    :cond_0
    add-int/lit8 v3, v0, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/VideoAlbum;

    iget-object v2, v2, Lcom/vkontakte/android/api/VideoAlbum;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "actID"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 527
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "sq":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    .end local v1    # "sq":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 530
    .restart local v1    # "sq":Ljava/lang/String;
    :cond_2
    iput-object v1, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    .line 532
    iput v4, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    .line 533
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 535
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 536
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 537
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 545
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 546
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 539
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 540
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->noVideosView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 542
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 368
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 370
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 371
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "video"

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 372
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 373
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 379
    .end local v0    # "a":Landroid/app/Activity;
    :goto_0
    return-void

    .line 375
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "file"

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v6, 0x7f090072

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    iget-boolean v3, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    if-nez v3, :cond_4

    .line 384
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 385
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt p3, v3, :cond_1

    :cond_0
    move v1, v2

    .line 423
    :goto_0
    return v1

    .line 386
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v3, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    .line 387
    .local v0, "vf":Lcom/vkontakte/android/api/VideoFile;
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_3

    .line 389
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f09006c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    new-instance v2, Lcom/vkontakte/android/VideoListView$9;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/VideoListView$9;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 403
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 405
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0900e2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    new-instance v2, Lcom/vkontakte/android/VideoListView$10;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/VideoListView$10;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 419
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .end local v0    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_4
    move v1, v2

    .line 423
    goto :goto_0
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 354
    :cond_0
    return-void
.end method

.method public removeItem(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "vid"    # I

    .prologue
    .line 499
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    .line 500
    .local v0, "f":Lcom/vkontakte/android/api/VideoFile;
    iget v2, v0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    if-ne v2, p2, :cond_0

    .line 501
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 502
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    goto :goto_0
.end method

.method public showAlbums()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->doShowAlbums()V

    .line 202
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/VideoGetAlbums;

    iget v1, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/VideoGetAlbums;-><init>(I)V

    .line 186
    new-instance v1, Lcom/vkontakte/android/VideoListView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$3;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetAlbums;->setCallback(Lcom/vkontakte/android/api/VideoGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
