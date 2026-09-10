.class public Lcom/vkontakte/android/fragments/BoardTopicsFragment;
.super Lcom/vkontakte/android/fragments/BaseListFragment;
.source "BoardTopicsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;,
        Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/BaseListFragment;",
        "Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static final CREATE_TOPIC_RESULT:I = 0x1

.field public static final ORDER_CREATED_ASC:I = -0x2

.field public static final ORDER_CREATED_DESC:I = 0x2

.field public static final ORDER_UPDATED_ASC:I = -0x1

.field public static final ORDER_UPDATED_DESC:I = 0x1


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

.field private canCreate:Z

.field private currentRequest:Lcom/vkontakte/android/APIRequest;

.field protected dataLoading:Z

.field private defaultOrder:I

.field private footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private lastUpdate:J

.field protected moreAvailable:Z

.field protected preloadOnReady:Z

.field protected preloadedTopics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/BoardTopic;",
            ">;"
        }
    .end annotation
.end field

.field protected preloading:Z

.field private refreshOnResume:Z

.field protected refreshing:Z

.field protected topics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/BoardTopic;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadedTopics:Ljava/util/ArrayList;

    .line 51
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->moreAvailable:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadOnReady:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshing:Z

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->lastUpdate:J

    .line 55
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshOnResume:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/BoardTopicsFragment;J)V
    .locals 0

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->lastUpdate:J

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->deleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->defaultOrder:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->canCreate:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/BoardTopicsFragment;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->defaultOrder:I

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshOnResume:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->adapter:Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->confirmDeleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->toggleCloseTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->toggleFixTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method private confirmDeleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 3
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 286
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 287
    const v1, 0x7f060128

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 288
    const v1, 0x7f060129

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 289
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/fragments/BoardTopicsFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$6;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 295
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 296
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 298
    return-void
.end method

.method private deleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 4
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 301
    new-instance v0, Lcom/vkontakte/android/api/BoardDeleteTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/BoardDeleteTopic;-><init>(II)V

    .line 302
    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$7;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/BoardDeleteTopic;->setCallback(Lcom/vkontakte/android/api/BoardDeleteTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 316
    return-void
.end method

.method private showCreateBox()V
    .locals 7

    .prologue
    .line 204
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 205
    .local v1, "edit":Landroid/widget/EditText;
    const v4, 0x7f0601e9

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 206
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .local v2, "editWrap":Landroid/widget/FrameLayout;
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    .line 208
    .local v3, "pad":I
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 209
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 210
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    const v5, 0x7f060122

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 212
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 213
    const v5, 0x7f060028

    new-instance v6, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;

    invoke-direct {v6, p0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 226
    const v5, 0x7f060027

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 227
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 228
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v4, Lcom/vkontakte/android/fragments/BoardTopicsFragment$3;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$3;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 236
    return-void
.end method

.method private toggleCloseTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 6
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    iget v3, p1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    move v0, v1

    .line 320
    .local v0, "isClosed":Z
    :goto_0
    new-instance v3, Lcom/vkontakte/android/api/BoardCloseTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "gid"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget v5, p1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {v3, v4, v5, v2}, Lcom/vkontakte/android/api/BoardCloseTopic;-><init>(IIZ)V

    .line 321
    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;ZLcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/api/BoardCloseTopic;->setCallback(Lcom/vkontakte/android/api/BoardCloseTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 335
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 336
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 337
    return-void

    .end local v0    # "isClosed":Z
    :cond_0
    move v0, v2

    .line 319
    goto :goto_0

    .restart local v0    # "isClosed":Z
    :cond_1
    move v2, v1

    .line 320
    goto :goto_1
.end method

.method private toggleFixTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 6
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    iget v3, p1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    move v0, v1

    .line 341
    .local v0, "isFixed":Z
    :goto_0
    new-instance v3, Lcom/vkontakte/android/api/BoardFixTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "gid"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget v5, p1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {v3, v4, v5, v2}, Lcom/vkontakte/android/api/BoardFixTopic;-><init>(IIZ)V

    .line 342
    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$9;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;ZLcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/api/BoardFixTopic;->setCallback(Lcom/vkontakte/android/api/BoardFixTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 377
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 378
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 379
    return-void

    .end local v0    # "isFixed":Z
    :cond_0
    move v0, v2

    .line 340
    goto :goto_0

    .restart local v0    # "isFixed":Z
    :cond_1
    move v2, v1

    .line 341
    goto :goto_1
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 512
    iget-wide v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->lastUpdate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

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

    iget-wide v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->lastUpdate:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected initListView()Landroid/widget/ListView;
    .locals 3

    .prologue
    const v2, -0x1f1f20

    .line 123
    new-instance v0, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "l":Lcom/vkontakte/android/ui/RefreshableListView;
    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(I)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 126
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 127
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 128
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setTopColor(I)V

    .line 129
    return-object v0
.end method

.method public loadData()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->dataLoading:Z

    if-eqz v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v2, Lcom/vkontakte/android/api/BoardGetTopics;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "gid"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshing:Z

    if-eqz v1, :cond_1

    :goto_1
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshing:Z

    if-nez v1, :cond_2

    const/16 v1, 0x14

    :goto_2
    invoke-direct {v2, v3, v0, v1}, Lcom/vkontakte/android/api/BoardGetTopics;-><init>(III)V

    .line 145
    new-instance v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/api/BoardGetTopics;->setCallback(Lcom/vkontakte/android/api/BoardGetTopics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x28

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 384
    if-ne p1, v8, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 385
    new-instance v2, Lcom/vkontakte/android/api/BoardTopic;

    invoke-direct {v2}, Lcom/vkontakte/android/api/BoardTopic;-><init>()V

    .line 386
    .local v2, "topic":Lcom/vkontakte/android/api/BoardTopic;
    const-string v3, "id"

    invoke-virtual {p3, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->id:I

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->created:I

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    .line 388
    const-string v3, "title"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    .line 389
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->lastCommentUid:I

    .line 390
    iput v8, v2, Lcom/vkontakte/android/api/BoardTopic;->numComments:I

    .line 391
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->creator:I

    .line 392
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 398
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->updateList()V

    .line 399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "gid"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "gid"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    const-string v3, "tid"

    iget v4, v2, Lcom/vkontakte/android/api/BoardTopic;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 402
    const-string v3, "title"

    iget-object v4, v2, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 403
    const-string v3, "BoardTopicViewActivity"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 405
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "topic":Lcom/vkontakte/android/api/BoardTopic;
    :cond_0
    return-void

    .line 393
    .restart local v1    # "i":I
    .restart local v2    # "topic":Lcom/vkontakte/android/api/BoardTopic;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/BoardTopic;

    iget v3, v3, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 394
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 392
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 68
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/BaseListFragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    new-instance v1, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v1, v2, v3, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->adapter:Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    check-cast v1, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 77
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;)V

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 78
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->loadData()V

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    .line 81
    .local v0, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 82
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 83
    const v1, 0x7f06011f

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 84
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->setHasOptionsMenu(Z)V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 88
    const v0, 0x7f0e000a

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 89
    const v0, 0x7f08018f

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->canCreate:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 102
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 247
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 248
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "tid"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v1, "gid"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "gid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_admin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "is_admin"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    :cond_2
    const-string v2, "title"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    iget-object v1, v1, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3

    const-string v1, "is_closed"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    :cond_3
    const-string v1, "BoardTopicViewFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
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
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 260
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 261
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardTopic;

    .line 263
    .local v0, "topic":Lcom/vkontakte/android/api/BoardTopic;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "gid"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/vkontakte/android/data/Groups;->isGroupAdmin(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lcom/vkontakte/android/api/BoardTopic;->creator:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_0

    .line 264
    :cond_2
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3

    const v1, 0x7f060127

    :goto_1
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_4

    const v1, 0x7f060126

    :goto_2
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$5;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v2

    .line 282
    goto :goto_0

    .line 265
    :cond_3
    const v1, 0x7f060125

    goto :goto_1

    :cond_4
    const v1, 0x7f060124

    goto :goto_2
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 93
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08018f

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->showCreateBox()V

    .line 96
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 506
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onPause()V

    .line 507
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 508
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshing:Z

    .line 490
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->loadData()V

    .line 491
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 495
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onResume()V

    .line 496
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->updateList()V

    .line 497
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshOnResume:Z

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshOnResume:Z

    .line 499
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    check-cast v0, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refresh()V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 502
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 520
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 107
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    .line 109
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadOnReady:Z

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->updateList()V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->loadData()V

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->loadData()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method
