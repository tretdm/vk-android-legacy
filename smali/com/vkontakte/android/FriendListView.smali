.class public Lcom/vkontakte/android/FriendListView;
.super Landroid/widget/FrameLayout;
.source "FriendListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/FriendListView$FriendListAdapter;,
        Lcom/vkontakte/android/FriendListView$OnSelectListener;,
        Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;,
        Lcom/vkontakte/android/FriendListView$SearchUserPhotosAdapter;
    }
.end annotation


# static fields
.field public static final HL_FIRSTNAME:I = 0x1

.field public static final HL_LASTNAME:I = 0x2

.field public static final HL_NONE:I

.field private static final translit1:[Ljava/lang/String;

.field private static final translit2:[Ljava/lang/String;


# instance fields
.field private bigProgress:Landroid/widget/ProgressBar;

.field private boldSpan:Landroid/text/style/StyleSpan;

.field private currentQuery:Ljava/lang/String;

.field private currentSearchRequest:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private displayableList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private firstHints:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private firstLoad:Z

.field private footerView:Landroid/widget/FrameLayout;

.field private friends:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private globalSearchEnabled:Z

.field private globalSearchResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private highlightMode:I

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field private lastUpdate:I

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private moreAvailable:Z

.field private multiSelect:Z

.field private noResultsView:Landroid/widget/TextView;

.field private preloadOnReady:Z

.field private preloadedSearchResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private preloading:Z

.field private searchBar:Landroid/view/View;

.field public searchChats:Z

.field private searchEdit:Landroid/widget/EditText;

.field private searchIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;>;"
        }
    .end annotation
.end field

.field private searching:Z

.field private selectListener:Lcom/vkontakte/android/FriendListView$OnSelectListener;

.field private selectMode:Z

.field private selectedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private showOnlineOnly:Z

.field private timer:Ljava/util/Timer;

.field private viCount:I

.field private viStart:I

.field private visibleIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private visibleViews:Ljava/util/Vector;
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

    .line 73
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

    .line 74
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

    .line 75
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

    .line 73
    sput-object v0, Lcom/vkontakte/android/FriendListView;->translit1:[Ljava/lang/String;

    .line 76
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

    .line 77
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

    .line 78
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

    .line 76
    sput-object v0, Lcom/vkontakte/android/FriendListView;->translit2:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->globalSearchResults:Ljava/util/Vector;

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->friends:Ljava/util/Vector;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->firstHints:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->preloadedSearchResults:Ljava/util/Vector;

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->moreAvailable:Z

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->dataLoading:Z

    .line 67
    iput-object v3, p0, Lcom/vkontakte/android/FriendListView;->timer:Ljava/util/Timer;

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->visibleViews:Ljava/util/Vector;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->visibleIDs:Ljava/util/Vector;

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendListView;->globalSearchEnabled:Z

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    iput-object v3, p0, Lcom/vkontakte/android/FriendListView;->selectListener:Lcom/vkontakte/android/FriendListView$OnSelectListener;

    .line 80
    iput-object v3, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    .line 82
    iput v1, p0, Lcom/vkontakte/android/FriendListView;->highlightMode:I

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->selectMode:Z

    .line 84
    new-instance v0, Lcom/vkontakte/android/FriendListView$1;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/FriendListView$1;-><init>(Lcom/vkontakte/android/FriendListView;I)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->boldSpan:Landroid/text/style/StyleSpan;

    .line 90
    iput-boolean v2, p0, Lcom/vkontakte/android/FriendListView;->firstLoad:Z

    .line 92
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->searchChats:Z

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->multiSelect:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->selectedUsers:Ljava/util/ArrayList;

    .line 98
    invoke-direct {p0}, Lcom/vkontakte/android/FriendListView;->init()V

    .line 99
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

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->globalSearchResults:Ljava/util/Vector;

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->friends:Ljava/util/Vector;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->firstHints:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->preloadedSearchResults:Ljava/util/Vector;

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->moreAvailable:Z

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->dataLoading:Z

    .line 67
    iput-object v3, p0, Lcom/vkontakte/android/FriendListView;->timer:Ljava/util/Timer;

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->visibleViews:Ljava/util/Vector;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->visibleIDs:Ljava/util/Vector;

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendListView;->globalSearchEnabled:Z

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    iput-object v3, p0, Lcom/vkontakte/android/FriendListView;->selectListener:Lcom/vkontakte/android/FriendListView$OnSelectListener;

    .line 80
    iput-object v3, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    .line 82
    iput v1, p0, Lcom/vkontakte/android/FriendListView;->highlightMode:I

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->selectMode:Z

    .line 84
    new-instance v0, Lcom/vkontakte/android/FriendListView$1;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/FriendListView$1;-><init>(Lcom/vkontakte/android/FriendListView;I)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->boldSpan:Landroid/text/style/StyleSpan;

    .line 90
    iput-boolean v2, p0, Lcom/vkontakte/android/FriendListView;->firstLoad:Z

    .line 92
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->searchChats:Z

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->multiSelect:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->selectedUsers:Ljava/util/ArrayList;

    .line 103
    invoke-direct {p0}, Lcom/vkontakte/android/FriendListView;->init()V

    .line 104
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

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->globalSearchResults:Ljava/util/Vector;

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->friends:Ljava/util/Vector;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->firstHints:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->preloadedSearchResults:Ljava/util/Vector;

    .line 63
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->moreAvailable:Z

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->dataLoading:Z

    .line 67
    iput-object v3, p0, Lcom/vkontakte/android/FriendListView;->timer:Ljava/util/Timer;

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->visibleViews:Ljava/util/Vector;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->visibleIDs:Ljava/util/Vector;

    .line 71
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/FriendListView;->globalSearchEnabled:Z

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    iput-object v3, p0, Lcom/vkontakte/android/FriendListView;->selectListener:Lcom/vkontakte/android/FriendListView$OnSelectListener;

    .line 80
    iput-object v3, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    .line 82
    iput v1, p0, Lcom/vkontakte/android/FriendListView;->highlightMode:I

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->selectMode:Z

    .line 84
    new-instance v0, Lcom/vkontakte/android/FriendListView$1;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/FriendListView$1;-><init>(Lcom/vkontakte/android/FriendListView;I)V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->boldSpan:Landroid/text/style/StyleSpan;

    .line 90
    iput-boolean v2, p0, Lcom/vkontakte/android/FriendListView;->firstLoad:Z

    .line 92
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->searchChats:Z

    .line 93
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->multiSelect:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->selectedUsers:Ljava/util/ArrayList;

    .line 108
    invoke-direct {p0}, Lcom/vkontakte/android/FriendListView;->init()V

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendListView;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->multiSelect:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->visibleViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/FriendListView;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->globalSearchEnabled:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/FriendListView;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/vkontakte/android/FriendListView;->viStart:I

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/FriendListView;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/vkontakte/android/FriendListView;->viCount:I

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/FriendListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->searchBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/FriendListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendListView;->updateSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/FriendListView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->searchEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/FriendListView;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->selectMode:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/FriendListView$OnSelectListener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->selectListener:Lcom/vkontakte/android/FriendListView$OnSelectListener;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/FriendListView;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/vkontakte/android/FriendListView;->createSearchIndex()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/FriendListView;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/FriendListView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/FriendListView;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendListView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/FriendListView;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/FriendListView;Z)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendListView;->showSmallProgress(Z)V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/FriendListView;Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendListView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/FriendListView;I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/vkontakte/android/FriendListView;->viCount:I

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/FriendListView;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->preloading:Z

    return v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->preloadedSearchResults:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/FriendListView;Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendListView;->preloading:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->firstHints:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/FriendListView;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/FriendListView;Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendListView;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/FriendListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/FriendListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendListView;->doGlobalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/FriendListView;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->firstLoad:Z

    return v0
.end method

.method static synthetic access$35(Lcom/vkontakte/android/FriendListView;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendListView;->firstLoad:Z

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/FriendListView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/FriendListView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->globalSearchResults:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/FriendListView;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkontakte/android/FriendListView;->highlightMode:I

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/FriendListView;)Landroid/text/style/StyleSpan;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->boldSpan:Landroid/text/style/StyleSpan;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/FriendListView;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/FriendListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->selectedUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized createSearchIndex()V
    .locals 10

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 245
    .local v2, "t1":J
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    iget-object v6, p0, Lcom/vkontakte/android/FriendListView;->friends:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 268
    :goto_1
    :try_start_2
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "created index in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :cond_1
    monitor-exit p0

    return-void

    .line 247
    :cond_2
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UserProfile;

    .line 248
    .local v4, "u":Lcom/vkontakte/android/UserProfile;
    const/4 v0, 0x0

    .local v0, "c1":Ljava/lang/String;
    const/4 v1, 0x0

    .line 249
    .local v1, "c2":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 250
    iget-object v6, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_3
    iget-object v6, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 252
    :cond_4
    if-eqz v0, :cond_6

    .line 253
    iget-object v6, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v6, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_6
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 258
    iget-object v6, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v6, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_7
    iget-object v6, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 263
    .end local v0    # "c1":Ljava/lang/String;
    .end local v1    # "c2":Ljava/lang/String;
    .end local v4    # "u":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v5

    .line 264
    .local v5, "x":Ljava/util/ConcurrentModificationException;
    :try_start_4
    new-instance v6, Lcom/vkontakte/android/FriendListView$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/FriendListView$5;-><init>(Lcom/vkontakte/android/FriendListView;)V

    .line 266
    const-wide/16 v7, 0xc8

    .line 264
    invoke-virtual {p0, v6, v7, v8}, Lcom/vkontakte/android/FriendListView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 244
    .end local v2    # "t1":J
    .end local v5    # "x":Ljava/util/ConcurrentModificationException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private doGlobalSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 379
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    .line 387
    iput-boolean v2, p0, Lcom/vkontakte/android/FriendListView;->dataLoading:Z

    .line 389
    invoke-direct {p0, v2}, Lcom/vkontakte/android/FriendListView;->showSmallProgress(Z)V

    .line 391
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->searchChats:Z

    if-eqz v0, :cond_2

    .line 392
    new-instance v0, Lcom/vkontakte/android/api/MessagesSearchDialogs;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;-><init>(Ljava/lang/String;)V

    .line 393
    new-instance v1, Lcom/vkontakte/android/FriendListView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendListView$6;-><init>(Lcom/vkontakte/android/FriendListView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSearchDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesSearchDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 431
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/MessagesSearchDialogs;

    .line 392
    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 433
    :cond_2
    new-instance v1, Lcom/vkontakte/android/api/UsersSearch;

    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->globalSearchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->preloading:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x32

    :goto_1
    invoke-direct {v1, p1, v2, v0}, Lcom/vkontakte/android/api/UsersSearch;-><init>(Ljava/lang/String;II)V

    .line 434
    new-instance v0, Lcom/vkontakte/android/FriendListView$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendListView$7;-><init>(Lcom/vkontakte/android/FriendListView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/UsersSearch;->setCallback(Lcom/vkontakte/android/api/UsersSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 477
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/UsersSearch;

    .line 433
    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    goto :goto_1
.end method

.method private doLocalSearch(Ljava/lang/String;)V
    .locals 11
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "sstr":Ljava/lang/String;
    move-object v3, v1

    .local v3, "sstr_translit1":Ljava/lang/String;
    move-object v4, v1

    .line 333
    .local v4, "sstr_translit2":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Lcom/vkontakte/android/FriendListView;->translit1:[Ljava/lang/String;

    array-length v7, v7

    if-lt v0, v7, :cond_1

    .line 338
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v2, v4

    .line 341
    .local v2, "sstr_translit":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 342
    iput-boolean v9, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    .line 368
    :cond_0
    return-void

    .line 334
    .end local v2    # "sstr_translit":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/vkontakte/android/FriendListView;->translit1:[Ljava/lang/String;

    aget-object v7, v7, v0

    sget-object v8, Lcom/vkontakte/android/FriendListView;->translit2:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 335
    sget-object v7, Lcom/vkontakte/android/FriendListView;->translit2:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 336
    sget-object v7, Lcom/vkontakte/android/FriendListView;->translit2:[Ljava/lang/String;

    aget-object v7, v7, v0

    sget-object v8, Lcom/vkontakte/android/FriendListView;->translit1:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 333
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_3
    move-object v2, v3

    .restart local v2    # "sstr_translit":Ljava/lang/String;
    goto :goto_1

    .line 344
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 345
    iput-boolean v10, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    .line 346
    iget-object v7, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    .line 347
    .local v5, "st":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    if-eqz v5, :cond_6

    .line 348
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_b

    .line 356
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 357
    iget-object v7, p0, Lcom/vkontakte/android/FriendListView;->searchIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "st":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    check-cast v5, Ljava/util/Vector;

    .line 358
    .restart local v5    # "st":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    if-eqz v5, :cond_0

    .line 359
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 360
    .local v6, "u":Lcom/vkontakte/android/UserProfile;
    iget-object v8, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 361
    iget-object v8, v6, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_8
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    if-eqz v8, :cond_9

    iget v8, v6, Lcom/vkontakte/android/UserProfile;->online:I

    if-gtz v8, :cond_a

    :cond_9
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    if-nez v8, :cond_7

    .line 362
    :cond_a
    iget-object v8, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 348
    .end local v6    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 349
    .restart local v6    # "u":Lcom/vkontakte/android/UserProfile;
    iget-object v8, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 350
    iget-object v8, v6, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_c
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    if-eqz v8, :cond_d

    iget v8, v6, Lcom/vkontakte/android/UserProfile;->online:I

    if-gtz v8, :cond_e

    :cond_d
    iget-boolean v8, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    if-nez v8, :cond_5

    .line 351
    :cond_e
    iget-object v8, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/16 v10, 0x11

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 112
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/FriendListView;->setBackgroundColor(I)V

    .line 114
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/FriendListView;->footerView:Landroid/widget/FrameLayout;

    .line 115
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 116
    .local v3, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->footerView:Landroid/widget/FrameLayout;

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 121
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03003f

    invoke-static {v4, v5, v8}, Lcom/vkontakte/android/FriendListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/FriendListView;->searchBar:Landroid/view/View;

    .line 124
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 125
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/FriendListView;->searchBar:Landroid/view/View;

    invoke-virtual {v4, v5, v8, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 126
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/FriendListView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v8, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 127
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/FriendListView$FriendListAdapter;

    invoke-direct {v5, p0, v8}, Lcom/vkontakte/android/FriendListView$FriendListAdapter;-><init>(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/FriendListView$FriendListAdapter;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 130
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 131
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 132
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 133
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 134
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/FriendListView;->addView(Landroid/view/View;)V

    .line 136
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->searchBar:Landroid/view/View;

    const v5, 0x7f060074

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/vkontakte/android/FriendListView;->searchEdit:Landroid/widget/EditText;

    .line 138
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->searchEdit:Landroid/widget/EditText;

    new-instance v5, Lcom/vkontakte/android/FriendListView$2;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/FriendListView$2;-><init>(Lcom/vkontakte/android/FriendListView;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->searchBar:Landroid/view/View;

    const v5, 0x7f060124

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/FriendListView$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/FriendListView$3;-><init>(Lcom/vkontakte/android/FriendListView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-direct {p0, v7}, Lcom/vkontakte/android/FriendListView;->showSmallProgress(Z)V

    .line 165
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->searchBar:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/FriendListView$4;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/FriendListView$4;-><init>(Lcom/vkontakte/android/FriendListView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v4}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v4, p0, Lcom/vkontakte/android/FriendListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 214
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v5, Lcom/vkontakte/android/FriendListView$SearchUserPhotosAdapter;

    invoke-direct {v5, p0, v8}, Lcom/vkontakte/android/FriendListView$SearchUserPhotosAdapter;-><init>(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/FriendListView$SearchUserPhotosAdapter;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 216
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    .line 217
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    const v5, -0x888889

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    const v5, 0x7f090079

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 220
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 224
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/FriendListView;->addView(Landroid/view/View;)V

    .line 227
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/FriendListView;->bigProgress:Landroid/widget/ProgressBar;

    .line 228
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020224

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 230
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 231
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 233
    iget-object v4, p0, Lcom/vkontakte/android/FriendListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/FriendListView;->addView(Landroid/view/View;)V

    .line 234
    return-void
.end method

.method private showSmallProgress(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 535
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->footerView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 536
    return-void

    .line 535
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 308
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentSearchRequest:Lcom/vkontakte/android/APIRequest;

    .line 311
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->dataLoading:Z

    .line 313
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    .line 315
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->updateDisplayableList()V

    .line 316
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->updateList()V

    .line 328
    :goto_0
    return-void

    .line 319
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    .line 320
    iput-boolean v2, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    .line 321
    iput-boolean v2, p0, Lcom/vkontakte/android/FriendListView;->moreAvailable:Z

    .line 322
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->globalSearchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 323
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FriendListView;->doLocalSearch(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->updateList()V

    goto :goto_0
.end method


# virtual methods
.method public deselectAll()V
    .locals 3

    .prologue
    .line 514
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->visibleViews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    return-void

    .line 514
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 515
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/vkontakte/android/HLRelativeLayout;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Lcom/vkontakte/android/HLRelativeLayout;->deselect()V

    goto :goto_0
.end method

.method public enableGlobalSearch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendListView;->globalSearchEnabled:Z

    .line 285
    return-void
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 784
    iget v0, p0, Lcom/vkontakte/android/FriendListView;->lastUpdate:I

    if-lez v0, :cond_0

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getResources()Landroid/content/res/Resources;

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

    iget v1, p0, Lcom/vkontakte/android/FriendListView;->lastUpdate:I

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->selectedUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->searchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 373
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->searchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 375
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 790
    new-instance v0, Lcom/vkontakte/android/FriendListView$9;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendListView$9;-><init>(Lcom/vkontakte/android/FriendListView;)V

    .line 793
    const-wide/16 v1, 0x12c

    .line 790
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/FriendListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 794
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->selectListener:Lcom/vkontakte/android/FriendListView$OnSelectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->selectListener:Lcom/vkontakte/android/FriendListView$OnSelectListener;

    invoke-interface {v0}, Lcom/vkontakte/android/FriendListView$OnSelectListener;->onRefresh()V

    .line 780
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 797
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->activate()V

    .line 798
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/FriendListView;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/FriendListView;->viCount:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 799
    new-instance v0, Lcom/vkontakte/android/FriendListView$10;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendListView$10;-><init>(Lcom/vkontakte/android/FriendListView;)V

    .line 803
    const-wide/16 v1, 0xa

    .line 799
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/FriendListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 804
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

    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 484
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendListView;->timer:Ljava/util/Timer;

    .line 485
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/FriendListView;Lcom/vkontakte/android/FriendListView$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 486
    iput p3, p0, Lcom/vkontakte/android/FriendListView;->viCount:I

    .line 487
    iput p2, p0, Lcom/vkontakte/android/FriendListView;->viStart:I

    .line 488
    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->dataLoading:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->moreAvailable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->globalSearchEnabled:Z

    if-eqz v0, :cond_1

    .line 490
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->preloading:Z

    if-eqz v0, :cond_2

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->preloading:Z

    .line 492
    iput-boolean v4, p0, Lcom/vkontakte/android/FriendListView;->preloadOnReady:Z

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->preloadedSearchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->globalSearchResults:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->preloadedSearchResults:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 495
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->updateList()V

    .line 496
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->preloadedSearchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 497
    iput-boolean v4, p0, Lcom/vkontakte/android/FriendListView;->preloading:Z

    .line 498
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/FriendListView;->doGlobalSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/FriendListView;->doGlobalSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 507
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 511
    :cond_0
    return-void
.end method

.method public onScrolled(F)V
    .locals 4
    .param p1, "offset"    # F

    .prologue
    const-wide/16 v2, 0x12c

    .line 808
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 810
    new-instance v0, Lcom/vkontakte/android/FriendListView$11;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendListView$11;-><init>(Lcom/vkontakte/android/FriendListView;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkontakte/android/FriendListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    new-instance v0, Lcom/vkontakte/android/FriendListView$12;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendListView$12;-><init>(Lcom/vkontakte/android/FriendListView;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkontakte/android/FriendListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public refreshDone()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 769
    return-void
.end method

.method public setFirstHints(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "users":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->firstHints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 549
    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->firstHints:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->updateList()V

    .line 552
    return-void
.end method

.method public setHighlightMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 543
    iput p1, p0, Lcom/vkontakte/android/FriendListView;->highlightMode:I

    .line 544
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->updateList()V

    .line 545
    return-void
.end method

.method public setList(Ljava/util/Vector;Z)V
    .locals 4
    .param p2, "onlineOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "friendlist":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->bigProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    iput-boolean p2, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    .line 276
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09007a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView;->friends:Ljava/util/Vector;

    .line 278
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->updateDisplayableList()V

    .line 279
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->updateList()V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/FriendListView;->lastUpdate:I

    .line 281
    return-void

    .line 276
    :cond_0
    const v0, 0x7f090079

    goto :goto_0
.end method

.method public setOnSelectListener(Lcom/vkontakte/android/FriendListView$OnSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/FriendListView$OnSelectListener;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/vkontakte/android/FriendListView;->selectListener:Lcom/vkontakte/android/FriendListView$OnSelectListener;

    .line 540
    return-void
.end method

.method public setSelectMode(ZZ)V
    .locals 3
    .param p1, "b"    # Z
    .param p2, "multi"    # Z

    .prologue
    const/4 v1, 0x0

    .line 237
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendListView;->selectMode:Z

    .line 238
    iput-boolean p2, p0, Lcom/vkontakte/android/FriendListView;->multiSelect:Z

    .line 239
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->setHighlightAfterClick(Z)V

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 241
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized updateDisplayableList()V
    .locals 3

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    if-eqz v1, :cond_4

    .line 289
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 290
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->friends:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    if-nez v1, :cond_1

    .line 297
    iget-object v2, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->showOnlineOnly:Z

    if-eqz v1, :cond_5

    const v1, 0x7f09007a

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->noResultsView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/FriendListView;->searching:Z

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->currentQuery:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/FriendListView;->updateSearch(Ljava/lang/String;)V

    .line 303
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/FriendListView;->createSearchIndex()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 290
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 291
    .local v0, "up":Lcom/vkontakte/android/UserProfile;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "up":Lcom/vkontakte/android/UserProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 293
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 294
    iget-object v1, p0, Lcom/vkontakte/android/FriendListView;->displayableList:Ljava/util/Vector;

    iget-object v2, p0, Lcom/vkontakte/android/FriendListView;->friends:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 297
    :cond_5
    const v1, 0x7f090079

    goto :goto_2
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vkontakte/android/FriendListView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 521
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/FriendListView$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendListView$8;-><init>(Lcom/vkontakte/android/FriendListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method
