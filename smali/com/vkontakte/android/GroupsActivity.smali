.class public Lcom/vkontakte/android/GroupsActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "GroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;,
        Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

.field private events:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

.field private groupsWrap:Landroid/widget/FrameLayout;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private indexer:Lcom/vkontakte/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/SearchIndexer",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private invitationClickListener:Landroid/view/View$OnClickListener;

.field private invitations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/GroupInvitation;",
            ">;"
        }
    .end annotation
.end field

.field private isSearch:Z

.field private listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private localSearchQuery:Ljava/lang/String;

.field private localSearchResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private preloadedSearchResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Landroid/widget/ProgressBar;

.field private searchBar:Landroid/view/View;

.field private searchEmptyView:Landroid/widget/TextView;

.field private searchFooterView:Landroid/widget/FrameLayout;

.field protected searchLoading:Z

.field protected searchMoreAvailable:Z

.field protected searchPreloadOnReady:Z

.field protected searchPreloading:Z

.field private searchProgress:Landroid/widget/ProgressBar;

.field private searchQuery:Ljava/lang/String;

.field private searchResults:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->preloadedSearchResults:Ljava/util/Vector;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchResults:Ljava/util/Vector;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->invitations:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/GroupsActivity;->isSearch:Z

    .line 65
    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchMoreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchPreloadOnReady:Z

    .line 68
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchQuery:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/vkontakte/android/GroupsActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/GroupsActivity$1;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->invitationClickListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/vkontakte/android/GroupsActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/GroupsActivity$2;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->invitations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/GroupsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/GroupsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/vkontakte/android/GroupsActivity;->updateLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->preloadedSearchResults:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/GroupsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity;->searchQuery:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/GroupsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->loadSearch()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/GroupsActivity;Lcom/vkontakte/android/api/GroupInvitation;)V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/vkontakte/android/GroupsActivity;->declineInvitation(Lcom/vkontakte/android/api/GroupInvitation;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->updateList()V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/SearchIndexer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->loadInvitations()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/GroupsActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->invitationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchResults:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method private createEmptyView(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 4
    .param p1, "stringID"    # I
    .param p2, "fmtArg"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 400
    .local v0, "text":Landroid/widget/TextView;
    const v1, -0x888889

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 402
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 403
    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 406
    :goto_0
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 407
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    return-object v0

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createListView()Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 351
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, "list":Lcom/vkontakte/android/ui/RefreshableListView;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 353
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 355
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 358
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 359
    new-instance v1, Lcom/vkontakte/android/GroupsActivity$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsActivity$8;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 370
    new-instance v1, Lcom/vkontakte/android/GroupsActivity$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsActivity$9;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 395
    return-object v0
.end method

.method private declineInvitation(Lcom/vkontakte/android/api/GroupInvitation;)V
    .locals 2
    .param p1, "inv"    # Lcom/vkontakte/android/api/GroupInvitation;

    .prologue
    .line 586
    new-instance v0, Lcom/vkontakte/android/api/GroupsLeave;

    iget-object v1, p1, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v1, v1, Lcom/vkontakte/android/api/Group;->id:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;-><init>(I)V

    .line 587
    new-instance v1, Lcom/vkontakte/android/GroupsActivity$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/GroupsActivity$14;-><init>(Lcom/vkontakte/android/GroupsActivity;Lcom/vkontakte/android/api/GroupInvitation;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsLeave;->setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 607
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 608
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 609
    return-void
.end method

.method private deselectAll()V
    .locals 3

    .prologue
    .line 619
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 624
    return-void

    .line 620
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 621
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/vkontakte/android/HLLinearLayout;

    if-eqz v2, :cond_1

    .line 622
    check-cast v1, Lcom/vkontakte/android/HLLinearLayout;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/HLLinearLayout;->deselect()V

    .line 619
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadInvitations()V
    .locals 2

    .prologue
    .line 518
    new-instance v0, Lcom/vkontakte/android/api/GroupsGetInvites;

    invoke-direct {v0}, Lcom/vkontakte/android/api/GroupsGetInvites;-><init>()V

    .line 519
    new-instance v1, Lcom/vkontakte/android/GroupsActivity$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsActivity$12;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGetInvites;->setCallback(Lcom/vkontakte/android/api/GroupsGetInvites$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 531
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 532
    return-void
.end method

.method private loadList()V
    .locals 4

    .prologue
    .line 412
    new-instance v0, Lcom/vkontakte/android/api/GroupsGet;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uid"

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GroupsGet;-><init>(I)V

    .line 413
    new-instance v1, Lcom/vkontakte/android/GroupsActivity$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsActivity$10;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGet;->setCallback(Lcom/vkontakte/android/api/GroupsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 484
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 486
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/vkontakte/android/cache/GroupsCache;->hasEntries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->reloadFromCache()V

    .line 489
    :cond_1
    return-void
.end method

.method private loadSearch()V
    .locals 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 537
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchLoading:Z

    .line 538
    new-instance v1, Lcom/vkontakte/android/api/GroupsSearch;

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->searchQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    iget-boolean v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchPreloading:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/vkontakte/android/api/GroupsSearch;-><init>(Ljava/lang/String;II)V

    .line 539
    new-instance v0, Lcom/vkontakte/android/GroupsActivity$13;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/GroupsActivity$13;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/GroupsSearch;->setCallback(Lcom/vkontakte/android/api/GroupsSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 582
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 583
    return-void

    .line 538
    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private reloadFromCache()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 492
    invoke-static {p0}, Lcom/vkontakte/android/cache/GroupsCache;->get(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v0

    .line 493
    .local v0, "cache":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 494
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 495
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 504
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    new-instance v3, Lcom/vkontakte/android/GroupsActivity$11;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/GroupsActivity$11;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 509
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v8, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->setSize(I)V

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->updateList()V

    .line 511
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 512
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 513
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 514
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v2}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 515
    return-void

    .line 495
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 496
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 497
    iget v3, v1, Lcom/vkontakte/android/api/Group;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 498
    iget v3, v1, Lcom/vkontakte/android/api/Group;->startTime:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    if-le v3, v4, :cond_0

    .line 499
    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->events:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateList()V
    .locals 4

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 612
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->notifyDataSetChanged()V

    .line 613
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->searchEmptyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-virtual {v3}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getVisibility()I

    move-result v3

    if-ne v3, v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 616
    return-void

    :cond_2
    move v0, v1

    .line 613
    goto :goto_0
.end method

.method private updateLocalSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 627
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchQuery:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 629
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->localSearchResults:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 632
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->preloadedSearchResults:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 633
    iput-boolean v2, p0, Lcom/vkontakte/android/GroupsActivity;->searchMoreAvailable:Z

    .line 634
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->updateList()V

    .line 636
    return-void
.end method


# virtual methods
.method public focusSearchField()V
    .locals 3

    .prologue
    const v2, 0x7f060074

    .line 337
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 338
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/GroupsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 339
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 340
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, -0x2

    const/high16 v11, 0x41f00000    # 30.0f

    const/high16 v10, 0x40e00000    # 7.0f

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "uid"

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v5, v7, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/vkontakte/android/GroupsActivity;->isSearch:Z

    .line 125
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->createListView()Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 126
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 127
    iget-boolean v5, p0, Lcom/vkontakte/android/GroupsActivity;->isSearch:Z

    if-eqz v5, :cond_0

    .line 128
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    .line 129
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f020224

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v0, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v5, v6, v7, v6, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 136
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 138
    const v5, 0x7f03003f

    invoke-static {p0, v5, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    .line 143
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v7, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    invoke-virtual {v5, v7, v9, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 144
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v7, p0, Lcom/vkontakte/android/GroupsActivity;->searchFooterView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7, v9, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 146
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    const v6, 0x7f060074

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 147
    .local v3, "searchEdit":Landroid/widget/EditText;
    const v5, 0x7f0901c5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 149
    new-instance v5, Lcom/vkontakte/android/GroupsActivity$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/GroupsActivity$3;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    new-instance v5, Lcom/vkontakte/android/GroupsActivity$4;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/GroupsActivity$4;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    const v6, 0x7f060124

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/GroupsActivity$5;

    invoke-direct {v6, p0, v3}, Lcom/vkontakte/android/GroupsActivity$5;-><init>(Lcom/vkontakte/android/GroupsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    new-instance v5, Lcom/vkontakte/android/GroupsActivity$6;

    invoke-direct {v5, p0, v3}, Lcom/vkontakte/android/GroupsActivity$6;-><init>(Lcom/vkontakte/android/GroupsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 229
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "pb":Landroid/widget/ProgressBar;
    .end local v3    # "searchEdit":Landroid/widget/EditText;
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    iput-object v6, p0, Lcom/vkontakte/android/GroupsActivity;->adapter:Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    .line 233
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020224

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v2, "pparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 236
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v6, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;

    invoke-direct {v6, p0, v9}, Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;-><init>(Lcom/vkontakte/android/GroupsActivity;Lcom/vkontakte/android/GroupsActivity$GroupsImageLoaderAdapter;)V

    iget-object v7, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v8, Lcom/vkontakte/android/GroupsActivity$7;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/GroupsActivity$7;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 314
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    .line 315
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 316
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "uid"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-ne v5, v6, :cond_2

    .line 317
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    const v6, 0x7f09016d

    invoke-direct {p0, v6, v9}, Lcom/vkontakte/android/GroupsActivity;->createEmptyView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .local v4, "tView":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 321
    :goto_1
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/GroupsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 322
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 323
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/GroupsActivity;->setContentView(Landroid/view/View;)V

    .line 324
    iput-object v4, p0, Lcom/vkontakte/android/GroupsActivity;->searchEmptyView:Landroid/widget/TextView;

    .line 326
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->loadList()V

    .line 327
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v6, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 328
    return-void

    .end local v2    # "pparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "tView":Landroid/widget/TextView;
    :cond_1
    move v5, v6

    .line 122
    goto/16 :goto_0

    .line 319
    .restart local v2    # "pparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/GroupsActivity;->groupsWrap:Landroid/widget/FrameLayout;

    const v6, 0x7f090170

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "name0"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vkontakte/android/GroupsActivity;->createEmptyView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .restart local v4    # "tView":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 836
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 837
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v1, Lcom/vkontakte/android/GroupsActivity$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsActivity$15;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    .line 840
    const-wide/16 v2, 0x12c

    .line 837
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 841
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 844
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 845
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 846
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 847
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groupsList:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v1, Lcom/vkontakte/android/GroupsActivity$16;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsActivity$16;-><init>(Lcom/vkontakte/android/GroupsActivity;)V

    .line 850
    const-wide/16 v2, 0xa

    .line 848
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 852
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 853
    invoke-direct {p0}, Lcom/vkontakte/android/GroupsActivity;->reloadFromCache()V

    .line 854
    :cond_1
    return-void
.end method

.method public unfocusSearchField()V
    .locals 3

    .prologue
    .line 331
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/GroupsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 332
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 333
    iget-object v1, p0, Lcom/vkontakte/android/GroupsActivity;->searchBar:Landroid/view/View;

    const v2, 0x7f060123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 334
    return-void
.end method
