.class public Lcom/vkontakte/android/fragments/DialogsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "DialogsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;,
        Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;,
        Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static final CREATE_CHAT_RESULT:I = 0x143

.field private static final SELECT_MEMBERS_RESULT:I = 0x142

.field private static final STATE_COLORS_BG:[I

.field private static final STATE_COLORS_PROGRESS:[I

.field private static final STATE_COLORS_SHADOW:[I

.field private static final STATE_COLORS_TEXT:[I

.field private static final STATE_PANEL_HEIGHT:I = 0x26

.field private static final WRITE_RESULT:I = 0x141


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;

.field private contentView:Landroid/widget/FrameLayout;

.field private contentWrap:Landroid/widget/FrameLayout;

.field private dataLoading:Z

.field private delayedHideState:Ljava/lang/Runnable;

.field private displayItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private dlgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Lcom/vkontakte/android/ui/EmptyView;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private list:Landroid/widget/ListView;

.field private moreAvailable:Z

.field private progress:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private searchQuery:Ljava/lang/String;

.field private searchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

.field private selectedTempUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private statePanel:Landroid/view/View;

.field private suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_BG:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_SHADOW:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_TEXT:[I

    .line 84
    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, -0x487d85

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, -0x546495

    aput v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_PROGRESS:[I

    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        -0xd003746
        -0xd031459
        -0xd51174d
    .end array-data

    .line 82
    :array_1
    .array-data 4
        -0xd0a4352
        -0xd14266f
        -0xd5a2957
    .end array-data

    .line 83
    :array_2
    .array-data 4
        -0x6b9ea9
        -0x7d8baf
        -0xb082ad
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dataLoading:Z

    .line 95
    new-instance v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    .line 247
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->updateList()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/DialogsFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->delayedHideState:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/DialogsFragment;)Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/DialogsFragment;IZ)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/DialogsFragment;->updateState(IZ)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->preventDuplicates()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->adapter:Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment;->confirmAndClearHistory(Lcom/vkontakte/android/DialogEntry;)V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment;->createShortcut(Lcom/vkontakte/android/DialogEntry;)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 984
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment;->doClearHistory(Lcom/vkontakte/android/DialogEntry;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/DialogsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment;->search(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private varargs animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 579
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 581
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, p3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, p3, v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v1

    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 584
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {p1, p2, v2, p3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 585
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 586
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 587
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private confirmAndClearHistory(Lcom/vkontakte/android/DialogEntry;)V
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;

    .prologue
    .line 971
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 972
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 973
    const v1, 0x7f080228

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 974
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/fragments/DialogsFragment$15;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$15;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 980
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 982
    return-void
.end method

.method private createShortcut(Lcom/vkontakte/android/DialogEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$17;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$17;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1009
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1010
    return-void
.end method

.method private doClearHistory(Lcom/vkontakte/android/DialogEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;

    .prologue
    .line 985
    new-instance v0, Lcom/vkontakte/android/api/MessagesDeleteDialog;

    iget-object v1, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesDeleteDialog;-><init>(I)V

    .line 986
    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$16;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$16;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesDeleteDialog;->setCallback(Lcom/vkontakte/android/api/MessagesDeleteDialog$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 999
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1000
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1001
    return-void
.end method

.method private hideStatePanel()V
    .locals 4

    .prologue
    .line 551
    new-instance v0, Lcom/vkontakte/android/fragments/DialogsFragment$10;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$10;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->delayedHideState:Ljava/lang/Runnable;

    .line 575
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->delayedHideState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    return-void
.end method

.method private preventDuplicates()V
    .locals 4

    .prologue
    .line 1013
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/DialogEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1021
    return-void

    .line 1015
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 1016
    .local v0, "de":Lcom/vkontakte/android/DialogEntry;
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1017
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1019
    :cond_1
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private search(Ljava/lang/String;)V
    .locals 5
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 620
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 622
    if-nez p1, :cond_1

    .line 623
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    .line 624
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    .line 625
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->updateList()V

    .line 626
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 629
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 630
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 632
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 637
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    .line 639
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    .line 640
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->updateList()V

    .line 641
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 642
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private showStatePanel(Z)V
    .locals 9
    .param p1, "animated"    # Z

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x42180000    # 38.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 526
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->delayedHideState:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->delayedHideState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 528
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->delayedHideState:Ljava/lang/Runnable;

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 548
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 532
    if-eqz p1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 534
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 535
    .local v0, "set":Landroid/animation/AnimatorSet;
    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v5, [F

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 536
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 537
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 538
    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$9;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 544
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 546
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_0

    .line 535
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 750
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$13;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateState(IZ)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "initial"    # Z

    .prologue
    const/4 v8, 0x2

    const v7, 0x7f0900fe

    const v6, 0x7f0900fd

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 446
    packed-switch p1, :pswitch_data_0

    .line 523
    :goto_0
    return-void

    .line 448
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f08035f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 449
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f02024f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 451
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    .line 453
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_BG:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 454
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_SHADOW:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 459
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "textColor"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    sget-object v0, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_TEXT:[I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-direct {p0, v3, v4, v5}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_PROGRESS:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 464
    if-eqz p2, :cond_1

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->showStatePanel(Z)V

    goto/16 :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "color"

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_BG:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "color"

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_SHADOW:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 464
    goto :goto_2

    .line 467
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f080360

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 468
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f02024f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_2

    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_BG:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_SHADOW:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 478
    :goto_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "textColor"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    sget-object v0, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_TEXT:[I

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-direct {p0, v3, v4, v5}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_PROGRESS:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 483
    if-eqz p2, :cond_3

    :goto_4
    invoke-direct {p0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->showStatePanel(Z)V

    goto/16 :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "color"

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_BG:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "color"

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_SHADOW:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move v1, v2

    .line 483
    goto :goto_4

    .line 486
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f080361

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 487
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f02024f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 489
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 490
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_4

    .line 491
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_BG:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 492
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_SHADOW:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 497
    :goto_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "textColor"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    sget-object v0, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_TEXT:[I

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-direct {p0, v3, v4, v5}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_PROGRESS:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 502
    if-eqz p2, :cond_5

    :goto_6
    invoke-direct {p0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->showStatePanel(Z)V

    goto/16 :goto_0

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "color"

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_BG:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "color"

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_SHADOW:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    move v1, v2

    .line 502
    goto :goto_6

    .line 505
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f080362

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 506
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f02017b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_6

    .line 509
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_BG:[I

    aget v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 510
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v3, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_SHADOW:[I

    aget v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 515
    :goto_7
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "textColor"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    sget-object v0, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_TEXT:[I

    aget v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-direct {p0, v3, v4, v5}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_PROGRESS:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 520
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->hideStatePanel()V

    goto/16 :goto_0

    .line 512
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900fc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "color"

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_BG:[I

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const v3, 0x7f0900ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "color"

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Lcom/vkontakte/android/fragments/DialogsFragment;->STATE_COLORS_SHADOW:[I

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/vkontakte/android/fragments/DialogsFragment;->animateColor(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/vkontakte/android/data/Messages;->getLastUpdated()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Z)V
    .locals 5
    .param p1, "refresh"    # Z

    .prologue
    const/16 v4, 0x14

    const/4 v0, 0x0

    .line 647
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load data "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", more="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", loading="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dataLoading:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dataLoading:Z

    if-eqz v1, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    .line 650
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dataLoading:Z

    .line 651
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 652
    if-eqz p1, :cond_3

    :goto_1
    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$11;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    invoke-static {v0, v4, v1}, Lcom/vkontakte/android/data/Messages;->getDialogs(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    .line 696
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-eqz p1, :cond_5

    :goto_2
    new-instance v2, Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$12;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    invoke-static {v1, v0, v4, v2}, Lcom/vkontakte/android/data/Messages;->search(Ljava/lang/String;IILcom/vkontakte/android/data/Messages$SearchCallback;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x143

    const/16 v6, 0x141

    const/16 v9, 0x142

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 760
    if-ne p1, v6, :cond_1

    .line 761
    if-ne p2, v8, :cond_5

    .line 762
    const-string v4, "user"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 763
    .local v2, "profile":Lcom/vkontakte/android/UserProfile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 764
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "id"

    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 765
    const-string v4, "title"

    iget-object v5, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 766
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    const v5, 0x77359400

    if-ge v4, v5, :cond_0

    const-string v4, "photo"

    iget-object v5, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 767
    :cond_0
    const-string v4, "ChatFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 777
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_1
    :goto_0
    if-ne p1, v9, :cond_2

    .line 778
    if-ne p2, v8, :cond_6

    .line 779
    const-string v4, "users"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 780
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iput-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    .line 781
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 782
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "users"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 783
    const-string v4, "create"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 784
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 785
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "ChatMembersFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string v4, "args"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 787
    invoke-virtual {p0, v1, v10}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 798
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    :goto_1
    if-ne p1, v10, :cond_4

    if-eq p2, v8, :cond_4

    .line 799
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 800
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "CreateChatFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 802
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 803
    const-string v4, "selected"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 804
    :cond_3
    const-string v4, "chat"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 805
    const-string v4, "args"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 806
    invoke-virtual {p0, v1, v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 807
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    .line 808
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x7f040000

    const v6, 0x7f040001

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 810
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 768
    :cond_5
    if-ne p2, v7, :cond_1

    .line 769
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "CreateChatFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 772
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "chat"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 773
    const-string v4, "args"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v1, v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 789
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 790
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "select"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 791
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 792
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "CreateChatFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    const-string v4, "args"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v1, v6}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 795
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x7f040000

    const v6, 0x7f040001

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto/16 :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 11
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 289
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    .line 290
    new-instance v5, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-direct {v5, p1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 291
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 292
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    new-instance v6, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->adapter:Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const v7, -0x201d1b

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 295
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 296
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 297
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    const v6, 0x7f0200e6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelector(I)V

    .line 298
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 303
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 304
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 305
    invoke-static {p1}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 306
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v6, 0x7f0802cb

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 307
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v6, 0x7f0802d4

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 308
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 309
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    new-instance v6, Lcom/vkontakte/android/fragments/DialogsFragment$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$2;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 321
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 323
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    .line 325
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 326
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 327
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 328
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/16 v10, 0x11

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 331
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v6, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;)V

    iget-object v7, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    new-instance v8, Lcom/vkontakte/android/fragments/DialogsFragment$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$3;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 352
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    .line 353
    .local v1, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "select"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 354
    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 355
    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 356
    const v5, 0x7f080048

    invoke-virtual {v1, v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(I)V

    .line 359
    :cond_0
    new-instance v5, Lcom/vkontakte/android/fragments/DialogsFragment$4;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/vkontakte/android/fragments/DialogsFragment$4;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 364
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 366
    :try_start_0
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v6, "mSearchButton"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 367
    .local v3, "searchField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 368
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 369
    .local v2, "searchBtn":Landroid/widget/ImageView;
    const v5, 0x7f0200fb

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v6, "mSearchPlate"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 371
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 372
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 373
    .local v4, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, -0x7f000001

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v2    # "searchBtn":Landroid/widget/ImageView;
    .end local v3    # "searchField":Ljava/lang/reflect/Field;
    .end local v4    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/DialogsFragment$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$5;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 394
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/DialogsFragment$6;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$6;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    .line 404
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f03003f

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 405
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v6, Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$7;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 414
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 416
    new-instance v6, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v9, "select"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-direct {v6, v7, v8, v5}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;-><init>(Lcom/actionbarsherlock/widget/SearchView;Landroid/content/Context;Z)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    .line 417
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 418
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    if-eqz v5, :cond_1

    .line 419
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->setSelectionListener(Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;)V

    .line 421
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/DialogsFragment;->setHasOptionsMenu(Z)V

    .line 423
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/DialogsFragment$8;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$8;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 433
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f03005a

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    .line 434
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->statePanel:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42180000    # 38.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/16 v10, 0x30

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->getState()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/vkontakte/android/fragments/DialogsFragment;->updateState(IZ)V

    .line 437
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 439
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-nez v5, :cond_2

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 443
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 416
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 374
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "com.vkontakte.android.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 259
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 592
    const v2, 0x7f080060

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 593
    .local v0, "search":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v0, v5}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 594
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 595
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    const v2, 0x7f090211

    const v3, 0x7f080049

    invoke-interface {p1, v4, v2, v4, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 597
    .local v1, "write":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v1, v5}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 598
    const v2, 0x7f0200fd

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 600
    .end local v1    # "write":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 601
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 264
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v4, 0x77359400

    .line 902
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 903
    if-gez p3, :cond_0

    .line 923
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 905
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    if-eqz v2, :cond_1

    .line 906
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    invoke-interface {v2, v1}, Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/DialogEntry;)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 910
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 911
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 912
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 913
    iget-object v2, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v2, v4, :cond_2

    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 914
    :cond_2
    const-string v2, "ChatFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 916
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 917
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 918
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 919
    iget-object v2, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v2, v4, :cond_4

    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 920
    :cond_4
    const-string v2, "from_search"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 921
    const-string v2, "ChatFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 949
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 967
    :cond_0
    :goto_0
    return v1

    .line 950
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 951
    if-ltz p3, :cond_0

    .line 952
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 953
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 954
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const v5, 0x7f080226

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/DialogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const v1, 0x7f080227

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$14;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/fragments/DialogsFragment$14;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 966
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v2

    .line 967
    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 604
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090211

    if-ne v2, v3, :cond_0

    .line 605
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 606
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 607
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "CreateChatFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 610
    const/16 v2, 0x141

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 612
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return v4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->onPause()V

    .line 283
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 931
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 932
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->resetCache()V

    .line 933
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 934
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 269
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 273
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 274
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 275
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 276
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->onResume()V

    .line 277
    :cond_0
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 945
    return-void
.end method

.method public setListener(Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;)V
    .locals 1
    .param p1, "l"    # Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    .line 744
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->setSelectionListener(Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;)V

    .line 746
    :cond_0
    return-void
.end method
