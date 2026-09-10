.class public Lcom/vkontakte/android/fragments/OwnerVideoListFragment;
.super Lcom/vkontakte/android/fragments/AbsVideoListFragment;
.source "OwnerVideoListFragment.java"


# static fields
.field private static final COMMENTS_RESULT:I = 0xec

.field private static final VIDEO_EXISTING_RESULT:I = 0xeb

.field private static final VIDEO_NEW_RESULT:I = 0xea


# instance fields
.field private addItem:Landroid/view/MenuItem;

.field private currentAlbum:I

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private filterBar:Landroid/widget/LinearLayout;

.field private firstNav:Z

.field private lPreloadedVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/VideoFile;",
            ">;"
        }
    .end annotation
.end field

.field private lVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/VideoFile;",
            ">;"
        }
    .end annotation
.end field

.field private navAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playlists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/VideoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private searchHd:Z

.field private searchLength:I

.field private searchLoader:Ljava/lang/Runnable;

.field private searchQuery:Ljava/lang/String;

.field private searchView:Landroid/widget/SearchView;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentAlbum:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->firstNav:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->playlists:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->firstNav:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->firstNav:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->setCurrentAlbum(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchLength:I

    return p1
.end method

.method static synthetic access$1302(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchHd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    return v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->playlists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchLoader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchLoader:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->loadSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->addItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/OwnerVideoListFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->closeSearch()V

    return-void
.end method

.method private closeSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 420
    iput-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchQuery:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->lVideos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->lVideos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->data:Ljava/util/ArrayList;

    .line 423
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->lPreloadedVideos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->preloadedData:Ljava/util/ArrayList;

    .line 424
    iput-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->lVideos:Ljava/util/ArrayList;

    .line 425
    iput-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->lPreloadedVideos:Ljava/util/ArrayList;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 428
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->updateList()V

    .line 429
    return-void
.end method

.method private loadSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 407
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchQuery:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->data:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->lVideos:Ljava/util/ArrayList;

    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->preloadedData:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->lPreloadedVideos:Ljava/util/ArrayList;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->data:Ljava/util/ArrayList;

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->preloadedData:Ljava/util/ArrayList;

    .line 413
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->updateList()V

    .line 415
    :cond_2
    iput-object p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchQuery:Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->reload()V

    goto :goto_0
.end method

.method private setCurrentAlbum(I)V
    .locals 2
    .param p1, "album"    # I

    .prologue
    .line 379
    iget v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentAlbum:I

    if-ne v0, p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->addItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 381
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->addItem:Landroid/view/MenuItem;

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->cancelLoading()V

    .line 383
    iput p1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentAlbum:I

    .line 384
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->reload()V

    goto :goto_0

    .line 381
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showAddVideoBox()V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d02d9

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0d001b

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0d001a

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$8;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 297
    return-void
.end method

.method private updateNavItems()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/vkontakte/android/api/VideoGetAlbums;

    iget v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/VideoGetAlbums;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$5;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetAlbums;->setCallback(Lcom/vkontakte/android/api/VideoGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 196
    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 276
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lcom/vkontakte/android/api/VideoSearch;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchQuery:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchHd:Z

    iget v5, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchLength:I

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/VideoSearch;-><init>(Ljava/lang/String;IIZI)V

    new-instance v1, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$6;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoSearch;->setCallback(Lcom/vkontakte/android/api/VideoSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 268
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/VideoGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    iget v2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentAlbum:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/vkontakte/android/api/VideoGet;-><init>(IIII)V

    new-instance v1, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$7;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGet;->setCallback(Lcom/vkontakte/android/api/VideoGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    const-string v0, "search"

    .line 319
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    if-ltz v0, :cond_1

    const-string v0, "videos_user"

    goto :goto_0

    :cond_1
    const-string v0, "videos_group"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 300
    const/16 v3, 0xec

    if-ne p1, v3, :cond_1

    .line 301
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 302
    const-string v3, "oid"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "oid":I
    const-string v3, "pid"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 303
    .local v2, "vid":I
    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->removeItem(II)V

    .line 312
    .end local v1    # "oid":I
    .end local v2    # "vid":I
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/SendActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 11
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 69
    sget v4, Lcom/vkontakte/android/Global;->uid:I

    iput v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "uid"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "uid"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "select"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->selectMode:Z

    .line 75
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "title"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "title"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    new-instance v4, Lcom/vkontakte/android/ui/NavigationSpinnerAdapter;

    invoke-direct {v4, p1}, Lcom/vkontakte/android/ui/NavigationSpinnerAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 80
    iget-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v7, 0x1090009

    invoke-virtual {v4, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 81
    iget-object v7, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v8, "title"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v8, "title"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 82
    iget v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    if-lez v4, :cond_2

    .line 83
    iget-object v7, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    iget v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v8, :cond_5

    const v4, 0x7f0d0362

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 85
    :cond_2
    new-instance v0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$1;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V

    .line 107
    .local v0, "navListener":Landroid/app/ActionBar$OnNavigationListener;
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v7, v0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 108
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 111
    new-instance v4, Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    .line 112
    iget-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0278

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 114
    :try_start_0
    const-class v4, Landroid/widget/SearchView;

    const-string v6, "mSearchButton"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 115
    .local v2, "searchField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    iget-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 117
    .local v1, "searchBtn":Landroid/widget/ImageView;
    const v4, 0x7f02008d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    const-class v4, Landroid/widget/SearchView;

    const-string v6, "mSearchPlate"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 119
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    iget-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 121
    .local v3, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, -0x7f000001

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "searchBtn":Landroid/widget/ImageView;
    .end local v2    # "searchField":Ljava/lang/reflect/Field;
    .end local v3    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_3
    iget-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 124
    iget-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$2;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 153
    iget-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$3;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v4, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$4;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 172
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->setHasOptionsMenu(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->loadData()V

    .line 175
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->updateNavItems()V

    .line 176
    return-void

    .end local v0    # "navListener":Landroid/app/ActionBar$OnNavigationListener;
    :cond_3
    move v4, v6

    .line 73
    goto/16 :goto_0

    .line 81
    :cond_4
    const v4, 0x7f0d0360

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 83
    :cond_5
    const v4, 0x7f0d0363

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "username_ins"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v4, v8}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 122
    .restart local v0    # "navListener":Landroid/app/ActionBar$OnNavigationListener;
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 200
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 201
    const v2, 0x7f0d0278

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 202
    .local v1, "search":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 203
    iget-object v2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchView:Landroid/widget/SearchView;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 204
    iget v2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->uid:I

    if-nez v2, :cond_1

    .line 205
    :cond_0
    const v2, 0x7f0801fa

    const v3, 0x7f0d0002

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 206
    .local v0, "add":Landroid/view/MenuItem;
    const v2, 0x7f020080

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 207
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 208
    iput-object v0, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->addItem:Landroid/view/MenuItem;

    .line 210
    .end local v0    # "add":Landroid/view/MenuItem;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 211
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x1090009

    const v10, 0x1090008

    const/4 v9, -0x1

    .line 324
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 326
    .local v4, "v":Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    .line 327
    iget-object v6, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 328
    iget-object v6, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 330
    new-instance v3, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 331
    .local v3, "qualitySelector":Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f07006b

    invoke-static {v6, v7, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 332
    .local v0, "aa":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 333
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 334
    iget-object v6, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    new-instance v2, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 337
    .local v2, "lengthSelector":Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f07006a

    invoke-static {v6, v7, v10}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 338
    .local v1, "aal":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 339
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 340
    iget-object v6, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v6, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    new-instance v6, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$9;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$9;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 355
    new-instance v6, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$10;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment$10;-><init>(Lcom/vkontakte/android/fragments/OwnerVideoListFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 369
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 370
    .local v5, "wrap":Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 371
    iget-object v6, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    return-object v5
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 224
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 225
    invoke-super {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->onDetach()V

    .line 226
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 389
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->selectMode:Z

    if-eqz v1, :cond_0

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "video"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 393
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 404
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchQuery:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "file"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    const-string v1, "referer"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 401
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/VideoFile;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0801fa

    if-ne v0, v1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/OwnerVideoListFragment;->showAddVideoBox()V

    .line 218
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
