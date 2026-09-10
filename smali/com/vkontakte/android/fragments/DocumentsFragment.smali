.class public Lcom/vkontakte/android/fragments/DocumentsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "DocumentsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;,
        Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;
    }
.end annotation


# static fields
.field private static final ADD_RESULT:I = 0x65


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

.field private bigProgress:Landroid/widget/ProgressBar;

.field private canAdd:Z

.field private contentView:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field protected dataLoading:Z

.field private docs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Document;",
            ">;"
        }
    .end annotation
.end field

.field private emptyView:Landroid/widget/TextView;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private footerView:Landroid/widget/FrameLayout;

.field private imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private list:Landroid/widget/ListView;

.field protected moreAvailable:Z

.field private ownerID:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private selectMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->docs:Ljava/util/Vector;

    .line 78
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->canAdd:Z

    .line 79
    new-instance v0, Lcom/vkontakte/android/fragments/DocumentsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$1;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DocumentsFragment;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->docs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/DocumentsFragment;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->canAdd:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->adapter:Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/DocumentsFragment;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->selectMode:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->confirmAndDelete(Lcom/vkontakte/android/api/Document;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->doDelete(Lcom/vkontakte/android/api/Document;)V

    return-void
.end method

.method private confirmAndDelete(Lcom/vkontakte/android/api/Document;)V
    .locals 3
    .param p1, "doc"    # Lcom/vkontakte/android/api/Document;

    .prologue
    .line 289
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    const v1, 0x7f0802eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 292
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/fragments/DocumentsFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment$5;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 298
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 300
    return-void
.end method

.method private doDelete(Lcom/vkontakte/android/api/Document;)V
    .locals 3
    .param p1, "doc"    # Lcom/vkontakte/android/api/Document;

    .prologue
    .line 303
    new-instance v0, Lcom/vkontakte/android/api/DocsDelete;

    iget v1, p1, Lcom/vkontakte/android/api/Document;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/Document;->did:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/DocsDelete;-><init>(II)V

    .line 304
    new-instance v1, Lcom/vkontakte/android/fragments/DocumentsFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment$6;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/DocsDelete;->setCallback(Lcom/vkontakte/android/api/DocsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 319
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 4

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    .line 360
    new-instance v0, Lcom/vkontakte/android/api/DocsGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->docs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/DocsGet;-><init>(III)V

    .line 361
    new-instance v1, Lcom/vkontakte/android/fragments/DocumentsFragment$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$7;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/DocsGet;->setCallback(Lcom/vkontakte/android/api/DocsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 360
    iput-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 391
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 322
    const/16 v5, 0x65

    if-ne p1, v5, :cond_0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 323
    const-string v5, "documents"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 324
    .local v1, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 339
    .end local v1    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_0
    return-void

    .line 324
    .restart local v1    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .local v3, "p":Landroid/os/Parcelable;
    move-object v0, v3

    .line 325
    check-cast v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    .line 326
    .local v0, "att":Lcom/vkontakte/android/PendingDocumentAttachment;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "new"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v6, "file"

    iget-object v7, v0, Lcom/vkontakte/android/PendingDocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v6, "id"

    iget v7, v0, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string v6, "type"

    const/4 v7, 0x4

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    iget v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-gez v6, :cond_2

    .line 332
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "group_id"

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    neg-int v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v6, "req_params"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 336
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/16 v13, 0x11

    const/16 v12, 0x8

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 107
    const v5, 0x7f080119

    invoke-virtual {p1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 108
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    .line 109
    .local v4, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 110
    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 112
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "oid"

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    .line 113
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "select"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->selectMode:Z

    .line 114
    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v5, v7, :cond_4

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->canAdd:Z

    .line 116
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 117
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 118
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    .line 119
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 120
    .local v3, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v0, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 122
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v5, v6, v7, v6, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 124
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v3, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    .line 129
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7, v10, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 130
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    invoke-direct {v7, p0, v10}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->adapter:Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 132
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v5, v7, :cond_1

    .line 133
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 134
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 136
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 137
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    const v7, 0x7f0200e6

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setSelector(I)V

    .line 138
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/ui/PaddingColorDrawable;

    const v8, -0x1a1a1b

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/vkontakte/android/ui/PaddingColorDrawable;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 142
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 143
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v7, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;

    invoke-direct {v7, p0, v10}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;)V

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-direct {v5, v7, v8, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 147
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/fragments/DocumentsFragment$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$2;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    iget-boolean v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->selectMode:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v5, v7, :cond_2

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-gez v5, :cond_3

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    neg-int v5, v5

    invoke-static {v5}, Lcom/vkontakte/android/data/Groups;->isGroupAdmin(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 185
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/fragments/DocumentsFragment$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$3;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 210
    :cond_3
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    .line 211
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const v7, -0x888889

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const v7, 0x7f08011a

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const/high16 v7, 0x41880000    # 17.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 214
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v11, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 221
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 222
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 224
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 226
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 228
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f03003f

    invoke-static {v5, v6, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 229
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v6, Lcom/vkontakte/android/fragments/DocumentsFragment$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$4;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v5, v12}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 238
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 240
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->loadData()V

    .line 241
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/DocumentsFragment;->setHasOptionsMenu(Z)V

    .line 242
    return-void

    .line 114
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "lparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "pb":Landroid/widget/ProgressBar;
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 249
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 252
    iget v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->canAdd:Z

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    const v0, 0x7f0e0002

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 254
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 272
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 274
    :cond_0
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 257
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09020d

    if-ne v1, v2, :cond_0

    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/DocumentChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "no_my"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    const-string v1, "limit"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 281
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 285
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 286
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->loadData()V

    .line 346
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/DocumentsFragment$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$8;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method
