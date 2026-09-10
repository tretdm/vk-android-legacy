.class public Lcom/vkontakte/android/fragments/VideoListFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/VideoListView$VideoViewCallback;


# static fields
.field private static final COMMENTS_RESULT:I = 0xec

.field private static final VIDEO_EXISTING_RESULT:I = 0xeb

.field private static final VIDEO_NEW_RESULT:I = 0xea


# instance fields
.field private addItem:Lcom/actionbarsherlock/view/MenuItem;

.field private contentView:Landroid/widget/LinearLayout;

.field private filterBar:Landroid/widget/LinearLayout;

.field private firstNav:Z

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

.field private oid:I

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

.field private searchLoader:Ljava/lang/Runnable;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private type:I

.field private view:Lcom/vkontakte/android/VideoListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->playlists:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->firstNav:Z

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/VideoListFragment;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->firstNav:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/VideoListFragment;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->firstNav:Z

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/VideoListFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->addItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/VideoListFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/VideoListFragment;I)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/VideoListFragment;->setCurrentPlaylist(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/VideoListFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->oid:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/VideoListFragment;)Lcom/vkontakte/android/VideoListView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->view:Lcom/vkontakte/android/VideoListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/VideoListFragment;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->type:I

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->playlists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/VideoListFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchLoader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchLoader:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/VideoListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/VideoListFragment;->loadSearch(Ljava/lang/String;)V

    return-void
.end method

.method private loadSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/VideoListView;->globalSearch(Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->view:Lcom/vkontakte/android/VideoListView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoListView;->localSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurrentPlaylist(I)V
    .locals 1
    .param p1, "pl"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/VideoListView;->setAlbum(I)V

    .line 324
    return-void
.end method

.method private showAddVideoBox()V
    .locals 4

    .prologue
    .line 267
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f080212

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f080211

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/vkontakte/android/fragments/VideoListFragment$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/VideoListFragment$8;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 285
    return-void
.end method

.method private updateNavItems()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/vkontakte/android/api/VideoGetAlbums;

    iget v1, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->oid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/VideoGetAlbums;-><init>(I)V

    .line 304
    new-instance v1, Lcom/vkontakte/android/fragments/VideoListFragment$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/VideoListFragment$9;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoGetAlbums;->setCallback(Lcom/vkontakte/android/api/VideoGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 320
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 288
    const/16 v3, 0xec

    if-ne p1, v3, :cond_1

    .line 289
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 290
    const-string v3, "oid"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "oid":I
    const-string v3, "pid"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 291
    .local v2, "vid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v3, v1, v2}, Lcom/vkontakte/android/VideoListView;->removeItem(II)V

    .line 300
    .end local v1    # "oid":I
    .end local v2    # "vid":I
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/SendActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/VideoListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 17
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->oid:I

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    .line 73
    .local v13, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 74
    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 77
    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 78
    new-instance v1, Lcom/vkontakte/android/fragments/VideoListFragment$1;

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03005b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/vkontakte/android/fragments/VideoListFragment$1;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment;Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x7f030084

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 85
    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->oid:I

    if-lez v1, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->oid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v3, :cond_4

    const v1, 0x7f0801db

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 87
    :cond_0
    new-instance v11, Lcom/vkontakte/android/fragments/VideoListFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/vkontakte/android/fragments/VideoListFragment$2;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V

    .line 111
    .local v11, "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2, v11}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    .line 112
    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 114
    new-instance v1, Lcom/vkontakte/android/VideoListView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->oid:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->type:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "groupName"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "groupPhoto"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/VideoListView;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/VideoListView$VideoViewCallback;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->view:Lcom/vkontakte/android/VideoListView;

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->updateNavItems()V

    .line 117
    new-instance v1, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 120
    :try_start_0
    const-class v1, Lcom/actionbarsherlock/widget/SearchView;

    const-string v2, "mSearchButton"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 121
    .local v15, "searchField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v15, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 123
    .local v14, "searchBtn":Landroid/widget/ImageView;
    const v1, 0x7f0200fb

    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    const-class v1, Lcom/actionbarsherlock/widget/SearchView;

    const-string v2, "mSearchPlate"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v15, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 127
    .local v16, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x7f000001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v14    # "searchBtn":Landroid/widget/ImageView;
    .end local v15    # "searchField":Ljava/lang/reflect/Field;
    .end local v16    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/SearchView;->getImeOptions()I

    move-result v2

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setImeOptions(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v2, Lcom/vkontakte/android/fragments/VideoListFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/fragments/VideoListFragment$3;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v2, Lcom/vkontakte/android/fragments/VideoListFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/fragments/VideoListFragment$4;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v2, Lcom/vkontakte/android/fragments/VideoListFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vkontakte/android/fragments/VideoListFragment$5;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    .line 178
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->setHasOptionsMenu(Z)V

    .line 180
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 184
    new-instance v12, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 185
    .local v12, "qualitySelector":Landroid/widget/Spinner;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 186
    const v1, 0x7f02005f

    invoke-virtual {v12, v1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 187
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d004e

    const v3, 0x7f030085

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v8

    .line 188
    .local v8, "aa":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v8, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 189
    invoke-virtual {v12, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    new-instance v10, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 193
    .local v10, "lengthSelector":Landroid/widget/Spinner;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 194
    const v1, 0x7f02005f

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 195
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d004f

    const v3, 0x7f030085

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v9

    .line 196
    .local v9, "aal":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v9, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 197
    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    new-instance v1, Lcom/vkontakte/android/fragments/VideoListFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/vkontakte/android/fragments/VideoListFragment$6;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    new-instance v1, Lcom/vkontakte/android/fragments/VideoListFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/vkontakte/android/fragments/VideoListFragment$7;-><init>(Lcom/vkontakte/android/fragments/VideoListFragment;)V

    invoke-virtual {v12, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/vkontakte/android/VideoListView;->selectMode:Z

    .line 229
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->contentView:Landroid/widget/LinearLayout;

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->contentView:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->filterBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/VideoListFragment;->view:Lcom/vkontakte/android/VideoListView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    return-void

    .line 84
    .end local v8    # "aa":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v9    # "aal":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v10    # "lengthSelector":Landroid/widget/Spinner;
    .end local v11    # "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    .end local v12    # "qualitySelector":Landroid/widget/Spinner;
    :cond_3
    const v1, 0x7f080105

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 86
    :cond_4
    const v1, 0x7f080106

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "username_ins"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/vkontakte/android/fragments/VideoListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 128
    .restart local v11    # "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 236
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->clear()V

    .line 237
    const v2, 0x7f080060

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 238
    .local v1, "search":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v1, v5}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 239
    iget-object v2, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 240
    iget v2, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->oid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->oid:I

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->type:I

    if-nez v2, :cond_1

    .line 241
    const v2, 0x7f09021a

    const v3, 0x7f0800dc

    invoke-interface {p1, v4, v2, v4, v3}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 242
    .local v0, "add":Lcom/actionbarsherlock/view/MenuItem;
    const v2, 0x7f0200ee

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 243
    invoke-interface {v0, v5}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 244
    iput-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->addItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 246
    .end local v0    # "add":Lcom/actionbarsherlock/view/MenuItem;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 247
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkontakte/android/fragments/VideoListFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    .line 251
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 252
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 253
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 256
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09021a

    if-ne v0, v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->showAddVideoBox()V

    .line 259
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public openComments(Lcom/vkontakte/android/api/VideoFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "photo"    # Ljava/lang/String;
    .param p4, "referer"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 336
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    new-instance v3, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v3, p1}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    .line 337
    .local v3, "va":Lcom/vkontakte/android/VideoAttachment;
    iput-object p4, v3, Lcom/vkontakte/android/VideoAttachment;->referer:Ljava/lang/String;

    .line 338
    iget-object v4, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v4, p1, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 340
    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->date:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 341
    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 342
    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 343
    const/4 v4, 0x2

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 344
    iget v4, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 345
    iput-object p2, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 346
    iput-object p3, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 347
    iget v4, p1, Lcom/vkontakte/android/api/VideoFile;->likes:I

    iput v4, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 348
    const/16 v4, 0x8

    iget-boolean v5, p1, Lcom/vkontakte/android/api/VideoFile;->liked:Z

    invoke-virtual {v1, v4, v5}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "entry"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 351
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "class"

    const-string v5, "PostViewFragment"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v4, "args"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 354
    const/16 v4, 0xec

    invoke-virtual {p0, v2, v4}, Lcom/vkontakte/android/fragments/VideoListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 355
    return-void
.end method

.method public showAddDialog()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/VideoListFragment;->showAddVideoBox()V

    .line 360
    return-void
.end method
