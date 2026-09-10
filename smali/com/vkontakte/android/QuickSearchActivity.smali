.class public Lcom/vkontakte/android/QuickSearchActivity;
.super Landroid/app/Activity;
.source "QuickSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;,
        Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;,
        Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;,
        Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;
    }
.end annotation


# static fields
.field private static final MAX_WIDTH:I

.field private static final SPEECH_RESULT:I = 0x65


# instance fields
.field private adapter:Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

.field private box:Landroid/view/View;

.field private contentView:Landroid/widget/LinearLayout;

.field private dataLoading:Z

.field private emptyView:Landroid/widget/TextView;

.field private field:Landroid/widget/EditText;

.field private footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private globalResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private link:Ljava/lang/String;

.field private list:Landroid/widget/ListView;

.field private localResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private localSearchRunnable:Ljava/lang/Runnable;

.field private searchReq:Lcom/vkontakte/android/APIRequest;

.field private searchRunnable:Ljava/lang/Runnable;

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/high16 v0, 0x43c80000    # 400.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/QuickSearchActivity;->MAX_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->globalResults:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->dataLoading:Z

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->link:Ljava/lang/String;

    .line 566
    return-void
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->localSearchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->localSearchRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->startVoiceRecognizer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/vkontakte/android/QuickSearchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->dataLoading:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->adapter:Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->link:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/QuickSearchActivity;->searchFromNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->link:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/vkontakte/android/QuickSearchActivity;->searchLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/APIRequest;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->globalResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateList()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private searchFromNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->globalResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateList()V

    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 326
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->dataLoading:Z

    .line 257
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateList()V

    .line 258
    new-instance v0, Lcom/vkontakte/android/api/SearchGetHints;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/SearchGetHints;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/QuickSearchActivity$8;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/SearchGetHints;->setCallback(Lcom/vkontakte/android/api/SearchGetHints$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private searchLocal(Ljava/lang/String;)V
    .locals 10
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x1e

    .line 329
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 330
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 332
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v9, :cond_1

    .line 333
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 361
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 362
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 363
    .local v6, "pp":Lcom/vkontakte/android/UserProfile;
    iget v7, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    if-gez v7, :cond_7

    .line 361
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .end local v2    # "i":I
    .end local v6    # "pp":Lcom/vkontakte/android/UserProfile;
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 336
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/vkontakte/android/data/Friends;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    invoke-static {p1}, Lcom/vkontakte/android/data/Groups;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, "gres":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 340
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v7, v0, Lcom/vkontakte/android/api/Group;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 341
    iget v7, v0, Lcom/vkontakte/android/api/Group;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v5, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v5}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 343
    .local v5, "p":Lcom/vkontakte/android/UserProfile;
    iget v7, v0, Lcom/vkontakte/android/api/Group;->id:I

    neg-int v7, v7

    iput v7, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 344
    iget-object v7, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 345
    iget-object v7, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 346
    iget v7, v0, Lcom/vkontakte/android/api/Group;->type:I

    packed-switch v7, :pswitch_data_0

    .line 355
    iget v7, v0, Lcom/vkontakte/android/api/Group;->isClosed:I

    if-nez v7, :cond_5

    const v7, 0x7f0d01d6

    :goto_3
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 358
    :goto_4
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 348
    :pswitch_0
    iget v7, v0, Lcom/vkontakte/android/api/Group;->isClosed:I

    if-lez v7, :cond_4

    const v7, 0x7f0d0075

    :goto_5
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const v7, 0x7f0d01d4

    goto :goto_5

    .line 351
    :pswitch_1
    const v7, 0x7f0d0248

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_4

    .line 355
    :cond_5
    iget v7, v0, Lcom/vkontakte/android/api/Group;->isClosed:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    const v7, 0x7f0d0076

    goto :goto_3

    :cond_6
    const v7, 0x7f0d0217

    goto :goto_3

    .line 364
    .end local v0    # "g":Lcom/vkontakte/android/api/Group;
    .end local v1    # "gres":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v2    # "i":I
    .restart local v6    # "pp":Lcom/vkontakte/android/UserProfile;
    :cond_7
    new-instance v5, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v5}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 365
    .restart local v5    # "p":Lcom/vkontakte/android/UserProfile;
    iget v7, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    iput v7, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 366
    iget-object v7, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 367
    iget-object v7, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 368
    iget-object v7, v6, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 370
    iget v7, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v7, :cond_8

    .line 371
    iget v7, v6, Lcom/vkontakte/android/UserProfile;->online:I

    iput v7, v5, Lcom/vkontakte/android/UserProfile;->online:I

    .line 372
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 374
    :cond_8
    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 376
    .end local v5    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v6    # "pp":Lcom/vkontakte/android/UserProfile;
    :cond_9
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateList()V

    .line 377
    return-void

    .line 346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startVoiceRecognizer()V
    .locals 3

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 395
    return-void
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->adapter:Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->notifyDataSetChanged()V

    .line 381
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->adapter:Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$9;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void

    .line 381
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateWidth()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/vkontakte/android/QuickSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 236
    .local v1, "sw":I
    sget v2, Lcom/vkontakte/android/QuickSearchActivity;->MAX_WIDTH:I

    if-le v1, v2, :cond_0

    .line 237
    sget v2, Lcom/vkontakte/android/QuickSearchActivity;->MAX_WIDTH:I

    sub-int v0, v1, v2

    .line 238
    .local v0, "pad":I
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 242
    .end local v0    # "pad":I
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private voiceSearchAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/QuickSearchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 398
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 404
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 405
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 406
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateWidth()V

    .line 232
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/QuickSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 71
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    const v1, -0xcec8bf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 75
    const v0, 0x7f030072

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->box:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->box:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v0, Lcom/vkontakte/android/QuickSearchActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/vkontakte/android/QuickSearchActivity$1;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    .line 83
    new-instance v0, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/QuickSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v1, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$1;)V

    iput-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->adapter:Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/ui/PaddingColorDrawable;

    const v2, -0xbfb7ae

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/ui/PaddingColorDrawable;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 94
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const v1, 0x7f0d01b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const v1, -0x55000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->wrap:Landroid/widget/FrameLayout;

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->wrap:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->setContentView(Landroid/view/View;)V

    .line 110
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$1;)V

    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/QuickSearchActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/QuickSearchActivity$2;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$3;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    .line 155
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$4;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$5;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->voiceSearchAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :cond_0
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$6;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$7;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 224
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->searchLocal(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateWidth()V

    .line 227
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 414
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 418
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 419
    return-void
.end method
