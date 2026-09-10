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

.field private static final WRITE_RESULT:I = 0x141


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;

.field private contentView:Landroid/widget/FrameLayout;

.field private contentWrap:Landroid/widget/FrameLayout;

.field private dataLoading:Z

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

.field private emptyView:Landroid/widget/TextView;

.field private footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

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

.field private suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dataLoading:Z

    .line 76
    new-instance v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    .line 160
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->updateList()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/DialogsFragment;)Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->preventDuplicates()V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->adapter:Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment;->confirmAndClearHistory(Lcom/vkontakte/android/DialogEntry;)V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment;->createShortcut(Lcom/vkontakte/android/DialogEntry;)V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment;->doClearHistory(Lcom/vkontakte/android/DialogEntry;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/DialogsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment;->search(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    return-void
.end method

.method private confirmAndClearHistory(Lcom/vkontakte/android/DialogEntry;)V
    .locals 3
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;

    .prologue
    .line 664
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    const v1, 0x7f060063

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 666
    const v1, 0x7f06020e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 667
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/fragments/DialogsFragment$11;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$11;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 673
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 675
    return-void
.end method

.method private createShortcut(Lcom/vkontakte/android/DialogEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;

    .prologue
    .line 697
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$13;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 702
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 703
    return-void
.end method

.method private doClearHistory(Lcom/vkontakte/android/DialogEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkontakte/android/DialogEntry;

    .prologue
    .line 678
    new-instance v0, Lcom/vkontakte/android/api/MessagesDeleteDialog;

    iget-object v1, p1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v1, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesDeleteDialog;-><init>(I)V

    .line 679
    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$12;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$12;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesDeleteDialog;->setCallback(Lcom/vkontakte/android/api/MessagesDeleteDialog$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 692
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 693
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 694
    return-void
.end method

.method private preventDuplicates()V
    .locals 4

    .prologue
    .line 706
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/DialogEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 714
    return-void

    .line 708
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 709
    .local v0, "de":Lcom/vkontakte/android/DialogEntry;
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 710
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 712
    :cond_1
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private search(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 353
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    .line 354
    if-nez p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    .line 356
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    .line 357
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->updateList()V

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    .line 361
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchResults:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    .line 362
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->updateList()V

    .line 363
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$9;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

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
    .locals 4
    .param p1, "refresh"    # Z

    .prologue
    const/16 v3, 0x14

    const/4 v0, 0x0

    .line 369
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dataLoading:Z

    if-eqz v1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->moreAvailable:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    .line 371
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dataLoading:Z

    .line 372
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 373
    if-eqz p1, :cond_3

    :goto_1
    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$7;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    invoke-static {v0, v3, v1}, Lcom/vkontakte/android/data/Messages;->getDialogs(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->dlgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    .line 401
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-eqz p1, :cond_5

    :goto_2
    new-instance v2, Lcom/vkontakte/android/fragments/DialogsFragment$8;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/DialogsFragment$8;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Z)V

    invoke-static {v1, v0, v3, v2}, Lcom/vkontakte/android/data/Messages;->search(Ljava/lang/String;IILcom/vkontakte/android/data/Messages$SearchCallback;)V

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

    .line 453
    if-ne p1, v6, :cond_1

    .line 454
    if-ne p2, v8, :cond_5

    .line 455
    const-string v4, "user"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 456
    .local v2, "profile":Lcom/vkontakte/android/UserProfile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 457
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "id"

    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v4, "title"

    iget-object v5, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 459
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    const v5, 0x77359400

    if-ge v4, v5, :cond_0

    const-string v4, "photo"

    iget-object v5, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 460
    :cond_0
    const-string v4, "ChatFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 470
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_1
    :goto_0
    if-ne p1, v9, :cond_2

    .line 471
    if-ne p2, v8, :cond_6

    .line 472
    const-string v4, "users"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 473
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iput-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    .line 474
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "users"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 476
    const-string v4, "create"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 477
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "ChatMembersFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v4, "args"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v1, v10}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 491
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    :goto_1
    if-ne p1, v10, :cond_4

    if-eq p2, v8, :cond_4

    .line 492
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "CreateChatFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 495
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 496
    const-string v4, "selected"

    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 497
    :cond_3
    const-string v4, "chat"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 498
    const-string v4, "args"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 499
    invoke-virtual {p0, v1, v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 500
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selectedTempUsers:Ljava/util/ArrayList;

    .line 501
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x7f040000

    const v6, 0x7f040001

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 503
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 461
    :cond_5
    if-ne p2, v7, :cond_1

    .line 462
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "CreateChatFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 465
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "chat"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 466
    const-string v4, "args"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v1, v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 482
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 483
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v4, "select"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 484
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "CreateChatFragment"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v4, "args"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0, v1, v6}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 488
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x7f040000

    const v6, 0x7f040001

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto/16 :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v10, -0x1

    const/high16 v11, 0x42200000    # 40.0f

    const/4 v13, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 201
    new-instance v5, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v5, p1}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 202
    new-instance v5, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-direct {v5, p1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 203
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v5, v8, v13, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 204
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v8, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;

    invoke-direct {v8, p0, v13}, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;)V

    iput-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->adapter:Lcom/vkontakte/android/fragments/DialogsFragment$DialogsAdapter;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const v9, -0x201d1b

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 207
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 209
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v8, 0x7f0200da

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(I)V

    .line 210
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 212
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 214
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 215
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 216
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Landroid/widget/TextView;

    .line 217
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Landroid/widget/TextView;

    const v8, 0x7f070078

    invoke-virtual {v5, p1, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 218
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 219
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Landroid/widget/TextView;

    const v8, 0x7f060069

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setEmptyView(Landroid/view/View;)V

    .line 223
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    .line 225
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 226
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 227
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 228
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/16 v12, 0x11

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentWrap:Landroid/widget/FrameLayout;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v8, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;

    invoke-direct {v8, p0, v13}, Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/fragments/DialogsFragment$DialogsPhotosAdapter;)V

    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v10, Lcom/vkontakte/android/fragments/DialogsFragment$2;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$2;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-direct {v5, v8, v9, v10}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 248
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    .line 249
    .local v1, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "select"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 250
    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 251
    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 252
    const v5, 0x7f06002e

    invoke-virtual {v1, v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(I)V

    .line 255
    :cond_0
    new-instance v5, Lcom/vkontakte/android/fragments/DialogsFragment$3;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Lcom/vkontakte/android/fragments/DialogsFragment$3;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 260
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060046

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 262
    :try_start_0
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v8, "mSearchButton"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 263
    .local v3, "searchField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 264
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 265
    .local v2, "searchBtn":Landroid/widget/ImageView;
    const v5, 0x7f0200ed

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v8, "mSearchPlate"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 267
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 268
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 269
    .local v4, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, -0x7f000001

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v2    # "searchBtn":Landroid/widget/ImageView;
    .end local v3    # "searchField":Ljava/lang/reflect/Field;
    .end local v4    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v8, Lcom/vkontakte/android/fragments/DialogsFragment$4;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$4;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v5, v8}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 290
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v8, Lcom/vkontakte/android/fragments/DialogsFragment$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$5;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v5, v8}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    .line 298
    new-instance v8, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v11, "select"

    invoke-virtual {v5, v11, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-direct {v8, v9, v10, v5}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;-><init>(Lcom/actionbarsherlock/widget/SearchView;Landroid/content/Context;Z)V

    iput-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    .line 299
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    if-eqz v5, :cond_1

    .line 301
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->setSelectionListener(Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;)V

    .line 303
    :cond_1
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/DialogsFragment;->setHasOptionsMenu(Z)V

    .line 305
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v7, Lcom/vkontakte/android/fragments/DialogsFragment$6;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/DialogsFragment$6;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    invoke-virtual {v5, v7}, Lcom/actionbarsherlock/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 316
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 318
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-nez v5, :cond_2

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 322
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    :cond_3
    move v5, v7

    .line 298
    goto :goto_1

    .line 270
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 325
    const v2, 0x7f060046

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 326
    .local v0, "search":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v0, v5}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 327
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 328
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    const v2, 0x7f080189

    const v3, 0x7f06002f

    invoke-interface {p1, v4, v2, v4, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 330
    .local v1, "write":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v1, v5}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 331
    const v2, 0x7f0200ee

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 333
    .end local v1    # "write":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 334
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 176
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 177
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

    .line 595
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 596
    if-gez p3, :cond_0

    .line 616
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 598
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    if-eqz v2, :cond_1

    .line 599
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    invoke-interface {v2, v1}, Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/DialogEntry;)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 606
    iget-object v2, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v2, v4, :cond_2

    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 607
    :cond_2
    const-string v2, "ChatFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 609
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 612
    iget-object v2, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v2, v4, :cond_4

    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 613
    :cond_4
    const-string v2, "from_search"

    iget-object v3, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 614
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

    .line 642
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->searchQuery:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v1

    .line 643
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 644
    if-ltz p3, :cond_0

    .line 645
    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 646
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 647
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const v5, 0x7f06020c

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/DialogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const v1, 0x7f06020d

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    new-instance v1, Lcom/vkontakte/android/fragments/DialogsFragment$10;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/fragments/DialogsFragment$10;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v2

    .line 660
    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 337
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f080189

    if-ne v2, v3, :cond_0

    .line 338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "CreateChatFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 343
    const/16 v2, 0x141

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 345
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return v4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->onPause()V

    .line 195
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 624
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 625
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->resetCache()V

    .line 626
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 627
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 181
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 185
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 186
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->onResume()V

    .line 189
    :cond_0
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 638
    return-void
.end method

.method public setListener(Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;)V
    .locals 1
    .param p1, "l"    # Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->selListener:Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;

    .line 438
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment;->suggester:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->setSelectionListener(Lcom/vkontakte/android/fragments/DialogsFragment$SelectionListener;)V

    .line 440
    :cond_0
    return-void
.end method
