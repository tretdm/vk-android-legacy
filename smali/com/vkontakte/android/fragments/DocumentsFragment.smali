.class public Lcom/vkontakte/android/fragments/DocumentsFragment;
.super Landroid/app/Fragment;
.source "DocumentsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;,
        Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;
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

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->docs:Ljava/util/Vector;

    .line 77
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->canAdd:Z

    .line 78
    new-instance v0, Lcom/vkontakte/android/fragments/DocumentsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$1;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/DocumentsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    return v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->docs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vkontakte/android/fragments/DocumentsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->canAdd:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->adapter:Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/DocumentsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->selectMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/Document;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->confirmAndDelete(Lcom/vkontakte/android/api/Document;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/DocumentsFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/DocumentsFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/DocumentsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/Document;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->doDelete(Lcom/vkontakte/android/api/Document;)V

    return-void
.end method

.method private confirmAndDelete(Lcom/vkontakte/android/api/Document;)V
    .locals 3
    .param p1, "doc"    # Lcom/vkontakte/android/api/Document;

    .prologue
    .line 288
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0086

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/DocumentsFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment$5;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 299
    return-void
.end method

.method private doDelete(Lcom/vkontakte/android/api/Document;)V
    .locals 3
    .param p1, "doc"    # Lcom/vkontakte/android/api/Document;

    .prologue
    .line 302
    new-instance v0, Lcom/vkontakte/android/api/DocsDelete;

    iget v1, p1, Lcom/vkontakte/android/api/Document;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/Document;->did:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/DocsDelete;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/DocumentsFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/DocumentsFragment$6;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/DocsDelete;->setCallback(Lcom/vkontakte/android/api/DocsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 318
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 4

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    .line 359
    new-instance v0, Lcom/vkontakte/android/api/DocsGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->docs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/DocsGet;-><init>(III)V

    new-instance v1, Lcom/vkontakte/android/fragments/DocumentsFragment$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$7;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/DocsGet;->setCallback(Lcom/vkontakte/android/api/DocsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 390
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 321
    const/16 v6, 0x65

    if-ne p1, v6, :cond_1

    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 322
    const-string v6, "documents"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 323
    .local v1, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .local v4, "p":Landroid/os/Parcelable;
    move-object v0, v4

    .line 324
    check-cast v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    .line 325
    .local v0, "att":Lcom/vkontakte/android/PendingDocumentAttachment;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "new"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v6, "file"

    iget-object v7, v0, Lcom/vkontakte/android/PendingDocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v6, "id"

    iget v7, v0, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v6, "type"

    const/4 v7, 0x4

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    iget v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-gez v6, :cond_0

    .line 331
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "group_id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    neg-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v6, "req_params"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 335
    .end local v5    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 338
    .end local v0    # "att":Lcom/vkontakte/android/PendingDocumentAttachment;
    .end local v1    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "p":Landroid/os/Parcelable;
    :cond_1
    return-void
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

    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    const v5, 0x7f0d00b1

    invoke-virtual {p1, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 107
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 108
    .local v4, "sa":Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 109
    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 111
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "oid"

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    .line 112
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "select"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->selectMode:Z

    .line 113
    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v5, v7, :cond_5

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->canAdd:Z

    .line 115
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 116
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 117
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    .line 118
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 119
    .local v3, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v0, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v5, v6, v7, v6, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 123
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {v3, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    .line 128
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7, v10, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 129
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    invoke-direct {v7, p0, v10}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/fragments/DocumentsFragment$1;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->adapter:Lcom/vkontakte/android/fragments/DocumentsFragment$DocsAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 131
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v5, v7, :cond_2

    .line 132
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 133
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 135
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 136
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    const v7, 0x7f020077

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setSelector(I)V

    .line 137
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/ui/PaddingColorDrawable;

    const v8, -0x1a1a1b

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/vkontakte/android/ui/PaddingColorDrawable;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 141
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 142
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v7, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;

    invoke-direct {v7, p0, v10}, Lcom/vkontakte/android/fragments/DocumentsFragment$DocsThumbsAdapter;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/fragments/DocumentsFragment$1;)V

    iget-object v8, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    invoke-direct {v5, v7, v8, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 146
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/fragments/DocumentsFragment$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$2;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    iget-boolean v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->selectMode:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-eq v5, v7, :cond_3

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-gez v5, :cond_4

    iget v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    neg-int v5, v5

    invoke-static {v5}, Lcom/vkontakte/android/data/Groups;->isGroupAdmin(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 184
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/fragments/DocumentsFragment$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$3;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 209
    :cond_4
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    .line 210
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const v7, -0x888889

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const v7, 0x7f0d0194

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    const/high16 v7, 0x41880000    # 17.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 213
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 214
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v11, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 220
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 221
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 222
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 227
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f030030

    invoke-static {v5, v6, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 228
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v6, Lcom/vkontakte/android/fragments/DocumentsFragment$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$4;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v5, v12}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 237
    iget-object v5, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->loadData()V

    .line 240
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/DocumentsFragment;->setHasOptionsMenu(Z)V

    .line 241
    return-void

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "lparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "pb":Landroid/widget/ProgressBar;
    :cond_5
    move v5, v6

    .line 113
    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 248
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 251
    iget v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->ownerID:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->canAdd:Z

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    const v0, 0x7f0f0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 253
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 273
    :cond_0
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0801ed

    if-ne v1, v2, :cond_0

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/DocumentChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "no_my"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    const-string v1, "limit"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 280
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 284
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->imgWrapper:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 285
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->moreAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment;->dataLoading:Z

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->loadData()V

    .line 345
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/DocumentsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/DocumentsFragment$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/DocumentsFragment$8;-><init>(Lcom/vkontakte/android/fragments/DocumentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method
