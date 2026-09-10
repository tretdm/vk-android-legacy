.class public Lcom/vkontakte/android/QuickSearchActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "QuickSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;,
        Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;,
        Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;,
        Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;
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
    .line 50
    const/high16 v0, 0x43c80000    # 400.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/QuickSearchActivity;->MAX_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->globalResults:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->dataLoading:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->link:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->globalResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->link:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateList()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->localSearchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->startVoiceRecognizer()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->link:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/QuickSearchActivity;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->dataLoading:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->adapter:Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/vkontakte/android/QuickSearchActivity;->searchFromNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity;->localSearchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/vkontakte/android/QuickSearchActivity;->searchLocal(Ljava/lang/String;)V

    return-void
.end method

.method private searchFromNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->globalResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateList()V

    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 332
    :goto_0
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->dataLoading:Z

    .line 263
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateList()V

    .line 264
    new-instance v0, Lcom/vkontakte/android/api/SearchGetHints;

    invoke-direct {v0, p1}, Lcom/vkontakte/android/api/SearchGetHints;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/QuickSearchActivity$8;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/SearchGetHints;->setCallback(Lcom/vkontakte/android/api/SearchGetHints$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 331
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 264
    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->searchReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private searchLocal(Ljava/lang/String;)V
    .locals 9
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x1e

    .line 335
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 336
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 337
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 338
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_1

    .line 339
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 367
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_7

    .line 382
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateList()V

    .line 383
    return-void

    .line 341
    .end local v2    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 342
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/vkontakte/android/data/Friends;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 343
    invoke-static {p1}, Lcom/vkontakte/android/data/Groups;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 344
    .local v1, "gres":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/Group;

    .line 346
    .local v0, "g":Lcom/vkontakte/android/api/Group;
    iget v6, v0, Lcom/vkontakte/android/api/Group;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 347
    iget v6, v0, Lcom/vkontakte/android/api/Group;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 349
    .local v4, "p":Lcom/vkontakte/android/UserProfile;
    iget v6, v0, Lcom/vkontakte/android/api/Group;->id:I

    neg-int v6, v6

    iput v6, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 350
    iget-object v6, v0, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 351
    iget-object v6, v0, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 352
    iget v6, v0, Lcom/vkontakte/android/api/Group;->type:I

    packed-switch v6, :pswitch_data_0

    .line 361
    iget v6, v0, Lcom/vkontakte/android/api/Group;->isClosed:I

    if-nez v6, :cond_5

    const v6, 0x7f08005d

    :goto_2
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 364
    :goto_3
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :pswitch_0
    iget v6, v0, Lcom/vkontakte/android/api/Group;->isClosed:I

    if-lez v6, :cond_4

    const v6, 0x7f0800f6

    :goto_4
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const v6, 0x7f0800f5

    goto :goto_4

    .line 357
    :pswitch_1
    const v6, 0x7f0800f7

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_3

    .line 361
    :cond_5
    iget v6, v0, Lcom/vkontakte/android/api/Group;->isClosed:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_6

    const v6, 0x7f08005e

    goto :goto_2

    :cond_6
    const v6, 0x7f08005f

    goto :goto_2

    .line 368
    .end local v0    # "g":Lcom/vkontakte/android/api/Group;
    .end local v1    # "gres":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    .end local v3    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v2    # "i":I
    :cond_7
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    .line 369
    .local v5, "pp":Lcom/vkontakte/android/UserProfile;
    iget v6, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    if-gez v6, :cond_8

    .line 367
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 370
    :cond_8
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 371
    .restart local v4    # "p":Lcom/vkontakte/android/UserProfile;
    iget v6, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    iput v6, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 372
    iget-object v6, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 373
    iget-object v6, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 374
    iget-object v6, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 376
    iget v6, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    if-lez v6, :cond_9

    .line 377
    iget v6, v5, Lcom/vkontakte/android/UserProfile;->online:I

    iput v6, v4, Lcom/vkontakte/android/UserProfile;->online:I

    .line 378
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 380
    :cond_9
    iget-object v6, p0, Lcom/vkontakte/android/QuickSearchActivity;->localResults:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startVoiceRecognizer()V
    .locals 3

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    return-void
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->adapter:Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;->notifyDataSetChanged()V

    .line 387
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

    .line 388
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$9;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void

    .line 387
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateWidth()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/vkontakte/android/QuickSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 242
    .local v1, "sw":I
    sget v2, Lcom/vkontakte/android/QuickSearchActivity;->MAX_WIDTH:I

    if-le v1, v2, :cond_0

    .line 243
    sget v2, Lcom/vkontakte/android/QuickSearchActivity;->MAX_WIDTH:I

    sub-int v0, v1, v2

    .line 244
    .local v0, "pad":I
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 248
    .end local v0    # "pad":I
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private voiceSearchAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
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
    .line 404
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 410
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 411
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 412
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 237
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateWidth()V

    .line 238
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const v2, -0xdcd7cd

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/QuickSearchActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 73
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 77
    const v0, 0x7f03007f

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->box:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->box:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v0, Lcom/vkontakte/android/QuickSearchActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/vkontakte/android/QuickSearchActivity$1;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 89
    :cond_0
    new-instance v0, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/QuickSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v1, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->footerProgress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;)V

    iput-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->adapter:Lcom/vkontakte/android/QuickSearchActivity$ResultsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/ui/PaddingColorDrawable;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/ui/PaddingColorDrawable;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 100
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    const v1, -0x55000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->wrap:Landroid/widget/FrameLayout;

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->wrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->emptyView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity;->wrap:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->setContentView(Landroid/view/View;)V

    .line 116
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;-><init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$ResultsImagesAdapter;)V

    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/QuickSearchActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/QuickSearchActivity$2;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$3;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$4;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$5;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->voiceSearchAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_1
    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$6;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->field:Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/QuickSearchActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/QuickSearchActivity$7;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 230
    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/vkontakte/android/QuickSearchActivity;->searchLocal(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/vkontakte/android/QuickSearchActivity;->updateWidth()V

    .line 233
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 418
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    .line 419
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 420
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onResume()V

    .line 424
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 425
    return-void
.end method
