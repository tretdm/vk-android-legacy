.class public Lcom/vkontakte/android/BoardTopicsActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "BoardTopicsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;,
        Lcom/vkontakte/android/BoardTopicsActivity$UserPhotosAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/CustomTitleActivity;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;"
    }
.end annotation


# static fields
.field private static final CREATE_TOPIC_RESULT:I = 0x1

.field public static final ORDER_CREATED_ASC:I = -0x2

.field public static final ORDER_CREATED_DESC:I = 0x2

.field public static final ORDER_UPDATED_ASC:I = -0x1

.field public static final ORDER_UPDATED_DESC:I = 0x1


# instance fields
.field private btnCreate:Landroid/widget/ImageView;

.field protected contentView:Landroid/widget/FrameLayout;

.field protected dataLoading:Z

.field private defaultOrder:I

.field protected footerView:Landroid/widget/FrameLayout;

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private lastUpdate:J

.field protected list:Lcom/vkontakte/android/ui/RefreshableListView;

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

.field protected progress:Landroid/widget/ProgressBar;

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloadedTopics:Ljava/util/ArrayList;

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->refreshing:Z

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->lastUpdate:J

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/BoardTopicsActivity;J)V
    .locals 0

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->lastUpdate:J

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/BoardTopicsActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->btnCreate:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/BoardTopicsActivity;I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->defaultOrder:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/vkontakte/android/BoardTopicsActivity;->confirmDeleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/vkontakte/android/BoardTopicsActivity;->toggleCloseTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/vkontakte/android/BoardTopicsActivity;->toggleFixTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/vkontakte/android/BoardTopicsActivity;->deleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/BoardTopicsActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->defaultOrder:I

    return v0
.end method

.method private confirmDeleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 3
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    const v1, 0x7f090189

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    const v1, 0x7f09018a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/BoardTopicsActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/BoardTopicsActivity$5;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 254
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 256
    return-void
.end method

.method private deleteTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 4
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    .line 259
    new-instance v0, Lcom/vkontakte/android/api/BoardDeleteTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "gid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/BoardDeleteTopic;-><init>(II)V

    .line 260
    new-instance v1, Lcom/vkontakte/android/BoardTopicsActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/BoardTopicsActivity$6;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/BoardDeleteTopic;->setCallback(Lcom/vkontakte/android/api/BoardDeleteTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 272
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 274
    return-void
.end method

.method private toggleCloseTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 6
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    iget v3, p1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    move v0, v1

    .line 278
    .local v0, "isClosed":Z
    :goto_0
    new-instance v3, Lcom/vkontakte/android/api/BoardCloseTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "gid"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget v5, p1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {v3, v4, v5, v2}, Lcom/vkontakte/android/api/BoardCloseTopic;-><init>(IIZ)V

    .line 279
    new-instance v1, Lcom/vkontakte/android/BoardTopicsActivity$7;

    invoke-direct {v1, p0, v0, p1}, Lcom/vkontakte/android/BoardTopicsActivity$7;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;ZLcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/api/BoardCloseTopic;->setCallback(Lcom/vkontakte/android/api/BoardCloseTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 293
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 294
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 295
    return-void

    .end local v0    # "isClosed":Z
    :cond_0
    move v0, v2

    .line 277
    goto :goto_0

    .restart local v0    # "isClosed":Z
    :cond_1
    move v2, v1

    .line 278
    goto :goto_1
.end method

.method private toggleFixTopic(Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 6
    .param p1, "topic"    # Lcom/vkontakte/android/api/BoardTopic;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    iget v3, p1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    move v0, v1

    .line 299
    .local v0, "isFixed":Z
    :goto_0
    new-instance v3, Lcom/vkontakte/android/api/BoardFixTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "gid"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget v5, p1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {v3, v4, v5, v2}, Lcom/vkontakte/android/api/BoardFixTopic;-><init>(IIZ)V

    .line 300
    new-instance v1, Lcom/vkontakte/android/BoardTopicsActivity$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/vkontakte/android/BoardTopicsActivity$8;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;ZLcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/api/BoardFixTopic;->setCallback(Lcom/vkontakte/android/api/BoardFixTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 335
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 336
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 337
    return-void

    .end local v0    # "isFixed":Z
    :cond_0
    move v0, v2

    .line 298
    goto :goto_0

    .restart local v0    # "isFixed":Z
    :cond_1
    move v2, v1

    .line 299
    goto :goto_1
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/BoardTopicsActivity$TopicListAdapter;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;)V

    return-object v0
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->lastUpdate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->lastUpdate:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadData()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-boolean v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->dataLoading:Z

    if-eqz v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v2, Lcom/vkontakte/android/api/BoardGetTopics;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "gid"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-boolean v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->refreshing:Z

    if-eqz v1, :cond_1

    :goto_1
    iget-boolean v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->refreshing:Z

    if-nez v1, :cond_2

    const/16 v1, 0x14

    :goto_2
    invoke-direct {v2, v3, v0, v1}, Lcom/vkontakte/android/api/BoardGetTopics;-><init>(III)V

    .line 153
    new-instance v0, Lcom/vkontakte/android/BoardTopicsActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/BoardTopicsActivity$2;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;)V

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/api/BoardGetTopics;->setCallback(Lcom/vkontakte/android/api/BoardGetTopics$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

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

    .line 342
    if-ne p1, v8, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 343
    new-instance v2, Lcom/vkontakte/android/api/BoardTopic;

    invoke-direct {v2}, Lcom/vkontakte/android/api/BoardTopic;-><init>()V

    .line 344
    .local v2, "topic":Lcom/vkontakte/android/api/BoardTopic;
    const-string v3, "id"

    invoke-virtual {p3, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->id:I

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->created:I

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    .line 346
    const-string v3, "title"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    .line 347
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->lastCommentUid:I

    .line 348
    iput v8, v2, Lcom/vkontakte/android/api/BoardTopic;->numComments:I

    .line 349
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    iput v3, v2, Lcom/vkontakte/android/api/BoardTopic;->creator:I

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 356
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->updateList()V

    .line 357
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v1, "intent1":Landroid/content/Intent;
    const-string v3, "gid"

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "gid"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v3, "tid"

    iget v4, v2, Lcom/vkontakte/android/api/BoardTopic;->id:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v3, "title"

    iget-object v4, v2, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/BoardTopicsActivity;->startActivity(Landroid/content/Intent;)V

    .line 363
    .end local v0    # "i":I
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v2    # "topic":Lcom/vkontakte/android/api/BoardTopic;
    :cond_0
    return-void

    .line 351
    .restart local v0    # "i":I
    .restart local v2    # "topic":Lcom/vkontakte/android/api/BoardTopic;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/BoardTopic;

    iget v3, v3, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 352
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 350
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/high16 v6, 0x40e00000    # 7.0f

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->contentView:Landroid/widget/FrameLayout;

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/BoardTopicsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/BoardTopicsActivity;->setContentView(Landroid/view/View;)V

    .line 63
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->footerView:Landroid/widget/FrameLayout;

    .line 64
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 65
    .local v3, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020224

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 71
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 74
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v5, Lcom/vkontakte/android/BoardTopicsActivity$UserPhotosAdapter;

    invoke-direct {v5, p0, v10}, Lcom/vkontakte/android/BoardTopicsActivity$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/BoardTopicsActivity$UserPhotosAdapter;)V

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-direct {v4, v5, v6, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 75
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v10, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 76
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 79
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 80
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 81
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 82
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 84
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 86
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->progress:Landroid/widget/ProgressBar;

    .line 89
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020224

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v2, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->type:I

    .line 98
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->btnCreate:Landroid/widget/ImageView;

    .line 99
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->btnCreate:Landroid/widget/ImageView;

    const v5, 0x7f0200cc

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 102
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 103
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->btnCreate:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->btnCreate:Landroid/widget/ImageView;

    new-instance v5, Lcom/vkontakte/android/BoardTopicsActivity$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/BoardTopicsActivity$1;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->btnCreate:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/BoardTopicsActivity;->addViewAtRight(Landroid/view/View;)V

    .line 113
    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity;->btnCreate:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->loadData()V

    .line 116
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

    .line 205
    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 206
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "tid"

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v1, Lcom/vkontakte/android/api/BoardTopic;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string v1, "gid"

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "gid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_admin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "is_admin"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    :cond_2
    const-string v2, "title"

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    iget-object v1, v1, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardTopic;

    iget v1, v1, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3

    const-string v1, "is_closed"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    :cond_3
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BoardTopicsActivity;->startActivity(Landroid/content/Intent;)V

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

    .line 218
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 219
    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/BoardTopic;

    .line 221
    .local v0, "topic":Lcom/vkontakte/android/api/BoardTopic;
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_admin"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lcom/vkontakte/android/api/BoardTopic;->creator:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_0

    .line 222
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_3

    const v1, 0x7f090188

    :goto_1
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v1, v0, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_4

    const v1, 0x7f090187

    :goto_2
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    new-instance v1, Lcom/vkontakte/android/BoardTopicsActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/BoardTopicsActivity$4;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v2

    .line 240
    goto :goto_0

    .line 223
    :cond_3
    const v1, 0x7f090186

    goto :goto_1

    :cond_4
    const v1, 0x7f090185

    goto :goto_2
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->refreshing:Z

    .line 447
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->loadData()V

    .line 448
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 452
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 453
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->updateList()V

    .line 454
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 466
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->dataLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 125
    iget-boolean v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    if-eqz v0, :cond_2

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    .line 127
    iput-boolean v2, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloadOnReady:Z

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->updateList()V

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    iput-boolean v2, p0, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    .line 133
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->loadData()V

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/BoardTopicsActivity;->loadData()V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/vkontakte/android/BoardTopicsActivity$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/BoardTopicsActivity$3;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BoardTopicsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method
