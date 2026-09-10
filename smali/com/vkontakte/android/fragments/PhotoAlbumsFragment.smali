.class public Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
.super Lcom/vkontakte/android/fragments/BaseListFragment;
.source "PhotoAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;,
        Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/BaseListFragment",
        "<",
        "Lcom/vkontakte/android/api/PhotoAlbum;",
        ">;"
    }
.end annotation


# static fields
.field private static final SELECT_RESULT:I = 0x2066


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;

.field private albums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private itemHeight:I

.field private menuClickListener:Landroid/view/View$OnClickListener;

.field private needSystem:Z

.field private numColumns:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private select:Z

.field private system:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PhotoAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private uid:I

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->system:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$2;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 557
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->copyLink(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->doEditAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    .prologue
    .line 59
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->itemHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->select:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getMultiThumbViewId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->adapter:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->updateSizes(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->system:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->doDelete(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    .prologue
    .line 59
    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    return v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->doCreateAlbum(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private copyLink(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 407
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 408
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 409
    .local v1, "cm":Landroid/text/ClipboardManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://vk.com/album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0153

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 411
    return-void
.end method

.method private doCreateAlbum(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "descr"    # Ljava/lang/String;
    .param p4, "privacy"    # I

    .prologue
    .line 359
    new-instance v0, Lcom/vkontakte/android/api/PhotosCreateAlbum;

    if-gez p1, :cond_0

    .end local p1    # "uid":I
    :goto_0
    invoke-direct {v0, p2, p3, p4, p1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$10;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosCreateAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosCreateAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 374
    return-void

    .line 359
    .restart local p1    # "uid":I
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private doDelete(I)V
    .locals 2
    .param p1, "aid"    # I

    .prologue
    .line 291
    new-instance v1, Lcom/vkontakte/android/api/PhotosDeleteAlbum;

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    neg-int v0, v0

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;-><init>(II)V

    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$6;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/PhotosDeleteAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosDeleteAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 305
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doEditAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 6
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 377
    new-instance v0, Lcom/vkontakte/android/api/PhotosEditAlbum;

    iget v1, p1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iget-object v2, p1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    iget v4, p1, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    iget v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    if-gez v5, :cond_0

    iget v5, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    :goto_0
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/PhotosEditAlbum;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$11;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosEditAlbum;->setCallback(Lcom/vkontakte/android/api/PhotosEditAlbum$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 392
    return-void

    .line 377
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getMultiThumbViewId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 452
    packed-switch p1, :pswitch_data_0

    .line 460
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 454
    :pswitch_0
    const v0, 0x7f080115

    goto :goto_0

    .line 456
    :pswitch_1
    const v0, 0x7f080116

    goto :goto_0

    .line 458
    :pswitch_2
    const v0, 0x7f080117

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 9
    .param p1, "a"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    const/4 v8, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030025

    invoke-static {v4, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 313
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    if-gez v4, :cond_0

    const v4, 0x7f08009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_0
    const v4, 0x7f08009b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 315
    .local v2, "sp":Landroid/widget/Spinner;
    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$7;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1090008

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$7;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 320
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 321
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 322
    if-eqz p1, :cond_1

    .line 323
    const v4, 0x7f080098

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkontakte/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const v4, 0x7f080099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkontakte/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget v4, p1, Lcom/vkontakte/android/api/PhotoAlbum;->privacy:I

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 327
    :cond_1
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_2

    const v4, 0x7f0d0090

    :goto_0
    invoke-virtual {v5, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    if-nez p1, :cond_3

    const v4, 0x7f0d008f

    :goto_1
    new-instance v6, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$8;

    invoke-direct {v6, p0, v3, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$8;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Landroid/view/View;Lcom/vkontakte/android/api/PhotoAlbum;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0052

    invoke-virtual {v4, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 348
    .local v1, "dlg":Landroid/app/AlertDialog;
    new-instance v4, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$9;

    invoke-direct {v4, p0, v3}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$9;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 355
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 356
    return-void

    .line 327
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    :cond_2
    const v4, 0x7f0d00b7

    goto :goto_0

    :cond_3
    const v4, 0x7f0d0275

    goto :goto_1
.end method

.method private updateSizes(I)V
    .locals 5
    .param p1, "sw"    # I

    .prologue
    .line 435
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 436
    .local v2, "ratio":F
    const/high16 v3, 0x43af0000    # 350.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v1, v3

    .line 437
    .local v1, "maxW":F
    int-to-float v3, p1

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 439
    .local v0, "colCount":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->list:Landroid/widget/ListView;

    check-cast v3, Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->setColumnCount(I)V

    .line 440
    div-int v3, p1, v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->itemHeight:I

    .line 441
    iput v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->numColumns:I

    .line 442
    return-void
.end method


# virtual methods
.method public addOrReplace(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 3
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iget v2, p1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v1, v2, :cond_0

    .line 397
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->updateList()V

    .line 404
    :goto_1
    return-void

    .line 395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->updateList()V

    goto :goto_1
.end method

.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 236
    :cond_0
    return-void
.end method

.method public createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/MultiColumnListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public deleteAlbum(I)V
    .locals 3
    .param p1, "aid"    # I

    .prologue
    .line 277
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d009e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$5;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 288
    return-void
.end method

.method protected doLoadData()V
    .locals 4

    .prologue
    .line 208
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAlbums;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "need_system"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosGetAlbums;-><init>(IZ)V

    new-instance v1, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$4;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 228
    return-void
.end method

.method public editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 0
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 309
    return-void
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->adapter:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->adapter:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->adapter:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 445
    const/16 v0, 0x2066

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 447
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 449
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "uid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    .line 168
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "need_system"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->needSystem:Z

    .line 169
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "select"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "select_album"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->select:Z

    .line 170
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "user_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->userName:Ljava/lang/String;

    .line 171
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 172
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->setHasOptionsMenu(Z)V

    .line 177
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->setRefreshEnabled(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->loadData()V

    .line 179
    return-void

    :cond_2
    move v0, v1

    .line 169
    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "no_title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    const v0, 0x7f0d0022

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "com.vkontakte.android.PHOTO_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "com.vkontakte.android.UPDATE_ALBUM_COVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 149
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 150
    const v0, 0x7f0801fa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->uid:I

    neg-int v0, v0

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->isGroupAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "select"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "select_album"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 151
    return-void

    .line 150
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/BaseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;

    invoke-direct {v2, p0, v4}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$AlbumCoversAdapter;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$1;)V

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 190
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->list:Landroid/widget/ListView;

    check-cast v1, Lcom/vkontakte/android/ui/MultiColumnListView;

    new-instance v2, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$3;-><init>(Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiColumnListView;->setOnResizeListener(Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;)V

    .line 196
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 197
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onDestroy()V

    .line 144
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 241
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->adapter:Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment$PhotoAlbumsAdapter;->resolveIndex(I)[I

    move-result-object v7

    .line 242
    .local v7, "idx":[I
    const/4 v0, 0x0

    aget v0, v7, v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->system:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 247
    .local v6, "album":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "select_album"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "album"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 267
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 245
    .end local v6    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget v2, v7, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v6    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    goto :goto_0

    .line 254
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v1, "args":Landroid/os/Bundle;
    const-string v0, "album"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "select"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    const-string v0, "PhotoListFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zte"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;ZII)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 259
    :cond_3
    const-string v0, "select"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "class"

    const-string v2, "PhotoListFragment"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v0, "args"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_4

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    const-string v0, "overlaybar"

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    :cond_4
    const/16 v0, 0x2066

    invoke-virtual {p0, v8, v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0801fa

    if-ne v0, v1, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->showCreateBox(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public remove(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v1, p1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 417
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->updateList()V

    .line 421
    :cond_0
    return-void

    .line 414
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCover(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "cover"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->albums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 425
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v2, p1, :cond_0

    .line 426
    iput-object p2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 431
    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_1
    return-void
.end method

.method protected setListViewAppearance(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "list"    # Landroid/widget/ListView;

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 272
    const v0, 0x7f02007d

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 273
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 274
    return-void
.end method
