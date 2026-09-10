.class public Lcom/vkontakte/android/DialogsActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "DialogsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;,
        Lcom/vkontakte/android/DialogsActivity$AutocompleteImageAdapter;,
        Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;,
        Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;,
        Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/CustomTitleActivity;",
        "Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static final SEL_FRIEND_REQ:I = 0x64

.field public static dialogs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;"
        }
    .end annotation
.end field

.field static instance:Lcom/vkontakte/android/DialogsActivity;

.field static isActive:Z

.field public static lastUpdate:I

.field public static numDialogs:I

.field public static numSearchResults:I

.field public static searchResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static sharedInstance:Lcom/vkontakte/android/DialogsActivity;

.field private static final translit1:[Ljava/lang/String;

.field private static final translit2:[Ljava/lang/String;


# instance fields
.field private acImgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private acRequest:Lcom/vkontakte/android/APIRequest;

.field private autocompleteAdapter:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

.field private firstLoad:Z

.field focusable:Landroid/view/View;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field private lastSearch:Ljava/lang/String;

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field loadMoreBar:Landroid/widget/LinearLayout;

.field loading:Z

.field noMsgText:Landroid/widget/TextView;

.field private preloadOnReady:Z

.field private preloading:Z

.field progress:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field refreshing:Z

.field searchBar:Landroid/view/View;

.field searching:Z

.field private timer:Ljava/util/Timer;

.field private viCount:I

.field private viStart:I

.field views:Ljava/util/Vector;
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
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    .line 70
    sput-boolean v3, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->sharedInstance:Lcom/vkontakte/android/DialogsActivity;

    .line 80
    sput v3, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I

    sput v3, Lcom/vkontakte/android/DialogsActivity;->numSearchResults:I

    .line 85
    sput v3, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    .line 91
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0449"

    aput-object v1, v0, v3

    const-string v1, "\u0436"

    aput-object v1, v0, v4

    const-string v1, "\u0447"

    aput-object v1, v0, v5

    const-string v1, "\u0448"

    aput-object v1, v0, v6

    const-string v1, "\u044e"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u044f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 92
    const-string v2, "\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0431"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0432"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0433"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0434"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u0437"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u0439"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u043c"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u043d"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u043f"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u0440"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u0441"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u0443"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u0444"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u0445"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u0446"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 93
    const-string v2, "\u044a"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u044b"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u044c"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u044d"

    aput-object v2, v0, v1

    .line 91
    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->translit1:[Ljava/lang/String;

    .line 94
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sch"

    aput-object v1, v0, v3

    const-string v1, "zh"

    aput-object v1, v0, v4

    const-string v1, "ch"

    aput-object v1, v0, v5

    const-string v1, "sh"

    aput-object v1, v0, v6

    const-string v1, "yu"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ya"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 95
    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 96
    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "e"

    aput-object v2, v0, v1

    .line 94
    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->translit2:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->views:Ljava/util/Vector;

    .line 77
    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->firstLoad:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    .line 98
    new-instance v0, Lcom/vkontakte/android/DialogsActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/DialogsActivity$1;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/DialogsActivity;)I
    .locals 1

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->count()I

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->autocompleteAdapter:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/DialogsActivity;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/DialogsActivity;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/DialogsActivity;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->doLoadNext()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/DialogsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/DialogsActivity;I)V
    .locals 0

    .prologue
    .line 920
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity;->deleteHistory(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity;->acRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/DialogsActivity;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/vkontakte/android/DialogsActivity;->viStart:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/DialogsActivity;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/vkontakte/android/DialogsActivity;->viCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity;->acImgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->acImgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$7()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->translit1:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->translit2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/DialogsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity;->updateCompletion(Ljava/lang/String;)V

    return-void
.end method

.method private count()I
    .locals 3

    .prologue
    const/16 v2, 0x32

    const/16 v1, 0x14

    .line 770
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_2

    .line 771
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_0

    .line 772
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 781
    :goto_0
    return v0

    .line 773
    :cond_0
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 774
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 775
    :cond_1
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 777
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_3

    .line 778
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 779
    :cond_3
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 780
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 781
    :cond_4
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method private deleteHistory(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 921
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 922
    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 923
    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 924
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/DialogsActivity$15;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/DialogsActivity$15;-><init>(Lcom/vkontakte/android/DialogsActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 944
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 945
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 946
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 947
    return-void
.end method

.method private doLoadNext()V
    .locals 3

    .prologue
    .line 486
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetDialogs;

    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/MessagesGetDialogs;-><init>(II)V

    .line 487
    new-instance v1, Lcom/vkontakte/android/DialogsActivity$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DialogsActivity$10;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 506
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 508
    return-void
.end method

.method public static updateCache()V
    .locals 2

    .prologue
    .line 703
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/DialogsActivity$13;

    invoke-direct {v1}, Lcom/vkontakte/android/DialogsActivity$13;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 739
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 740
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 741
    return-void
.end method

.method private updateCompletion(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->acRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->acRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1202
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/MessagesSearchDialogs;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;-><init>(Ljava/lang/String;)V

    .line 1203
    new-instance v1, Lcom/vkontakte/android/DialogsActivity$16;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DialogsActivity$16;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesSearchDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1227
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1202
    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->acRequest:Lcom/vkontakte/android/APIRequest;

    .line 1228
    return-void
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 874
    sget v0, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    if-lez v0, :cond_0

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

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

    sget v1, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 876
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 471
    iput-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    .line 472
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_0

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    .line 474
    iput-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    .line 475
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->doLoadNext()V

    .line 482
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 483
    return-void

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->count()I

    move-result v0

    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 477
    iput-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    .line 478
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->doLoadNext()V

    goto :goto_0

    .line 480
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->doLoadNext()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 438
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 439
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 440
    const-string v2, "profile"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 441
    .local v1, "u":Lcom/vkontakte/android/UserProfile;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "peerID"

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->startActivity(Landroid/content/Intent;)V

    .line 448
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkontakte/android/DialogsActivity;->inTab:Z

    .line 190
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    sput-object p0, Lcom/vkontakte/android/DialogsActivity;->sharedInstance:Lcom/vkontakte/android/DialogsActivity;

    .line 192
    sget-boolean v8, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    if-eqz v8, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->finish()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 198
    .local v7, "root":Landroid/widget/FrameLayout;
    new-instance v8, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 199
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    .line 202
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const v9, 0x7f090077

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 204
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const/high16 v9, 0x77000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 206
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 207
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 211
    new-instance v8, Landroid/widget/ProgressBar;

    invoke-direct {v8, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    .line 212
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020206

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    .line 218
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 219
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 220
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 223
    const v8, 0x7f030037

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    .line 224
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f06006a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 225
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f06006a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$2;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/DialogsActivity$2;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 240
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f060123

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$3;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/DialogsActivity$3;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f06006a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;)V

    iput-object v9, p0, Lcom/vkontakte/android/DialogsActivity;->autocompleteAdapter:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f06006a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f06006a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$4;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/DialogsActivity$4;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 267
    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_2

    .line 268
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f06006a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    .line 272
    :cond_2
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    .line 273
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 274
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 275
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 276
    .local v6, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020206

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x41f00000    # 30.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v9, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 281
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v9, p0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 282
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 284
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 285
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 286
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 287
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 288
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 289
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 290
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 293
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/DialogsActivity;->setContentView(Landroid/view/View;)V

    .line 295
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 296
    .local v1, "btnWrite":Landroid/widget/ImageView;
    const v8, 0x7f0200cf

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 298
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 299
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 301
    new-instance v8, Lcom/vkontakte/android/DialogsActivity$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/DialogsActivity$5;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->addViewAtRight(Landroid/view/View;)V

    .line 311
    sput-object p0, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    .line 312
    const/4 v8, 0x1

    sput-boolean v8, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    .line 314
    new-instance v8, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v8}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 315
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 317
    sget-object v8, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p0}, Lcom/vkontakte/android/cache/DialogsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 318
    invoke-static {p0}, Lcom/vkontakte/android/cache/DialogsCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/DialogEntry;

    move-result-object v2

    .line 319
    .local v2, "cached":[Lcom/vkontakte/android/DialogEntry;
    invoke-static {p0}, Lcom/vkontakte/android/cache/DialogsCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v8

    sput v8, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    .line 320
    array-length v9, v2

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_4

    .line 323
    .end local v2    # "cached":[Lcom/vkontakte/android/DialogEntry;
    :cond_3
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v8, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v8, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v8, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v9, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v4, v9, v10}, Lcom/vkontakte/android/DialogsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 329
    sget-boolean v8, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    if-eqz v8, :cond_0

    .line 330
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$6;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/DialogsActivity$6;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    .line 332
    const-wide/16 v10, 0x64

    .line 330
    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    const/4 v8, 0x0

    sput-boolean v8, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    goto/16 :goto_0

    .line 320
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "cached":[Lcom/vkontakte/android/DialogEntry;
    :cond_4
    aget-object v3, v2, v8

    .local v3, "e":Lcom/vkontakte/android/DialogEntry;
    sget-object v10, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v10, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 339
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    .line 340
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 745
    const-string v1, "vk"

    const-string v2, "ime action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/DialogsActivity;->showLoading(Z)V

    .line 748
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 749
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    .line 751
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 752
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 753
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 755
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v1, :cond_1

    .line 757
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 759
    iput-boolean v3, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    .line 760
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 762
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 763
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 764
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 766
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v4
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
    .line 881
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p3, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v3, p3, v2

    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v3, v2, :cond_2

    .line 902
    :cond_0
    :goto_1
    return-void

    .line 881
    :cond_1
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto :goto_0

    .line 882
    :cond_2
    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 883
    .local v1, "u":Lcom/vkontakte/android/DialogEntry;
    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v2, :cond_5

    .line 884
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/MessageViewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "msg_id"

    iget v3, v1, Lcom/vkontakte/android/DialogEntry;->mid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 886
    const-string v2, "is_out"

    iget-boolean v3, v1, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 887
    const-string v2, "sender"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    const-string v2, "sender_name"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    iget-boolean v2, v1, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-nez v2, :cond_3

    .line 890
    const-string v2, "sender_photo"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    :cond_3
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 882
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "u":Lcom/vkontakte/android/DialogEntry;
    :cond_4
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto :goto_2

    .line 893
    .restart local v1    # "u":Lcom/vkontakte/android/DialogEntry;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 894
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "peerID"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 895
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    iget-boolean v2, v1, Lcom/vkontakte/android/DialogEntry;->isConference:Z

    if-nez v2, :cond_6

    .line 897
    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    :cond_6
    iget-object v2, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkontakte/android/UserProfile;->online:Z

    if-eqz v2, :cond_7

    .line 899
    const-string v2, "online"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 900
    :cond_7
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 906
    iget-boolean v3, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p3, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p3, v3

    sget-object v4, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    move v1, v2

    .line 917
    :goto_0
    return v1

    .line 908
    :cond_1
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    iget-object v4, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 909
    .local v0, "u":Lcom/vkontakte/android/DialogEntry;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 910
    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09015d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v2, Lcom/vkontakte/android/DialogsActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/DialogsActivity$14;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 916
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 432
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    .line 433
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 434
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    .line 462
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->refresh()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 415
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 416
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    .line 417
    iget-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->firstLoad:Z

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->firstLoad:Z

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 425
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 426
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 427
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 428
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x1

    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 377
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->timer:Ljava/util/Timer;

    .line 378
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 379
    iput p3, p0, Lcom/vkontakte/android/DialogsActivity;->viCount:I

    .line 380
    iput p2, p0, Lcom/vkontakte/android/DialogsActivity;->viStart:I

    .line 381
    add-int v0, p2, p3

    if-ne v0, p4, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 382
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/vkontakte/android/DialogsActivity;->numSearchResults:I

    :goto_1
    if-ge v1, v0, :cond_2

    .line 383
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_7

    .line 384
    iput-boolean v4, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    .line 385
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_5

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    .line 387
    iput-boolean v4, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    .line 388
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    .line 395
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 400
    :cond_2
    :goto_3
    return-void

    .line 382
    :cond_3
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto :goto_0

    :cond_4
    sget v0, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I

    goto :goto_1

    .line 389
    :cond_5
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->count()I

    move-result v0

    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 390
    iput-boolean v4, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    .line 391
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    goto :goto_2

    .line 393
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    goto :goto_2

    .line 397
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->loadNext()V

    goto :goto_3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 404
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 406
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 408
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 409
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 412
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onScrolled(F)V
    .locals 8
    .param p1, "offset"    # F

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 991
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 992
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 993
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 994
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 995
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 996
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 999
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1000
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1014
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 1003
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1004
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1005
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1006
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1007
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1008
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1009
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1010
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1011
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public processMessages(Lorg/json/JSONObject;Z)V
    .locals 18
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "search"    # Z

    .prologue
    .line 617
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    .line 619
    if-eqz p1, :cond_2

    :try_start_0
    const-string v15, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 620
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 621
    .local v12, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const-string v15, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "p"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 622
    .local v9, "p":Lorg/json/JSONArray;
    if-eqz v9, :cond_0

    .line 623
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v6, v15, :cond_3

    .line 632
    .end local v6    # "i":I
    :cond_0
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v16 .. v16}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v15, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "p2"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 635
    .local v10, "p2":Lorg/json/JSONArray;
    if-eqz v10, :cond_1

    .line 636
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v6, v15, :cond_6

    .line 644
    .end local v6    # "i":I
    :cond_1
    const-string v15, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "a"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 646
    .local v2, "a":Lorg/json/JSONArray;
    if-eqz p2, :cond_9

    .line 647
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    sput v15, Lcom/vkontakte/android/DialogsActivity;->numSearchResults:I

    .line 651
    :goto_2
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v6, v15, :cond_a

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 697
    if-nez p2, :cond_2

    invoke-static {}, Lcom/vkontakte/android/DialogsActivity;->updateCache()V

    .line 700
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v9    # "p":Lorg/json/JSONArray;
    .end local v10    # "p2":Lorg/json/JSONArray;
    .end local v12    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    :goto_4
    return-void

    .line 624
    .restart local v6    # "i":I
    .restart local v9    # "p":Lorg/json/JSONArray;
    .restart local v12    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    new-instance v13, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v13}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 625
    .local v13, "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "first_name"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 626
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "first_name"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "last_name"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 627
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    sget v15, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v17

    if-lez v15, :cond_4

    const-string v15, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 628
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "uid"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 629
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "online"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v15, 0x1

    :goto_6
    iput-boolean v15, v13, Lcom/vkontakte/android/UserProfile;->online:Z

    .line 630
    iget v15, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 627
    :cond_4
    const-string v15, "photo_rec"

    goto :goto_5

    .line 629
    :cond_5
    const/4 v15, 0x0

    goto :goto_6

    .line 637
    .end local v13    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v10    # "p2":Lorg/json/JSONArray;
    :cond_6
    new-instance v13, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v13}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 638
    .restart local v13    # "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    sget v15, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v17

    if-lez v15, :cond_8

    const-string v15, "photo_medium_rec"

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 639
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "uid"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 640
    iget v15, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    iget v15, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 638
    :cond_8
    const-string v15, "photo_rec"

    goto :goto_7

    .line 649
    .end local v6    # "i":I
    .end local v13    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v2    # "a":Lorg/json/JSONArray;
    :cond_9
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v15

    sput v15, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 699
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v9    # "p":Lorg/json/JSONArray;
    .end local v10    # "p2":Lorg/json/JSONArray;
    .end local v12    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v14

    .local v14, "x":Ljava/lang/Exception;
    const-string v15, "vk"

    invoke-static {v15, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 652
    .end local v14    # "x":Ljava/lang/Exception;
    .restart local v2    # "a":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v9    # "p":Lorg/json/JSONArray;
    .restart local v10    # "p2":Lorg/json/JSONArray;
    .restart local v12    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_a
    :try_start_1
    new-instance v5, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v5}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 653
    .local v5, "entry":Lcom/vkontakte/android/DialogEntry;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 655
    .local v8, "o":Lorg/json/JSONObject;
    const-string v15, "body"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "<br>"

    const-string v17, "<br/>"

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    .line 656
    const-string v15, "attachments"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 657
    const-string v15, "attachments"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "type"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "atype":Ljava/lang/String;
    const-string v15, "photo"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x0

    iput v15, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 659
    :cond_b
    const-string v15, "video"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v15, 0x2

    iput v15, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 660
    :cond_c
    const-string v15, "audio"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    iput v15, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 661
    :cond_d
    const-string v15, "doc"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/4 v15, 0x3

    iput v15, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 668
    .end local v3    # "atype":Ljava/lang/String;
    :cond_e
    :goto_8
    const-string v15, "uid"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 669
    const-string v15, "uid"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/UserProfile;

    iput-object v15, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 671
    :cond_f
    iget-object v15, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    if-nez v15, :cond_10

    .line 672
    new-instance v15, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v15}, Lcom/vkontakte/android/UserProfile;-><init>()V

    iput-object v15, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 673
    iget-object v15, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    const-string v16, "uid"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 676
    :cond_10
    const-string v15, "read_state"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    const-string v15, "out"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_17

    :cond_11
    const-string v15, "out"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_17

    const/4 v15, 0x0

    :goto_9
    iput-boolean v15, v5, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 677
    const-string v15, "date"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v5, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 678
    const-string v15, "out"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    const/4 v15, 0x1

    :goto_a
    iput-boolean v15, v5, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 679
    const-string v15, "mid"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    const-string v15, "mid"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v5, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 680
    :cond_12
    const-string v15, "chat_id"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string v15, "uid"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_14

    .line 681
    :cond_13
    new-instance v11, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v11}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 682
    .local v11, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v15, "title"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 683
    const v15, 0x77359400

    const-string v16, "chat_id"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    add-int v15, v15, v16

    iput v15, v11, Lcom/vkontakte/android/UserProfile;->uid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 685
    :try_start_2
    const-string v15, "chat_active"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "ca":[Ljava/lang/String;
    const-string v15, "M"

    iput-object v15, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 687
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_b
    array-length v15, v4

    const/16 v16, 0x4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v15

    if-lt v7, v15, :cond_19

    .line 691
    .end local v4    # "ca":[Ljava/lang/String;
    .end local v7    # "j":I
    :goto_c
    :try_start_3
    iput-object v11, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 692
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/vkontakte/android/DialogEntry;->isConference:Z

    .line 694
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_14
    if-eqz p2, :cond_1a

    sget-object v15, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_d
    invoke-virtual {v15, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 662
    :cond_15
    const-string v15, "geo"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 663
    const/4 v15, 0x5

    iput v15, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    goto/16 :goto_8

    .line 664
    :cond_16
    const-string v15, "fwd_messages"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 665
    const/4 v15, 0x4

    iput v15, v5, Lcom/vkontakte/android/DialogEntry;->attachmentType:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8

    .line 676
    :cond_17
    const/4 v15, 0x1

    goto/16 :goto_9

    .line 678
    :cond_18
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 688
    .restart local v4    # "ca":[Ljava/lang/String;
    .restart local v7    # "j":I
    .restart local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_19
    :try_start_4
    iget-object v15, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "|"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v15, v4, v7

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/UserProfile;

    iget-object v15, v15, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 687
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 694
    .end local v4    # "ca":[Ljava/lang/String;
    .end local v7    # "j":I
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_1a
    :try_start_5
    sget-object v15, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_d

    .line 690
    .restart local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    :catch_1
    move-exception v15

    goto :goto_c
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 511
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v0, "execute"

    invoke-direct {v1, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 512
    const-string v2, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "var a=API.messages.getDialogs({\"count\":40});var p=API.getProfiles({uids:a@.uid,fields:\""

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",online\"});"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    const-string v3, "var p2=API.getProfiles({uids:a@.chat_active,fields:\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    const-string v0, "photo_medium_rec"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"});"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    const-string v3, "return{a:a,p:p,p2:p2,c:API.getCounters()};"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 515
    new-instance v1, Lcom/vkontakte/android/DialogsActivity$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DialogsActivity$11;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 551
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 552
    return-void

    .line 512
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0

    .line 513
    :cond_1
    const-string v0, "photo_rec"

    goto :goto_1
.end method

.method public search(Ljava/lang/String;)V
    .locals 8
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 555
    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 556
    .local v1, "dstart":I
    :goto_0
    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v2, :cond_1

    const/16 v0, 0x32

    .line 558
    .local v0, "dcount":I
    :goto_1
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v3, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 559
    const-string v4, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "var a=API.messages.search({\"count\":"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",\"offset\":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",\"q\":\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\"});var p=API.getProfiles({uids:a@.uid,fields:\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2

    const-string v2, "photo_medium_rec"

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",online\"});"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 560
    const-string v5, "var p2=API.getProfiles({uids:a@.chat_active,fields:\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_3

    const-string v2, "photo_medium_rec"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\"});"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 561
    const-string v5, "return{a:a,p:p,p2:p2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    if-eqz v2, :cond_4

    const-string v2, ",c:API.getCounters()"

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "};"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 562
    new-instance v3, Lcom/vkontakte/android/DialogsActivity$12;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/DialogsActivity$12;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 612
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 613
    return-void

    .line 555
    .end local v0    # "dcount":I
    .end local v1    # "dstart":I
    :cond_0
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    goto/16 :goto_0

    .line 556
    .restart local v1    # "dstart":I
    :cond_1
    const/16 v0, 0x64

    goto/16 :goto_1

    .line 559
    .restart local v0    # "dcount":I
    :cond_2
    const-string v2, "photo_rec"

    goto :goto_2

    .line 560
    :cond_3
    const-string v2, "photo_rec"

    goto :goto_3

    .line 561
    :cond_4
    const-string v2, ""

    goto :goto_4
.end method

.method public showLoading(Z)V
    .locals 1
    .param p1, "l"    # Z

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    .line 452
    new-instance v0, Lcom/vkontakte/android/DialogsActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/DialogsActivity$9;-><init>(Lcom/vkontakte/android/DialogsActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lcom/vkontakte/android/DialogsActivity$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/DialogsActivity$7;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public updateList(ZI)V
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "start"    # I

    .prologue
    .line 351
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lt v0, v2, :cond_0

    .line 361
    .end local v0    # "i":I
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 362
    new-instance v2, Lcom/vkontakte/android/DialogsActivity$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/DialogsActivity$8;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/DialogsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 372
    return-void

    .line 353
    .restart local v0    # "i":I
    .restart local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 360
    .end local v0    # "i":I
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method
