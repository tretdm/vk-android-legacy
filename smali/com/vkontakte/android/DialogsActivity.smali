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

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    .line 71
    sput-boolean v3, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->sharedInstance:Lcom/vkontakte/android/DialogsActivity;

    .line 81
    sput v3, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I

    sput v3, Lcom/vkontakte/android/DialogsActivity;->numSearchResults:I

    .line 86
    sput v3, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    .line 92
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

    .line 93
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

    .line 94
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

    .line 92
    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->translit1:[Ljava/lang/String;

    .line 95
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

    .line 96
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

    .line 97
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

    .line 95
    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->translit2:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->views:Ljava/util/Vector;

    .line 78
    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->firstLoad:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    .line 99
    new-instance v0, Lcom/vkontakte/android/DialogsActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/DialogsActivity$1;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/DialogsActivity;)I
    .locals 1

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->count()I

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->autocompleteAdapter:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/DialogsActivity;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/DialogsActivity;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/DialogsActivity;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/DialogsActivity;)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->doLoadNext()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/DialogsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/DialogsActivity;I)V
    .locals 0

    .prologue
    .line 984
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity;->deleteHistory(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity;->acRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/DialogsActivity;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/vkontakte/android/DialogsActivity;->viStart:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/DialogsActivity;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/vkontakte/android/DialogsActivity;->viCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity;->acImgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/DialogsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->acImgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$7()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->translit1:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->translit2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/DialogsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1285
    invoke-direct {p0, p1}, Lcom/vkontakte/android/DialogsActivity;->updateCompletion(Ljava/lang/String;)V

    return-void
.end method

.method private count()I
    .locals 3

    .prologue
    const/16 v2, 0x32

    const/16 v1, 0x14

    .line 820
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_2

    .line 821
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_0

    .line 822
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 831
    :goto_0
    return v0

    .line 823
    :cond_0
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 824
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 825
    :cond_1
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 827
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_3

    .line 828
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 829
    :cond_3
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 830
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 831
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
    .line 985
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 986
    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 987
    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 988
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/DialogsActivity$16;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/DialogsActivity$16;-><init>(Lcom/vkontakte/android/DialogsActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1008
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1009
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1011
    return-void
.end method

.method private doLoadNext()V
    .locals 3

    .prologue
    .line 532
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetDialogs;

    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/MessagesGetDialogs;-><init>(II)V

    .line 533
    new-instance v1, Lcom/vkontakte/android/DialogsActivity$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DialogsActivity$11;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 552
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 554
    return-void
.end method

.method public static updateCache()V
    .locals 2

    .prologue
    .line 754
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/DialogsActivity$14;

    invoke-direct {v1}, Lcom/vkontakte/android/DialogsActivity$14;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 790
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 791
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 792
    return-void
.end method

.method private updateCompletion(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->acRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->acRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1289
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/MessagesSearchDialogs;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;-><init>(Ljava/lang/String;)V

    .line 1290
    new-instance v1, Lcom/vkontakte/android/DialogsActivity$17;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DialogsActivity$17;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesSearchDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1314
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1289
    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->acRequest:Lcom/vkontakte/android/APIRequest;

    .line 1315
    return-void
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 938
    sget v0, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    if-lez v0, :cond_0

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

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

    .line 940
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadNext()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 517
    iput-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    .line 518
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    .line 520
    iput-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    .line 521
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->doLoadNext()V

    .line 528
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 529
    return-void

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->count()I

    move-result v0

    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 523
    iput-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    .line 524
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->doLoadNext()V

    goto :goto_0

    .line 526
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
    .line 484
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 485
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 486
    const-string v2, "profile"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 487
    .local v1, "u":Lcom/vkontakte/android/UserProfile;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "peerID"

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->startActivity(Landroid/content/Intent;)V

    .line 494
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkontakte/android/DialogsActivity;->inTab:Z

    .line 211
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    sput-object p0, Lcom/vkontakte/android/DialogsActivity;->sharedInstance:Lcom/vkontakte/android/DialogsActivity;

    .line 213
    sget-boolean v8, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    if-eqz v8, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->finish()V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 219
    .local v7, "root":Landroid/widget/FrameLayout;
    new-instance v8, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 220
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 222
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    .line 223
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const v9, 0x7f090078

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 225
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const/high16 v9, 0x77000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 228
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 232
    new-instance v8, Landroid/widget/ProgressBar;

    invoke-direct {v8, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    .line 233
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020224

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 238
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    .line 239
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 240
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 241
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 244
    const v8, 0x7f03003f

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    .line 245
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f060074

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 246
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f060074

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$2;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/DialogsActivity$2;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 261
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f060124

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$3;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/DialogsActivity$3;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f060074

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;)V

    iput-object v9, p0, Lcom/vkontakte/android/DialogsActivity;->autocompleteAdapter:Lcom/vkontakte/android/DialogsActivity$AutoCompleteAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f060074

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f060074

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$4;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/DialogsActivity$4;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 288
    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_2

    .line 289
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const v9, 0x7f060074

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    .line 293
    :cond_2
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    .line 294
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 295
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

    .line 296
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 297
    .local v6, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020224

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x41f00000    # 30.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v9, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 302
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v9, p0, Lcom/vkontakte/android/DialogsActivity;->loadMoreBar:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 303
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$DialogsAdapter;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 305
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 306
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 307
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 308
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 309
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 310
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 311
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 314
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/DialogsActivity;->setContentView(Landroid/view/View;)V

    .line 316
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 317
    .local v1, "btnWrite":Landroid/widget/ImageView;
    const v8, 0x7f0200d2

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 319
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 320
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 322
    new-instance v8, Lcom/vkontakte/android/DialogsActivity$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/DialogsActivity$5;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->addViewAtRight(Landroid/view/View;)V

    .line 334
    sput-object p0, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    .line 335
    const/4 v8, 0x1

    sput-boolean v8, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    .line 337
    new-instance v8, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v8}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 338
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$DialogsImageLoaderAdapter;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 340
    sget-object v8, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p0}, Lcom/vkontakte/android/cache/DialogsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 341
    invoke-static {p0}, Lcom/vkontakte/android/cache/DialogsCache;->get(Landroid/content/Context;)[Lcom/vkontakte/android/DialogEntry;

    move-result-object v2

    .line 342
    .local v2, "cached":[Lcom/vkontakte/android/DialogEntry;
    invoke-static {p0}, Lcom/vkontakte/android/cache/DialogsCache;->getUpdateTime(Landroid/content/Context;)I

    move-result v8

    sput v8, Lcom/vkontakte/android/DialogsActivity;->lastUpdate:I

    .line 343
    array-length v9, v2

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_4

    .line 346
    .end local v2    # "cached":[Lcom/vkontakte/android/DialogEntry;
    :cond_3
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v8, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v8, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v8, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v8, "com.vkontakte.android.CHAT_TITLE_CHANGED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v9, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v4, v9, v10}, Lcom/vkontakte/android/DialogsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 353
    sget-boolean v8, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    if-eqz v8, :cond_0

    .line 354
    iget-object v8, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v9, Lcom/vkontakte/android/DialogsActivity$6;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/DialogsActivity$6;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    .line 356
    const-wide/16 v10, 0x64

    .line 354
    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    const/4 v8, 0x0

    sput-boolean v8, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    goto/16 :goto_0

    .line 343
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
    .line 362
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 363
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 796
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

    .line 797
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/DialogsActivity;->showLoading(Z)V

    .line 798
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 799
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    .line 801
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 802
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 803
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 805
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

    .line 807
    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 809
    iput-boolean v3, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    .line 810
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 812
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/DialogsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 813
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 814
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 816
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
    .line 945
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

    .line 966
    :cond_0
    :goto_1
    return-void

    .line 945
    :cond_1
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto :goto_0

    .line 946
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

    .line 947
    .local v1, "u":Lcom/vkontakte/android/DialogEntry;
    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v2, :cond_5

    .line 948
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/MessageViewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 949
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "msg_id"

    iget v3, v1, Lcom/vkontakte/android/DialogEntry;->mid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 950
    const-string v2, "is_out"

    iget-boolean v3, v1, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 951
    const-string v2, "sender"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 952
    const-string v2, "sender_name"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    iget-boolean v2, v1, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    if-nez v2, :cond_3

    .line 954
    const-string v2, "sender_photo"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    :cond_3
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 946
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "u":Lcom/vkontakte/android/DialogEntry;
    :cond_4
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto :goto_2

    .line 957
    .restart local v1    # "u":Lcom/vkontakte/android/DialogEntry;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 958
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "peerID"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 959
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    iget-boolean v2, v1, Lcom/vkontakte/android/DialogEntry;->isConference:Z

    if-nez v2, :cond_6

    .line 961
    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    :cond_6
    const-string v2, "online"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->online:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
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

    .line 970
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

    .line 981
    :goto_0
    return v1

    .line 972
    :cond_1
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    iget-object v4, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 973
    .local v0, "u":Lcom/vkontakte/android/DialogEntry;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 974
    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09015e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v2, Lcom/vkontakte/android/DialogsActivity$15;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/DialogsActivity$15;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 980
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 477
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 478
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    .line 479
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 480
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    .line 508
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->refresh()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 447
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 448
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    if-nez v3, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    .line 450
    iget-boolean v3, p0, Lcom/vkontakte/android/DialogsActivity;->firstLoad:Z

    if-eqz v3, :cond_2

    .line 451
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 452
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vkontakte/android/DialogsActivity;->firstLoad:Z

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 458
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 459
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/DialogsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 460
    .local v1, "nm":Landroid/app/NotificationManager;
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 469
    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v4, Lcom/vkontakte/android/DialogsActivity$9;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/DialogsActivity$9;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    .line 472
    const-wide/16 v5, 0xa

    .line 470
    invoke-virtual {v3, v4, v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 463
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 464
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/vkontakte/android/ui/DialogEntryView;

    if-eqz v3, :cond_4

    .line 465
    check-cast v2, Lcom/vkontakte/android/ui/DialogEntryView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Lcom/vkontakte/android/ui/DialogEntryView;->deselect()V

    .line 462
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x1

    .line 402
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 403
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->timer:Ljava/util/Timer;

    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/DialogsActivity;Lcom/vkontakte/android/DialogsActivity$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 405
    iput p3, p0, Lcom/vkontakte/android/DialogsActivity;->viCount:I

    .line 406
    iput p2, p0, Lcom/vkontakte/android/DialogsActivity;->viStart:I

    .line 407
    add-int v0, p2, p3

    if-ne v0, p4, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 408
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

    .line 409
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v0, :cond_7

    .line 410
    iput-boolean v4, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    .line 411
    iget-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v0, :cond_5

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    .line 413
    iput-boolean v4, p0, Lcom/vkontakte/android/DialogsActivity;->preloadOnReady:Z

    .line 414
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    .line 421
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 426
    :cond_2
    :goto_3
    return-void

    .line 408
    :cond_3
    sget-object v0, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    goto :goto_0

    :cond_4
    sget v0, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I

    goto :goto_1

    .line 415
    :cond_5
    invoke-direct {p0}, Lcom/vkontakte/android/DialogsActivity;->count()I

    move-result v0

    sget-object v1, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 416
    iput-boolean v4, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    .line 417
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    goto :goto_2

    .line 419
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/DialogsActivity;->lastSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->search(Ljava/lang/String;)V

    goto :goto_2

    .line 423
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/DialogsActivity;->loadNext()V

    goto :goto_3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 430
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 431
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 432
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 433
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/DialogsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 434
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 435
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->focusable:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 437
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 444
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 438
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/vkontakte/android/ui/DialogEntryView;

    if-eqz v3, :cond_3

    .line 440
    check-cast v2, Lcom/vkontakte/android/ui/DialogEntryView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Lcom/vkontakte/android/ui/DialogEntryView;->deselect()V

    .line 437
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

    .line 1059
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 1060
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1061
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1062
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1063
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1064
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1066
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1067
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1082
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 1071
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1072
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1073
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1074
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1075
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1076
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1077
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1078
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1079
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public processMessages(Lorg/json/JSONObject;Z)V
    .locals 20
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "search"    # Z

    .prologue
    .line 664
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    .line 666
    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/DialogsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "userphoto"

    const-string v19, ""

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 667
    .local v9, "myPhoto":Ljava/lang/String;
    if-eqz p1, :cond_2

    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 668
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 669
    .local v14, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "p"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 670
    .local v11, "p":Lorg/json/JSONArray;
    if-eqz v11, :cond_0

    .line 671
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_3

    .line 680
    .end local v7    # "i":I
    :cond_0
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "p2"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 683
    .local v12, "p2":Lorg/json/JSONArray;
    if-eqz v12, :cond_1

    .line 684
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_5

    .line 692
    .end local v7    # "i":I
    :cond_1
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "a"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 694
    .local v3, "a":Lorg/json/JSONArray;
    if-eqz p2, :cond_8

    .line 695
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    sput v17, Lcom/vkontakte/android/DialogsActivity;->numSearchResults:I

    .line 699
    :goto_2
    const/4 v7, 0x1

    .restart local v7    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_9

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 748
    if-nez p2, :cond_2

    invoke-static {}, Lcom/vkontakte/android/DialogsActivity;->updateCache()V

    .line 751
    .end local v3    # "a":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v9    # "myPhoto":Ljava/lang/String;
    .end local v11    # "p":Lorg/json/JSONArray;
    .end local v12    # "p2":Lorg/json/JSONArray;
    .end local v14    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    :goto_4
    return-void

    .line 672
    .restart local v7    # "i":I
    .restart local v9    # "myPhoto":Ljava/lang/String;
    .restart local v11    # "p":Lorg/json/JSONArray;
    .restart local v14    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    new-instance v15, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v15}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 673
    .local v15, "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "first_name"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 674
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "first_name"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "last_name"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 675
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v19

    if-lez v17, :cond_4

    const-string v17, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 676
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "uid"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 677
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/vkontakte/android/UserProfile;->online:I

    .line 678
    iget v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 675
    :cond_4
    const-string v17, "photo_rec"

    goto :goto_5

    .line 685
    .end local v15    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v12    # "p2":Lorg/json/JSONArray;
    :cond_5
    new-instance v15, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v15}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 686
    .restart local v15    # "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v19

    if-lez v17, :cond_7

    const-string v17, "photo_medium_rec"

    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 687
    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "uid"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 688
    iget v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    iget v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 686
    :cond_7
    const-string v17, "photo_rec"

    goto :goto_6

    .line 697
    .end local v7    # "i":I
    .end local v15    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v3    # "a":Lorg/json/JSONArray;
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    sput v17, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 750
    .end local v3    # "a":Lorg/json/JSONArray;
    .end local v9    # "myPhoto":Ljava/lang/String;
    .end local v11    # "p":Lorg/json/JSONArray;
    .end local v12    # "p2":Lorg/json/JSONArray;
    .end local v14    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v16

    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 700
    .end local v16    # "x":Ljava/lang/Exception;
    .restart local v3    # "a":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v9    # "myPhoto":Ljava/lang/String;
    .restart local v11    # "p":Lorg/json/JSONArray;
    .restart local v12    # "p2":Lorg/json/JSONArray;
    .restart local v14    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_9
    :try_start_1
    new-instance v6, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v6}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 701
    .local v6, "entry":Lcom/vkontakte/android/DialogEntry;
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 703
    .local v10, "o":Lorg/json/JSONObject;
    const-string v17, "attachments"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 704
    const-string v17, "attachments"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "type"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, "atype":Ljava/lang/String;
    const-string v17, "photo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v6, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 706
    :cond_a
    const-string v17, "video"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v6, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 707
    :cond_b
    const-string v17, "audio"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 708
    :cond_c
    const-string v17, "doc"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x3

    move/from16 v0, v17

    iput v0, v6, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 715
    .end local v4    # "atype":Ljava/lang/String;
    :cond_d
    :goto_7
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 716
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 718
    :cond_e
    iget-object v0, v6, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    .line 719
    new-instance v17, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 720
    iget-object v0, v6, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 723
    :cond_f
    const-string v17, "read_state"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 724
    const-string v17, "date"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 725
    const-string v17, "out"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    const/16 v17, 0x1

    :goto_9
    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 726
    iget-boolean v0, v6, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    iget-object v0, v6, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    const v18, 0x77359400

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    :cond_10
    iput-object v9, v6, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    .line 727
    :cond_11
    const-string v17, "mid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    const-string v17, "mid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 728
    :cond_12
    const-string v17, "chat_id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_14

    .line 729
    :cond_13
    new-instance v13, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v13}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 730
    .local v13, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 731
    const v17, 0x77359400

    const-string v18, "chat_id"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v13, Lcom/vkontakte/android/UserProfile;->uid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 733
    :try_start_2
    const-string v17, "chat_active"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 734
    .local v5, "ca":Lorg/json/JSONArray;
    const-string v17, "M"

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 735
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    const/16 v18, 0x4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_19

    .line 739
    .end local v5    # "ca":Lorg/json/JSONArray;
    .end local v8    # "j":I
    :goto_b
    :try_start_3
    iput-object v13, v6, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 740
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/vkontakte/android/DialogEntry;->isConference:Z

    .line 741
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 742
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/vkontakte/android/DialogEntry;->lastMsgPhoto:Ljava/lang/String;

    .line 744
    .end local v13    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_14
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "<br>"

    const-string v19, "<br/>"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/DialogEntry;->setLastMessage(Ljava/lang/String;)V

    .line 745
    if-eqz p2, :cond_1a

    sget-object v17, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    :goto_c
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 709
    :cond_15
    const-string v17, "geo"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 710
    const/16 v17, 0x5

    move/from16 v0, v17

    iput v0, v6, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    goto/16 :goto_7

    .line 711
    :cond_16
    const-string v17, "fwd_messages"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 712
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v6, Lcom/vkontakte/android/DialogEntry;->attachmentType:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_7

    .line 723
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 725
    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 736
    .restart local v5    # "ca":Lorg/json/JSONArray;
    .restart local v8    # "j":I
    .restart local v13    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_19
    :try_start_4
    iget-object v0, v13, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "|"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 735
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    .line 745
    .end local v5    # "ca":Lorg/json/JSONArray;
    .end local v8    # "j":I
    .end local v13    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_1a
    :try_start_5
    sget-object v17, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_c

    .line 738
    .restart local v13    # "profile":Lcom/vkontakte/android/UserProfile;
    :catch_1
    move-exception v17

    goto/16 :goto_b
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 557
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v0, "execute"

    invoke-direct {v1, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 558
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

    .line 559
    const-string v3, "var act=[]; var i=0; var _act=a@.chat_active; while(i<_act.length){if(_act[i].length+\"\"!=\"\"){act=act+_act[i];} i=i+1;}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 560
    const-string v3, "var p2=API.getProfiles({uids:act,fields:\""

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

    .line 561
    const-string v3, "return{p2:p2,a:a,p:p,c:API.getCounters()};"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-virtual {v1, v2, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 562
    new-instance v1, Lcom/vkontakte/android/DialogsActivity$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/DialogsActivity$12;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 598
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 599
    return-void

    .line 558
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0

    .line 560
    :cond_1
    const-string v0, "photo_rec"

    goto :goto_1
.end method

.method public search(Ljava/lang/String;)V
    .locals 8
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 602
    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->refreshing:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 603
    .local v1, "dstart":I
    :goto_0
    iget-boolean v2, p0, Lcom/vkontakte/android/DialogsActivity;->preloading:Z

    if-eqz v2, :cond_1

    const/16 v0, 0x32

    .line 605
    .local v0, "dcount":I
    :goto_1
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v3, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 606
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

    .line 607
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

    .line 608
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

    .line 606
    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 609
    new-instance v3, Lcom/vkontakte/android/DialogsActivity$13;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/DialogsActivity$13;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 659
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 660
    return-void

    .line 602
    .end local v0    # "dcount":I
    .end local v1    # "dstart":I
    :cond_0
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    goto/16 :goto_0

    .line 603
    .restart local v1    # "dstart":I
    :cond_1
    const/16 v0, 0x64

    goto/16 :goto_1

    .line 606
    .restart local v0    # "dcount":I
    :cond_2
    const-string v2, "photo_rec"

    goto :goto_2

    .line 607
    :cond_3
    const-string v2, "photo_rec"

    goto :goto_3

    .line 608
    :cond_4
    const-string v2, ""

    goto :goto_4
.end method

.method public showLoading(Z)V
    .locals 1
    .param p1, "l"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/vkontakte/android/DialogsActivity;->loading:Z

    .line 498
    new-instance v0, Lcom/vkontakte/android/DialogsActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/DialogsActivity$10;-><init>(Lcom/vkontakte/android/DialogsActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/vkontakte/android/DialogsActivity$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/DialogsActivity$7;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DialogsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method public updateList(ZI)V
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "start"    # I

    .prologue
    .line 377
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
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

    .line 387
    .end local v0    # "i":I
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/DialogsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 388
    new-instance v2, Lcom/vkontakte/android/DialogsActivity$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/DialogsActivity$8;-><init>(Lcom/vkontakte/android/DialogsActivity;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/DialogsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    return-void

    .line 379
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

    .line 380
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/DialogEntry;

    iget-object v2, v2, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 386
    .end local v0    # "i":I
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method
