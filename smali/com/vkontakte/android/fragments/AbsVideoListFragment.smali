.class public abstract Lcom/vkontakte/android/fragments/AbsVideoListFragment;
.super Lcom/vkontakte/android/fragments/PreloadingListFragment;
.source "AbsVideoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;,
        Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/PreloadingListFragment",
        "<",
        "Lcom/vkontakte/android/api/VideoFile;",
        ">;"
    }
.end annotation


# instance fields
.field private actionsClickListener:Landroid/view/View$OnClickListener;

.field private adapter:Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;

.field private itemHeight:I

.field private numColumns:I

.field protected selectMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;-><init>(I)V

    .line 51
    new-instance v0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$1;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->actionsClickListener:Landroid/view/View$OnClickListener;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->addVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->deleteVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->copyLink(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/AbsVideoListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->updateSizes(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->doDeleteVideo(Lcom/vkontakte/android/api/VideoFile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->itemHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/AbsVideoListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->actionsClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private addVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 3
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 263
    new-instance v0, Lcom/vkontakte/android/api/VideoAdd;

    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoAdd;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$5;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoAdd;->setCallback(Lcom/vkontakte/android/api/VideoAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 277
    return-void
.end method

.method private copyLink(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 248
    .local v0, "cm":Landroid/text/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://vk.com/video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0153

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 250
    return-void
.end method

.method private deleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 3
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 214
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00ab

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/AbsVideoListFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$3;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    return-void
.end method

.method private doDeleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 230
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    iget v1, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    new-instance v1, Lcom/vkontakte/android/fragments/AbsVideoListFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$4;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 244
    return-void
.end method

.method private updateSizes(I)V
    .locals 5
    .param p1, "sw"    # I

    .prologue
    .line 182
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 183
    .local v2, "ratio":F
    const/high16 v3, 0x43af0000    # 350.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v1, v3

    .line 184
    .local v1, "maxW":F
    int-to-float v3, p1

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 186
    .local v0, "colCount":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->list:Landroid/widget/ListView;

    check-cast v3, Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->setColumnCount(I)V

    .line 187
    div-int v3, p1, v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->itemHeight:I

    .line 188
    iput v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->numColumns:I

    .line 189
    return-void
.end method


# virtual methods
.method public createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/MultiColumnListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->adapter:Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/fragments/AbsVideoListFragment$1;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->adapter:Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->adapter:Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoAdapter;

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$VideoImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;Lcom/vkontakte/android/fragments/AbsVideoListFragment$1;)V

    return-object v0
.end method

.method protected abstract getReferer()Ljava/lang/String;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 140
    iget-object v1, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->list:Landroid/widget/ListView;

    check-cast v1, Lcom/vkontakte/android/ui/MultiColumnListView;

    new-instance v2, Lcom/vkontakte/android/fragments/AbsVideoListFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment$2;-><init>(Lcom/vkontakte/android/fragments/AbsVideoListFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiColumnListView;->setOnResizeListener(Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;)V

    .line 146
    return-object v0
.end method

.method protected openVideoComments(Lcom/vkontakte/android/api/VideoFile;)V
    .locals 4
    .param p1, "vf"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 192
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 193
    .local v1, "post":Lcom/vkontakte/android/NewsEntry;
    iget-object v2, v1, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v3, p1}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 195
    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 196
    const/4 v2, 0x2

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    .line 197
    iget-object v2, p1, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 198
    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->date:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 199
    iget-object v2, p1, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 200
    iget-object v2, p1, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 201
    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 202
    iget-boolean v2, p1, Lcom/vkontakte/android/api/VideoFile;->liked:Z

    if-eqz v2, :cond_0

    .line 203
    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 204
    :cond_0
    iget v2, p1, Lcom/vkontakte/android/api/VideoFile;->likes:I

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "entry"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    const-string v2, "referer"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getReferer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "PostViewFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 209
    return-void
.end method

.method public removeItem(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "vid"    # I

    .prologue
    .line 253
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/VideoFile;

    .line 254
    .local v0, "f":Lcom/vkontakte/android/api/VideoFile;
    iget v2, v0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/vkontakte/android/api/VideoFile;->vid:I

    if-ne v2, p2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AbsVideoListFragment;->updateList()V

    .line 260
    .end local v0    # "f":Lcom/vkontakte/android/api/VideoFile;
    :cond_1
    return-void
.end method

.method protected setListViewAppearance(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "list"    # Landroid/widget/ListView;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 127
    const v0, 0x7f02007d

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 129
    return-void
.end method
