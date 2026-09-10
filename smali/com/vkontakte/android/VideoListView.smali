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

.field public static final TYPE_FAVE:I = 0x2

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

.field private emptyView:Landroid/widget/TextView;

.field private firstLoad:Z

.field private focusable:Landroid/view/View;

.field private footerView:Landroid/widget/FrameLayout;

.field private groupName:Ljava/lang/String;

.field private groupPhoto:Ljava/lang/String;

.field private imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private itemHeight:I

.field private list:Landroid/widget/GridView;

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

.field private listWrap:Landroid/widget/FrameLayout;

.field private localSearchQuery:Ljava/lang/String;

.field private moreAvailable:Z

.field private needFullReload:Z

.field private numLocal:I

.field public searchHd:Z

.field public searchLength:I

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
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "type"    # I
    .param p4, "groupName"    # Ljava/lang/String;
    .param p5, "groupPhoto"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    .line 62
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

    .line 72
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->searchHd:Z

    .line 74
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->searchLength:I

    .line 78
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    .line 79
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 80
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->needFullReload:Z

    .line 84
    iput p2, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    .line 85
    iput p3, p0, Lcom/vkontakte/android/VideoListView;->type:I

    .line 86
    iput-object p4, p0, Lcom/vkontakte/android/VideoListView;->groupName:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/vkontakte/android/VideoListView;->groupPhoto:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->init()V

    .line 89
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

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    .line 62
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

    .line 72
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->searchHd:Z

    .line 74
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->searchLength:I

    .line 78
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    .line 79
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 80
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->needFullReload:Z

    .line 93
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->init()V

    .line 94
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

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    .line 62
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

    .line 72
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    .line 73
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->searchHd:Z

    .line 74
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->searchLength:I

    .line 78
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    .line 79
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 80
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->needFullReload:Z

    .line 98
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->init()V

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/VideoListView;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/VideoListView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/VideoListView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/VideoListView;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/VideoListView;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/VideoListView;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/VideoListView$VideoAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->adapter:Lcom/vkontakte/android/VideoListView$VideoAdapter;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->deleteVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->addVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/VideoListView;Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/VideoListView;->doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->doDeleteVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/VideoListView;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    return v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/VideoListView;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/VideoListView;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/VideoListView;I)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->updateSizes(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/VideoListView;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/VideoListView;I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    return-void
.end method

.method private addVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 3
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 583
    new-instance v0, Lcom/vkontakte/android/api/VideoAdd;

    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoAdd;-><init>(II)V

    .line 584
    new-instance v1, Lcom/vkontakte/android/VideoListView$15;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/VideoListView$15;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoAdd;->setCallback(Lcom/vkontakte/android/api/VideoAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 596
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 597
    return-void
.end method

.method private deleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 3
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 540
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 541
    const v1, 0x7f060157

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 542
    const v1, 0x7f060156

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 543
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 544
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/VideoListView$13;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/VideoListView$13;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 550
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 553
    return-void
.end method

.method private doDeleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 556
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 557
    new-instance v1, Lcom/vkontakte/android/VideoListView$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/VideoListView$14;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 568
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 569
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 570
    return-void
.end method

.method private doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 521
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 522
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v2, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v3, p3}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v2, p3, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 524
    iget v2, p3, Lcom/vkontakte/android/api/VideoFile;->date:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 525
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 526
    iget v2, p3, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 527
    iget v2, p3, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 528
    const/4 v2, 0x2

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 529
    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 530
    iput-object p1, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 531
    iput-object p2, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 532
    iget v2, p3, Lcom/vkontakte/android/api/VideoFile;->likes:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 533
    const/16 v2, 0x8

    iget-boolean v3, p3, Lcom/vkontakte/android/api/VideoFile;->liked:Z

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 534
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 535
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "entry"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 536
    const-string v3, "PostViewFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 537
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const/16 v11, 0x11

    const v10, -0xe5e5e6

    const/4 v9, 0x0

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v8, 0x40800000    # 4.0f

    .line 102
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    .line 103
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 106
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 109
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/VideoListView;->setBackgroundColor(I)V

    .line 112
    new-instance v3, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    .line 115
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    new-instance v4, Lcom/vkontakte/android/VideoListView$VideoAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/VideoListView$VideoAdapter;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/VideoListView$VideoAdapter;)V

    iput-object v4, p0, Lcom/vkontakte/android/VideoListView;->adapter:Lcom/vkontakte/android/VideoListView$VideoAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 123
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, v10}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 124
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, v10}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 125
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, v9}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 126
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 128
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 129
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    const v4, 0x7f020202

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setSelector(I)V

    .line 130
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 131
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v3, v4, v9, v5, v9}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 132
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 136
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    .line 137
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 140
    new-instance v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v4, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;)V

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-direct {v3, v4, v5, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 142
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    .line 143
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020220

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 146
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/VideoListView;->addView(Landroid/view/View;)V

    .line 150
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Landroid/widget/TextView;

    .line 151
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070078

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 152
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Landroid/widget/TextView;

    const v4, 0x7f0600fb

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Landroid/widget/TextView;

    const v4, -0x7f000001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 156
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 157
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 159
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/VideoListView;->addView(Landroid/view/View;)V

    .line 161
    iget v3, p0, Lcom/vkontakte/android/VideoListView;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 164
    :cond_0
    return-void
.end method

.method private openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 7
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    const/4 v6, 0x0

    .line 473
    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 475
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "username"

    const-string v4, "DELETED"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userphoto"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p1}, Lcom/vkontakte/android/VideoListView;->doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    .line 510
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v3, p1, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 477
    iget-object v3, p1, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/vkontakte/android/VideoListView;->doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 478
    :cond_1
    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v4, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->groupName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 479
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->groupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->groupPhoto:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/vkontakte/android/VideoListView;->doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 480
    :cond_2
    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    if-gez v3, :cond_3

    .line 481
    new-instance v3, Lcom/vkontakte/android/api/GroupsGetById;

    const/4 v4, 0x1

    new-array v4, v4, [I

    iget v5, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    neg-int v5, v5

    aput v5, v4, v6

    invoke-direct {v3, v4}, Lcom/vkontakte/android/api/GroupsGetById;-><init>([I)V

    .line 482
    new-instance v4, Lcom/vkontakte/android/VideoListView$11;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/VideoListView$11;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/GroupsGetById;->setCallback(Lcom/vkontakte/android/api/GroupsGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 494
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 495
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 497
    :cond_3
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 498
    .local v1, "pdlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v3, Lcom/vkontakte/android/VideoListView$12;

    invoke-direct {v3, p0, v1, p1}, Lcom/vkontakte/android/VideoListView$12;-><init>(Lcom/vkontakte/android/VideoListView;Landroid/app/ProgressDialog;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-static {v0, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 386
    new-instance v0, Lcom/vkontakte/android/VideoListView$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VideoListView$8;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoListView;->post(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method

.method private updateSizes(I)V
    .locals 5
    .param p1, "sw"    # I

    .prologue
    .line 179
    const/high16 v2, 0x40000000    # 2.0f

    .line 180
    .local v2, "ratio":F
    const/high16 v3, 0x43af0000    # 350.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v1, v3

    .line 181
    .local v1, "maxW":F
    int-to-float v3, p1

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 183
    .local v0, "colCount":I
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 184
    div-int v3, p1, v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    .line 185
    return-void
.end method


# virtual methods
.method public doShowAlbums()V
    .locals 5

    .prologue
    .line 211
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 212
    .local v1, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060109

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 216
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    const v3, 0x7f06006d

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 218
    new-instance v3, Lcom/vkontakte/android/VideoListView$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/VideoListView$3;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 234
    return-void

    .line 214
    :cond_0
    add-int/lit8 v3, v0, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/VideoAlbum;

    iget-object v2, v2, Lcom/vkontakte/android/api/VideoAlbum;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public globalSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 517
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 518
    return-void
.end method

.method public invalidateList()V
    .locals 3

    .prologue
    .line 642
    new-instance v0, Lcom/vkontakte/android/VideoListView$16;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VideoListView$16;-><init>(Lcom/vkontakte/android/VideoListView;)V

    .line 644
    const-wide/16 v1, 0xa

    .line 642
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/VideoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 645
    return-void
.end method

.method public loadData()V
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/4 v4, 0x1

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 263
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 264
    new-instance v0, Lcom/vkontakte/android/api/VideoSearch;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->searchHd:Z

    iget v5, p0, Lcom/vkontakte/android/VideoListView;->searchLength:I

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/VideoSearch;-><init>(Ljava/lang/String;IIZI)V

    .line 265
    new-instance v1, Lcom/vkontakte/android/VideoListView$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$4;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoSearch;->setCallback(Lcom/vkontakte/android/api/VideoSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 264
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 383
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-nez v0, :cond_3

    .line 299
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 300
    new-instance v0, Lcom/vkontakte/android/api/VideoGet;

    iget v1, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/vkontakte/android/api/VideoGet;-><init>(IIII)V

    .line 301
    new-instance v1, Lcom/vkontakte/android/VideoListView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$5;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGet;->setCallback(Lcom/vkontakte/android/api/VideoGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 300
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 326
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-ne v0, v4, :cond_4

    .line 327
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 328
    new-instance v0, Lcom/vkontakte/android/api/VideoGetUserVideos;

    iget v1, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v5}, Lcom/vkontakte/android/api/VideoGetUserVideos;-><init>(III)V

    .line 329
    new-instance v1, Lcom/vkontakte/android/VideoListView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$6;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetUserVideos;->setCallback(Lcom/vkontakte/android/api/VideoGetUserVideos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 328
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 355
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 356
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 357
    new-instance v0, Lcom/vkontakte/android/api/FaveGetVideos;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/api/FaveGetVideos;-><init>(II)V

    .line 358
    new-instance v1, Lcom/vkontakte/android/VideoListView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$7;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetVideos;->setCallback(Lcom/vkontakte/android/api/FaveGetVideos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 357
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public localSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 633
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 634
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 635
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 168
    :cond_0
    return-void
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

    .line 601
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 602
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "sq":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    .end local v1    # "sq":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 604
    .restart local v1    # "sq":Ljava/lang/String;
    :cond_2
    iput-object v1, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    .line 606
    iput v4, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    .line 607
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 609
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 610
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 611
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 619
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 620
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 613
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 614
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 616
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 409
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 411
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "video"

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 413
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 414
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 424
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 417
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "file"

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 421
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/VideoListView;->openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V

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
    const v6, 0x7f060067

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 428
    iget v3, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-ne v3, v5, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v1

    .line 429
    :cond_1
    iget-boolean v3, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    if-nez v3, :cond_0

    .line 431
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 432
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v3, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    .line 433
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

    .line 435
    :cond_2
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f060062

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    new-instance v1, Lcom/vkontakte/android/VideoListView$9;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/VideoListView$9;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    move v1, v2

    .line 467
    goto :goto_0

    .line 451
    :cond_3
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0600c2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    new-instance v1, Lcom/vkontakte/android/VideoListView$10;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/VideoListView$10;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 649
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 653
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 395
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/vkontakte/android/VideoListView$1;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/VideoListView$1;-><init>(Lcom/vkontakte/android/VideoListView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoListView;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public removeItem(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "vid"    # I

    .prologue
    .line 573
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 580
    :goto_0
    return-void

    .line 573
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    .line 574
    .local v0, "f":Lcom/vkontakte/android/api/VideoFile;
    iget v2, v0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    if-ne v2, p2, :cond_0

    .line 575
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 576
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    goto :goto_0
.end method

.method public setAlbum(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 237
    iput p1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 238
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->type:I

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 241
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 246
    return-void
.end method

.method public setType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 249
    iput p1, p0, Lcom/vkontakte/android/VideoListView;->type:I

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 252
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 257
    return-void
.end method

.method public showAlbums()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->doShowAlbums()V

    .line 208
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/VideoGetAlbums;

    iget v1, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/VideoGetAlbums;-><init>(I)V

    .line 192
    new-instance v1, Lcom/vkontakte/android/VideoListView$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$2;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetAlbums;->setCallback(Lcom/vkontakte/android/api/VideoGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
