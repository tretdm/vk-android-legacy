.class public Lcom/vkontakte/android/PhotoAlbumsView;
.super Landroid/widget/FrameLayout;
.source "PhotoAlbumsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;,
        Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;,
        Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

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

.field public callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private itemHeight:I

.field private list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private loaded:Z

.field private menuClickListener:Landroid/view/View$OnClickListener;

.field private needSystem:Z

.field private noAlbumsView:Lcom/vkontakte/android/ui/EmptyView;

.field private numColumns:I

.field private progress:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

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

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "needSystem"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->system:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 53
    iput v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    .line 57
    iput-boolean v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    .line 59
    iput v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->numColumns:I

    .line 62
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->receiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$2;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 141
    iput p2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    .line 142
    iput-object p3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->userName:Ljava/lang/String;

    .line 143
    iput-boolean p4, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    .line 144
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->init()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->system:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 53
    iput v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    .line 57
    iput-boolean v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    .line 59
    iput v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->numColumns:I

    .line 62
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->receiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$2;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 149
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->init()V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->system:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 53
    iput v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    .line 57
    iput-boolean v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    .line 59
    iput v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->numColumns:I

    .line 62
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$1;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->receiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$2;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 154
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->init()V

    .line 155
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/PhotoAlbumsView;I)I
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->getMultiThumbViewId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/PhotoAlbumsView;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->loadData()V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->updateSizes(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->wrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/PhotoAlbumsView;Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->editAlbum(I)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/PhotoAlbumsView;)Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->adapter:Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->deleteAlbum(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/PhotoAlbumsView;I)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView;->copyLink(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/PhotoAlbumsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->system:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/PhotoAlbumsView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->menuClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/PhotoAlbumsView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/PhotoAlbumsView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/PhotoAlbumsView;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    return v0
.end method

.method private copyLink(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 330
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 331
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 332
    .local v1, "cm":Landroid/text/ClipboardManager;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://vk.com/album"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 333
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0801cb

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 334
    return-void
.end method

.method private deleteAlbum(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    invoke-interface {v1, v0}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;->deleteAlbum(I)V

    .line 327
    :cond_0
    return-void
.end method

.method private editAlbum(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    invoke-interface {v1, v0}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;->editAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 323
    :cond_0
    return-void
.end method

.method private getMultiThumbViewId(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 363
    packed-switch p1, :pswitch_data_0

    .line 371
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 365
    :pswitch_0
    const v0, 0x7f090134

    goto :goto_0

    .line 367
    :pswitch_1
    const v0, 0x7f090135

    goto :goto_0

    .line 369
    :pswitch_2
    const v0, 0x7f090136

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 8

    .prologue
    const/high16 v7, 0x42200000    # 40.0f

    const v5, 0x7f060019

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 158
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->wrap:Landroid/widget/FrameLayout;

    .line 159
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->setBackgroundColor(I)V

    .line 160
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 161
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    new-instance v3, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    invoke-direct {v3, p0, v6}, Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;)V

    iput-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->adapter:Lcom/vkontakte/android/PhotoAlbumsView$PhotoAlbumsAdapter;

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 163
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setCacheColorHint(I)V

    .line 164
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setBackgroundColor(I)V

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 167
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalSpacing(I)V

    .line 170
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const v3, 0x7f0200eb

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setSelector(I)V

    .line 171
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setDrawSelectorOnTop(Z)V

    .line 172
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPadding(IIII)V

    .line 173
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setClipToPadding(Z)V

    .line 174
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setScrollBarStyle(I)V

    .line 175
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAreHeadersSticky(Z)V

    .line 176
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->wrap:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v2, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v3, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;

    invoke-direct {v3, p0, v6}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;Lcom/vkontakte/android/PhotoAlbumsView$AlbumCoversAdapter;)V

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-direct {v2, v3, v4, v6}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 180
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    .line 181
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 183
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Lcom/vkontakte/android/ui/EmptyView;

    .line 187
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    iget v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    if-eqz v2, :cond_1

    .line 188
    .local v0, "isMe":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Lcom/vkontakte/android/ui/EmptyView;

    if-eqz v0, :cond_2

    const v2, 0x7f0802cc

    :goto_1
    invoke-virtual {v3, v2}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 189
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Lcom/vkontakte/android/ui/EmptyView;

    const v3, 0x7f0800c4

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 190
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 191
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Lcom/vkontakte/android/ui/EmptyView;

    new-instance v3, Lcom/vkontakte/android/PhotoAlbumsView$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoAlbumsView$3;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setEmptyView(Landroid/view/View;)V

    .line 198
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->wrap:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->noAlbumsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 199
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->wrap:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->addView(Landroid/view/View;)V

    .line 203
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03003f

    invoke-static {v2, v3, v6}, Lcom/vkontakte/android/PhotoAlbumsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 204
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v3, Lcom/vkontakte/android/PhotoAlbumsView$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoAlbumsView$4;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->addView(Landroid/view/View;)V

    .line 214
    return-void

    .line 187
    .end local v0    # "isMe":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    .restart local v0    # "isMe":Z
    :cond_2
    const v2, 0x7f080115

    goto :goto_1
.end method

.method private loadData()V
    .locals 3

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    .line 260
    new-instance v0, Lcom/vkontakte/android/api/PhotosGetAlbums;

    iget v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->uid:I

    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->needSystem:Z

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PhotosGetAlbums;-><init>(IZ)V

    .line 261
    new-instance v1, Lcom/vkontakte/android/PhotoAlbumsView$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoAlbumsView$6;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PhotosGetAlbums;->setCallback(Lcom/vkontakte/android/api/PhotosGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 260
    iput-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 283
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$7;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoAlbumsView;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void
.end method

.method private updateSizes(I)V
    .locals 5
    .param p1, "sw"    # I

    .prologue
    .line 249
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 250
    .local v2, "ratio":F
    const/high16 v3, 0x43af0000    # 350.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v1, v3

    .line 251
    .local v1, "maxW":F
    int-to-float v3, p1

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 253
    .local v0, "colCount":I
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->list:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    .line 254
    div-int v3, p1, v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/PhotoAlbumsView;->itemHeight:I

    .line 255
    iput v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->numColumns:I

    .line 256
    return-void
.end method


# virtual methods
.method public addOrReplace(Lcom/vkontakte/android/api/PhotoAlbum;)V
    .locals 3
    .param p1, "album"    # Lcom/vkontakte/android/api/PhotoAlbum;

    .prologue
    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    .line 319
    :goto_1
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iget v2, p1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v1, v2, :cond_1

    .line 312
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    goto :goto_1

    .line 310
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public invalidateList()V
    .locals 3

    .prologue
    .line 357
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoAlbumsView$8;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;)V

    .line 359
    const-wide/16 v1, 0xa

    .line 357
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/PhotoAlbumsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    return-void
.end method

.method public onActivate()V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->loaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->loadData()V

    .line 218
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "com.vkontakte.android.PHOTO_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "com.vkontakte.android.UPDATE_ALBUM_COVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAlbumsView;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method public onDeactivate()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 235
    :cond_0
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 299
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->system:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->system:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 306
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->callback:Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;

    invoke-interface {v1, v0}, Lcom/vkontakte/android/PhotoAlbumsView$AlbumActionsCallback;->openAlbum(Lcom/vkontakte/android/api/PhotoAlbum;)V

    .line 307
    .end local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_0
    return-void

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->system:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p3, v1

    .line 303
    if-ltz p3, :cond_0

    .line 304
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .restart local v0    # "a":Lcom/vkontakte/android/api/PhotoAlbum;
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 579
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 583
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 240
    new-instance v0, Lcom/vkontakte/android/PhotoAlbumsView$5;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/PhotoAlbumsView$5;-><init>(Lcom/vkontakte/android/PhotoAlbumsView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoAlbumsView;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method

.method public remove(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 344
    :goto_1
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v1, p1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 340
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoAlbumsView;->updateList()V

    goto :goto_1

    .line 337
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setCover(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "cover"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 348
    .local v0, "a":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    if-ne v2, p1, :cond_0

    .line 349
    iput-object p2, v0, Lcom/vkontakte/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAlbumsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    goto :goto_0
.end method
