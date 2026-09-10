.class public Lcom/vkontakte/android/VideoListView;
.super Landroid/widget/FrameLayout;
.source "VideoListView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/VideoListView$VideoAdapter;,
        Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;,
        Lcom/vkontakte/android/VideoListView$VideoViewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;"
    }
.end annotation


# static fields
.field public static final COMMENTS_REQ:I = 0x2bc

.field public static final TYPE_FAVE:I = 0x2

.field public static final TYPE_USER:I = 0x0

.field public static final TYPE_WITH_USER:I = 0x1


# instance fields
.field private actionsClickListener:Landroid/view/View$OnClickListener;

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

.field private callback:Lcom/vkontakte/android/VideoListView$VideoViewCallback;

.field private currentAlbum:I

.field private currentRequest:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private emptyView:Lcom/vkontakte/android/ui/EmptyView;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private firstLoad:Z

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
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/VideoListView$VideoViewCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "type"    # I
    .param p4, "groupName"    # Ljava/lang/String;
    .param p5, "groupPhoto"    # Ljava/lang/String;
    .param p6, "cb"    # Lcom/vkontakte/android/VideoListView$VideoViewCallback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->firstLoad:Z

    .line 74
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 75
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    .line 77
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    .line 78
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    .line 79
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->searchHd:Z

    .line 80
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->searchLength:I

    .line 84
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    .line 85
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 86
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->needFullReload:Z

    .line 89
    new-instance v0, Lcom/vkontakte/android/VideoListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VideoListView$1;-><init>(Lcom/vkontakte/android/VideoListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->actionsClickListener:Landroid/view/View$OnClickListener;

    .line 158
    iput p2, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    .line 159
    iput p3, p0, Lcom/vkontakte/android/VideoListView;->type:I

    .line 160
    iput-object p4, p0, Lcom/vkontakte/android/VideoListView;->groupName:Ljava/lang/String;

    .line 161
    iput-object p5, p0, Lcom/vkontakte/android/VideoListView;->groupPhoto:Ljava/lang/String;

    .line 162
    iput-object p6, p0, Lcom/vkontakte/android/VideoListView;->callback:Lcom/vkontakte/android/VideoListView$VideoViewCallback;

    .line 163
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->init()V

    .line 164
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

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->firstLoad:Z

    .line 74
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 75
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    .line 77
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    .line 78
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    .line 79
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->searchHd:Z

    .line 80
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->searchLength:I

    .line 84
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    .line 85
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 86
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->needFullReload:Z

    .line 89
    new-instance v0, Lcom/vkontakte/android/VideoListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VideoListView$1;-><init>(Lcom/vkontakte/android/VideoListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->actionsClickListener:Landroid/view/View$OnClickListener;

    .line 168
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->init()V

    .line 169
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

    .line 172
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->firstLoad:Z

    .line 74
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 75
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    .line 77
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    .line 78
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    .line 79
    iput-boolean v1, p0, Lcom/vkontakte/android/VideoListView;->searchHd:Z

    .line 80
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->searchLength:I

    .line 84
    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->albums:Ljava/util/Vector;

    .line 85
    iput v1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 86
    iput-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->needFullReload:Z

    .line 89
    new-instance v0, Lcom/vkontakte/android/VideoListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VideoListView$1;-><init>(Lcom/vkontakte/android/VideoListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->actionsClickListener:Landroid/view/View$OnClickListener;

    .line 173
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->init()V

    .line 174
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/VideoListView$VideoViewCallback;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->callback:Lcom/vkontakte/android/VideoListView$VideoViewCallback;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/VideoListView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/VideoListView;I)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->updateSizes(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/VideoListView;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->scrollToTop()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/VideoListView;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/VideoListView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->addVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/VideoListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/VideoListView$VideoAdapter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->adapter:Lcom/vkontakte/android/VideoListView$VideoAdapter;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/VideoListView;Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/VideoListView;->doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->doDeleteVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/VideoListView;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    return v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/VideoListView;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->deleteVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VideoListView;->copyLink(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/VideoListView;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/VideoListView;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/VideoListView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->actionsClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/VideoListView;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    return-object v0
.end method

.method private addVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 3
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 641
    new-instance v0, Lcom/vkontakte/android/api/VideoAdd;

    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoAdd;-><init>(II)V

    .line 642
    new-instance v1, Lcom/vkontakte/android/VideoListView$15;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/VideoListView$15;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoAdd;->setCallback(Lcom/vkontakte/android/api/VideoAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 654
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 655
    return-void
.end method

.method private copyLink(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 626
    .local v0, "cm":Landroid/text/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://vk.com/video"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 627
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801cb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 628
    return-void
.end method

.method private deleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 3
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 592
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 593
    const v1, 0x7f080170

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 594
    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 595
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 596
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/VideoListView$13;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/VideoListView$13;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 602
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 605
    return-void
.end method

.method private doDeleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 608
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 609
    new-instance v1, Lcom/vkontakte/android/VideoListView$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/VideoListView$14;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 620
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 622
    return-void
.end method

.method private doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->callback:Lcom/vkontakte/android/VideoListView$VideoViewCallback;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->callback:Lcom/vkontakte/android/VideoListView$VideoViewCallback;

    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->getReferer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, p1, p2, v1}, Lcom/vkontakte/android/VideoListView$VideoViewCallback;->openComments(Lcom/vkontakte/android/api/VideoFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_0
    return-void
.end method

.method private getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 501
    const-string v0, "search"

    .line 503
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    if-ltz v0, :cond_1

    const-string v0, "videos_user"

    goto :goto_0

    :cond_1
    const-string v0, "videos_group"

    goto :goto_0
.end method

.method private init()V
    .locals 12

    .prologue
    const v11, 0x7f060019

    const/16 v10, 0x8

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x40e00000    # 7.0f

    const/4 v4, 0x0

    .line 177
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    .line 178
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 179
    .local v2, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 183
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 184
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/VideoListView;->setBackgroundColor(I)V

    .line 187
    new-instance v3, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    .line 190
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    new-instance v5, Lcom/vkontakte/android/VideoListView$VideoAdapter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/vkontakte/android/VideoListView$VideoAdapter;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/VideoListView$VideoAdapter;)V

    iput-object v5, p0, Lcom/vkontakte/android/VideoListView;->adapter:Lcom/vkontakte/android/VideoListView$VideoAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 198
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 199
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 200
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 203
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    const v5, 0x7f0200eb

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setSelector(I)V

    .line 204
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 205
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 206
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 207
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    const/high16 v5, 0x2000000

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 211
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    .line 212
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 215
    new-instance v3, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v5, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/VideoListView$VideoImagesAdapter;)V

    iget-object v6, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-direct {v3, v5, v6, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 217
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    .line 218
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/VideoListView;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 225
    iget-object v5, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget v3, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v6, :cond_2

    const v3, 0x7f0802ce

    :goto_0
    invoke-virtual {v5, v3}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 226
    iget-object v5, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget v3, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v6, :cond_0

    iget v3, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    if-nez v3, :cond_3

    :cond_0
    iget v3, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 227
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v4, 0x7f0802cf

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 228
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    new-instance v4, Lcom/vkontakte/android/VideoListView$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/VideoListView$2;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 236
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 237
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/VideoListView;->addView(Landroid/view/View;)V

    .line 241
    iget v3, p0, Lcom/vkontakte/android/VideoListView;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03003f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/VideoListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v3, p0, Lcom/vkontakte/android/VideoListView;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 246
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/VideoListView;->addView(Landroid/view/View;)V

    .line 247
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v3, v10}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 248
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v4, Lcom/vkontakte/android/VideoListView$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/VideoListView$3;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void

    .line 225
    :cond_2
    const v3, 0x7f0802cd

    goto :goto_0

    :cond_3
    move v3, v4

    .line 226
    goto :goto_1
.end method

.method private openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 7
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    const/4 v6, 0x0

    .line 527
    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 529
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

    .line 568
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v3, p1, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 531
    iget-object v3, p1, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/vkontakte/android/VideoListView;->doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 532
    :cond_1
    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v4, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->groupName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 533
    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->groupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->groupPhoto:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/vkontakte/android/VideoListView;->doOpenComments(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 534
    :cond_2
    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    if-gez v3, :cond_3

    .line 535
    new-instance v3, Lcom/vkontakte/android/api/GroupsGetById;

    const/4 v4, 0x1

    new-array v4, v4, [I

    iget v5, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    neg-int v5, v5

    aput v5, v4, v6

    invoke-direct {v3, v4}, Lcom/vkontakte/android/api/GroupsGetById;-><init>([I)V

    .line 536
    new-instance v4, Lcom/vkontakte/android/VideoListView$11;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/VideoListView$11;-><init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/GroupsGetById;->setCallback(Lcom/vkontakte/android/api/GroupsGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 548
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 549
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 551
    :cond_3
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 552
    .local v1, "pdlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v3, Lcom/vkontakte/android/VideoListView$12;

    invoke-direct {v3, p0, v1, p1}, Lcom/vkontakte/android/VideoListView$12;-><init>(Lcom/vkontakte/android/VideoListView;Landroid/app/ProgressDialog;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-static {v0, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    goto :goto_0
.end method

.method private scrollToTop()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/VideoListView$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$10;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 477
    return-void
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/VideoListView$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$9;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method private updateSizes(I)V
    .locals 6
    .param p1, "sw"    # I

    .prologue
    .line 271
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 272
    .local v3, "vis":I
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 273
    .local v2, "ratio":F
    const/high16 v4, 0x43af0000    # 350.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v1, v4

    .line 274
    .local v1, "maxW":F
    int-to-float v4, p1

    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 276
    .local v0, "colCount":I
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 277
    div-int v4, p1, v0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/VideoListView;->itemHeight:I

    .line 278
    iget-object v4, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 279
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public globalSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 571
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget v0, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v3, :cond_2

    const v0, 0x7f0802ce

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 573
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget v0, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    if-nez v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 578
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->list:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 579
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 581
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 583
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 584
    return-void

    .line 572
    :cond_2
    const v0, 0x7f0802cd

    goto :goto_0

    :cond_3
    move v0, v1

    .line 573
    goto :goto_1

    .line 575
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 576
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0800bf

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    goto :goto_2
.end method

.method public loadData()V
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/4 v4, 0x1

    .line 307
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 310
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 311
    new-instance v0, Lcom/vkontakte/android/api/VideoSearch;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x14

    iget-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->searchHd:Z

    iget v5, p0, Lcom/vkontakte/android/VideoListView;->searchLength:I

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/VideoSearch;-><init>(Ljava/lang/String;IIZI)V

    .line 312
    new-instance v1, Lcom/vkontakte/android/VideoListView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$5;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoSearch;->setCallback(Lcom/vkontakte/android/api/VideoSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 349
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 311
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 352
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-nez v0, :cond_3

    .line 353
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 354
    new-instance v0, Lcom/vkontakte/android/api/VideoGet;

    iget v1, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/vkontakte/android/api/VideoGet;-><init>(IIII)V

    .line 355
    new-instance v1, Lcom/vkontakte/android/VideoListView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$6;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGet;->setCallback(Lcom/vkontakte/android/api/VideoGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 354
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 387
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-ne v0, v4, :cond_4

    .line 388
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 389
    new-instance v0, Lcom/vkontakte/android/api/VideoGetUserVideos;

    iget v1, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v0, v1, v2, v5}, Lcom/vkontakte/android/api/VideoGetUserVideos;-><init>(III)V

    .line 390
    new-instance v1, Lcom/vkontakte/android/VideoListView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$7;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetUserVideos;->setCallback(Lcom/vkontakte/android/api/VideoGetUserVideos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 421
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 389
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 423
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 424
    iput-boolean v4, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    .line 425
    new-instance v0, Lcom/vkontakte/android/api/FaveGetVideos;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/api/FaveGetVideos;-><init>(II)V

    .line 426
    new-instance v1, Lcom/vkontakte/android/VideoListView$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VideoListView$8;-><init>(Lcom/vkontakte/android/VideoListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetVideos;->setCallback(Lcom/vkontakte/android/api/FaveGetVideos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 456
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 425
    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public localSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView;->localSearchQuery:Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 691
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 692
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 693
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    .line 694
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->scrollToTop()V

    .line 695
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 260
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

    .line 659
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 660
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "sq":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 680
    .end local v1    # "sq":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 662
    .restart local v1    # "sq":Ljava/lang/String;
    :cond_2
    iput-object v1, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    .line 664
    iput v4, p0, Lcom/vkontakte/android/VideoListView;->numLocal:I

    .line 665
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 667
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 668
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    iget-object v3, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 669
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 677
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 678
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 671
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 672
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 673
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 674
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
    .line 508
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v2, p0, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 510
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "video"

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 512
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 513
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 524
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->searchQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 516
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "file"

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 518
    const-string v2, "referer"

    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->getReferer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 521
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/VideoListView;->openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 703
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 707
    return-void
.end method

.method public onScrollStarted()V
    .locals 4

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 487
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 489
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 490
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 492
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 497
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->dataLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/VideoListView;->moreAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 482
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
    .line 263
    new-instance v0, Lcom/vkontakte/android/VideoListView$4;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/VideoListView$4;-><init>(Lcom/vkontakte/android/VideoListView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/VideoListView;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public removeItem(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "vid"    # I

    .prologue
    .line 631
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 638
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    .line 632
    .local v0, "f":Lcom/vkontakte/android/api/VideoFile;
    iget v2, v0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    if-ne v2, p2, :cond_0

    .line 633
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 634
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    goto :goto_0
.end method

.method public setAlbum(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 282
    iput p1, p0, Lcom/vkontakte/android/VideoListView;->currentAlbum:I

    .line 283
    iput v0, p0, Lcom/vkontakte/android/VideoListView;->type:I

    .line 284
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 285
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 286
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 287
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 291
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget v2, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/vkontakte/android/VideoListView;->type:I

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 292
    return-void
.end method

.method public setType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 295
    iput p1, p0, Lcom/vkontakte/android/VideoListView;->type:I

    .line 296
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->videos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 297
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->listVideos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 298
    invoke-direct {p0}, Lcom/vkontakte/android/VideoListView;->updateList()V

    .line 299
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/vkontakte/android/VideoListView;->loadData()V

    .line 303
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget v2, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/vkontakte/android/VideoListView;->uid:I

    if-nez v2, :cond_1

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 304
    return-void
.end method
