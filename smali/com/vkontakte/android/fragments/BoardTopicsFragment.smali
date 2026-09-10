.class public Lcom/vkontakte/android/fragments/BoardTopicsFragment;
.super Lcom/vkontakte/android/fragments/PreloadingListFragment;
.source "BoardTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;,
        Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/PreloadingListFragment",
        "<",
        "Lcom/vkontakte/android/api/BoardTopic;",
        ">;"
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

.field private defaultOrder:I

.field private lastUpdate:J

.field private refreshOnResume:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;-><init>(I)V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->lastUpdate:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshOnResume:Z

    .line 63
    return-void
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->canCreate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    .prologue
    .line 43
    iget v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->defaultOrder:I

    return v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/fragments/BoardTopicsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->defaultOrder:I

    return p1
.end method

.method static synthetic access$302(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$402(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshOnResume:Z

    return p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->adapter:Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->confirmDeleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->toggleCloseTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->toggleFixTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/BoardTopicsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->deleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method private confirmDeleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 3
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 228
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/BoardTopicsFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$6;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 240
    return-void
.end method

.method private deleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 4
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 243
    new-instance v0, Lcom/vkontakte/android/api/BoardDeleteTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/BoardDeleteTopic;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$7;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/BoardDeleteTopic;->setCallback(Lcom/vkontakte/android/api/BoardDeleteTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 258
    return-void
.end method

.method private showCreateBox()V
    .locals 7

    .prologue
    .line 146
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 147
    .local v1, "edit":Landroid/widget/EditText;
    const v4, 0x7f0d00cd

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 148
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 149
    .local v2, "editWrap":Landroid/widget/FrameLayout;
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    .line 150
    .local v3, "pad":I
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 151
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 152
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0095

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d01cd

    new-instance v6, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;

    invoke-direct {v6, p0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0052

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 170
    .local v0, "dlg":Landroid/app/AlertDialog;
    new-instance v4, Lcom/vkontakte/android/fragments/BoardTopicsFragment$3;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$3;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 178
    return-void
.end method

.method private toggleCloseTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 6
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    iget v3, p1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    move v0, v1

    .line 262
    .local v0, "isClosed":Z
    :goto_0
    new-instance v3, Lcom/vkontakte/android/api/BoardCloseTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "gid"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget v5, p1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {v3, v4, v5, v1}, Lcom/vkontakte/android/api/BoardCloseTopic;-><init>(IIZ)V

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$8;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;ZLcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/api/BoardCloseTopic;->setCallback(Lcom/vkontakte/android/api/BoardCloseTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 279
    return-void

    .end local v0    # "isClosed":Z
    :cond_0
    move v0, v2

    .line 261
    goto :goto_0

    .restart local v0    # "isClosed":Z
    :cond_1
    move v1, v2

    .line 262
    goto :goto_1
.end method

.method private toggleFixTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 6
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    iget v3, p1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    move v0, v1

    .line 283
    .local v0, "isFixed":Z
    :goto_0
    new-instance v3, Lcom/vkontakte/android/api/BoardFixTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "gid"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget v5, p1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {v3, v4, v5, v1}, Lcom/vkontakte/android/api/BoardFixTopic;-><init>(IIZ)V

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$9;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;ZLcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/api/BoardFixTopic;->setCallback(Lcom/vkontakte/android/api/BoardFixTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 321
    return-void

    .end local v0    # "isFixed":Z
    :cond_0
    move v0, v2

    .line 282
    goto :goto_0

    .restart local v0    # "isFixed":Z
    :cond_1
    move v1, v2

    .line 283
    goto :goto_1
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 143
    :cond_0
    return-void
.end method

.method public doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 116
    new-instance v0, Lcom/vkontakte/android/api/BoardGetTopics;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkontakte/android/api/BoardGetTopics;-><init>(III)V

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/BoardGetTopics;->setCallback(Lcom/vkontakte/android/api/BoardGetTopics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 136
    return-void
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->adapter:Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->adapter:Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->adapter:Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/fragments/BoardTopicsFragment$1;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 325
    if-ne p1, v8, :cond_1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 326
    new-instance v2, Lcom/vkontakte/android/api/BoardTopic;

    invoke-direct {v2}, Lcom/vkontakte/android/api/BoardTopic;-><init>()V

    .line 327
    .local v2, "topic":Lcom/vkontakte/android/api/BoardTopic;
    const-string v3, "id"

    invoke-virtual {p3, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->id:I

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->created:I

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    .line 329
    const-string v3, "title"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    .line 330
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->lastCommentUid:I

    .line 331
    iput v8, v2, Lcom/vkontakte/android/api/BoardTopic;->numComments:I

    .line 332
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->creator:I

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/BoardTopic;

    iget v3, v3, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 335
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->updateList()V

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "gid"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "gid"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    const-string v3, "tid"

    iget v4, v2, Lcom/vkontakte/android/api/BoardTopic;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    const-string v3, "title"

    iget-object v4, v2, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 344
    const-string v3, "BoardTopicViewActivity"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 346
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "topic":Lcom/vkontakte/android/api/BoardTopic;
    :cond_1
    return-void

    .line 333
    .restart local v1    # "i":I
    .restart local v2    # "topic":Lcom/vkontakte/android/api/BoardTopic;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "board"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "gid"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->loadData()V

    .line 71
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    .local v0, "sa":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 74
    const v1, 0x7f0d0338

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 75
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->setHasOptionsMenu(Z)V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 90
    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 91
    const v0, 0x7f0801fa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->canCreate:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 104
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

    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 190
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "tid"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v1, "gid"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "gid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_admin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "is_admin"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    :cond_2
    const-string v2, "title"

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    iget-object v1, v1, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3

    const-string v1, "is_closed"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    :cond_3
    const-string v1, "BoardTopicViewFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

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

    .line 202
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 203
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardTopic;

    .line 205
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

    .line 206
    :cond_2
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d009d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3

    const v1, 0x7f0d01d9

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

    const v1, 0x7f0d033c

    :goto_2
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$5;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v2

    .line 224
    goto :goto_0

    .line 206
    :cond_3
    const v1, 0x7f0d0074

    goto :goto_1

    :cond_4
    const v1, 0x7f0d00e6

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0801fa

    if-ne v0, v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->showCreateBox()V

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 440
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onPause()V

    .line 441
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 442
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onResume()V

    .line 430
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->updateList()V

    .line 431
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshOnResume:Z

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshOnResume:Z

    .line 433
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refresh()V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 436
    return-void
.end method

.method protected setListViewAppearance(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;

    .prologue
    const v1, -0x1f1f20

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 108
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 109
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 112
    const v0, 0x7f02007d

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 113
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;-><init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method
