.class public Lcom/vkontakte/android/fragments/NewsFragment;
.super Lcom/vkontakte/android/fragments/PostListFragment;
.source "NewsFragment.java"


# instance fields
.field private clearForNew:Z

.field private currentRequest:Lcom/vkontakte/android/APIRequest;

.field private firstNav:Z

.field private from:Ljava/lang/String;

.field private listID:I

.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsfeedList;",
            ">;"
        }
    .end annotation
.end field

.field private navAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needSetSelection:Z

.field private newFrom:Ljava/lang/String;

.field private newNews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private newNewsReq:Lcom/vkontakte/android/APIRequest;

.field private newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

.field private prevNavItem:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostListFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->lists:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    .line 55
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->needSetSelection:Z

    .line 57
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->clearForNew:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/NewsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->firstNav:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/NewsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->firstNav:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/NewsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->prevNavItem:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/NewsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->prevNavItem:I

    return p1
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/fragments/NewsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->clearForNew:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/vkontakte/android/fragments/NewsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->from:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->lists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateLists()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->showNew()V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/ui/OverlayTextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateNewPostsBtn()V

    return-void
.end method

.method static synthetic access$802(Lcom/vkontakte/android/fragments/NewsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$902(Lcom/vkontakte/android/fragments/NewsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NewsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newFrom:Ljava/lang/String;

    return-object p1
.end method

.method private showNew()V
    .locals 15

    .prologue
    .line 420
    iget-boolean v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->clearForNew:Z

    if-eqz v10, :cond_1

    .line 421
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 422
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 423
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 424
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/16 v13, 0xa

    iget-object v14, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 425
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v8, "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/fragments/NewsFragment;->appendItems(Ljava/util/List;)V

    .line 427
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->items:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 428
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0xa

    if-le v10, v11, :cond_0

    .line 429
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->preloadedData:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    const/16 v12, 0xa

    iget-object v13, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateList()V

    .line 431
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    new-instance v11, Lcom/vkontakte/android/fragments/NewsFragment$8;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/fragments/NewsFragment$8;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "news"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "feed_from"

    iget-object v12, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newFrom:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newFrom:Ljava/lang/String;

    iput-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->from:Ljava/lang/String;

    .line 442
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v2, "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 444
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 445
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/vkontakte/android/fragments/NewsFragment$9;

    invoke-direct {v11, p0, v2}, Lcom/vkontakte/android/fragments/NewsFragment$9;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;Ljava/util/ArrayList;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 450
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateNewPostsBtn()V

    .line 512
    .end local v8    # "nitems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :goto_0
    return-void

    .line 452
    .end local v2    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v9, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v0, v10

    .line 454
    .local v0, "dayStart":I
    const v10, 0x15180

    rem-int v10, v0, v10

    sub-int/2addr v0, v10

    .line 455
    add-int/lit16 v0, v0, 0x3840

    .line 456
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "newAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v7, "newTagged":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 458
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    if-ge v10, v0, :cond_8

    .line 462
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_3
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 463
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->time:I

    if-ge v10, v0, :cond_a

    .line 467
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 468
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 469
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 470
    .local v5, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 471
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 472
    .local v4, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsEntry;

    .line 473
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v11, v4, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v10, v11, :cond_7

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v11, v4, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v10, v11, :cond_7

    .line 474
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 459
    .end local v4    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    .end local v5    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_8
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_9

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_9
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_2

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    :cond_a
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_b

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_b
    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_4

    iget v10, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 481
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_c
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 482
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/vkontakte/android/fragments/NewsFragment;->prependItems(Ljava/util/List;)V

    .line 483
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateList()V

    .line 493
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    new-instance v11, Lcom/vkontakte/android/fragments/NewsFragment$10;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/fragments/NewsFragment$10;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 500
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .restart local v2    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 502
    iget-object v10, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 503
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/vkontakte/android/fragments/NewsFragment$11;

    invoke-direct {v11, p0, v2}, Lcom/vkontakte/android/fragments/NewsFragment$11;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;Ljava/util/ArrayList;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 510
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateNewPostsBtn()V

    goto/16 :goto_0
.end method

.method private updateEmptyLabel()V
    .locals 5

    .prologue
    const v4, 0x7f0d00e5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 76
    iget v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    packed-switch v0, :pswitch_data_0

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0d01a6

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 101
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0d01a2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0d01a8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0d01a4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0d01a5

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v1, 0x7f0d00c8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLists()V
    .locals 2

    .prologue
    .line 308
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGetLists;

    invoke-direct {v0}, Lcom/vkontakte/android/api/NewsfeedGetLists;-><init>()V

    new-instance v1, Lcom/vkontakte/android/fragments/NewsFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/NewsFragment$5;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGetLists;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 330
    return-void
.end method

.method private updateNewPostsBtn()V
    .locals 15

    .prologue
    const/high16 v14, -0x3de40000    # -39.0f

    const/4 v5, 0x1

    const-wide/16 v12, 0x12c

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 333
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    if-nez v7, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/OverlayTextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    .line 335
    .local v2, "curState":Z
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    move v4, v5

    .line 336
    .local v4, "newState":Z
    :goto_2
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 337
    iget-boolean v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->clearForNew:Z

    if-eqz v7, :cond_5

    .line 338
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v8, 0x7f0d0181

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 343
    :cond_2
    :goto_3
    if-eq v2, v4, :cond_0

    .line 344
    if-eqz v4, :cond_6

    .line 345
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v7, 0x421c0000    # 39.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v0, v11, v11, v11, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 346
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 347
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 348
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 356
    new-instance v5, Lcom/vkontakte/android/fragments/NewsFragment$6;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/NewsFragment$6;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 378
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setVisibility(I)V

    .line 380
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v11, v11, v5, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 381
    .local v1, "ba":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 382
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 383
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/ui/OverlayTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "ba":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "curState":Z
    .end local v4    # "newState":Z
    :cond_3
    move v2, v6

    .line 334
    goto :goto_1

    .restart local v2    # "curState":Z
    :cond_4
    move v4, v6

    .line 335
    goto :goto_2

    .line 340
    .restart local v4    # "newState":Z
    :cond_5
    iget-object v7, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v8, 0x7f070020

    iget-object v9, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 385
    :cond_6
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, -0x1

    invoke-direct {v3, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 386
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 387
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v11, v11, v5, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 389
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 390
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 391
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 392
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v11, v11, v11, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 393
    .restart local v1    # "ba":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 394
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 395
    new-instance v5, Lcom/vkontakte/android/fragments/NewsFragment$7;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/NewsFragment$7;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 415
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/ui/OverlayTextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected canAddPost(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 2
    .param p1, "post"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 126
    iget v0, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->userID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canHideFromFeed()Z
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cancelLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 639
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 641
    iput-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 645
    iput-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    .line 647
    :cond_1
    return-void
.end method

.method protected doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 564
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->refreshing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 565
    sget-object v0, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    sget-object v1, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 569
    sget-object v0, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/NewsFragment;->appendItems(Ljava/util/List;)V

    .line 570
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->preloadedData:Ljava/util/ArrayList;

    sget-object v1, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 571
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->loaded:Z

    .line 572
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->moreAvailable:Z

    .line 573
    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/NewsFragment;->dataLoading:Z

    .line 574
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->showList()V

    .line 575
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    sget v1, Lcom/vkontakte/android/data/Posts;->feedItem:I

    sget v2, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 580
    :goto_0
    sget-object v0, Lcom/vkontakte/android/data/Posts;->feedFrom:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->from:Ljava/lang/String;

    .line 581
    sget-object v0, Lcom/vkontakte/android/data/Posts;->newNews:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    .line 582
    sget-object v0, Lcom/vkontakte/android/data/Posts;->newNewsFrom:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newFrom:Ljava/lang/String;

    .line 583
    sget-boolean v0, Lcom/vkontakte/android/data/Posts;->feedClearForNew:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->clearForNew:Z

    .line 619
    :goto_1
    return-void

    .line 579
    :cond_0
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->needSetSelection:Z

    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/cache/NewsfeedCache;->hasEntries(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    new-instance v0, Lcom/vkontakte/android/fragments/NewsFragment$14;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/NewsFragment$14;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 602
    :cond_2
    new-instance v1, Lcom/vkontakte/android/api/NewsfeedGet;

    if-nez p1, :cond_3

    const-string v0, "0"

    :goto_2
    iget v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    invoke-direct {v1, v0, p2, v3, v2}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(Ljava/lang/String;IZI)V

    new-instance v0, Lcom/vkontakte/android/fragments/NewsFragment$15;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/fragments/NewsFragment$15;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;I)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->from:Ljava/lang/String;

    goto :goto_2
.end method

.method public getList()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    return v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "news"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/NewsFragment;->firstNav:Z

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 133
    new-instance v2, Lcom/vkontakte/android/ui/NavigationSpinnerAdapter;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/ui/NavigationSpinnerAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    .line 134
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0d018c

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0d0252

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 136
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0d0100

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 137
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0d0131

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0d0278

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 140
    new-instance v1, Lcom/vkontakte/android/fragments/NewsFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/NewsFragment$1;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    .line 180
    .local v1, "navListener":Landroid/app/ActionBar$OnNavigationListener;
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment;->navAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3, v1}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 182
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/fragments/NewsFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/fragments/NewsFragment$2;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;Landroid/app/Activity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 206
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "feed_list"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "lid":I
    iput v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    .line 208
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    if-eqz v2, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateEmptyLabel()V

    .line 210
    :cond_0
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/fragments/NewsFragment;->setHasOptionsMenu(Z)V

    .line 212
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 213
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 285
    const v0, 0x7f0f0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 286
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 230
    const-string v1, "vk"

    const-string v2, "on create view"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/PostListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateEmptyLabel()V

    .line 233
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->needSetSelection:Z

    if-eqz v1, :cond_0

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->needSetSelection:Z

    .line 235
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set sel from createview, item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vkontakte/android/data/Posts;->feedItem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    sget v2, Lcom/vkontakte/android/data/Posts;->feedItem:I

    sget v3, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 239
    :cond_0
    new-instance v1, Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 240
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const-string v2, "qweqwe"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v2, -0xc06020

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 242
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(F)V

    .line 243
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 244
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 245
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 247
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;->setPadOverlay(Z)V

    .line 248
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    new-instance v2, Lcom/vkontakte/android/fragments/NewsFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/NewsFragment$3;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/OverlayTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x30

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateNewPostsBtn()V

    .line 257
    return-object v0
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 6
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "e":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/NewsEntry;>;"
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/NewsFragment;->refreshing:Z

    if-nez v4, :cond_2

    .line 624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 625
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 626
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsEntry;

    .line 627
    .local v3, "ne":Lcom/vkontakte/android/NewsEntry;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    .line 628
    .local v2, "le":Lcom/vkontakte/android/NewsEntry;
    iget v4, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v5, v3, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v4, v5, :cond_1

    iget v4, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v5, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v4, v5, :cond_1

    iget v4, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    iget v5, v3, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v5, :cond_1

    .line 629
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 634
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/NewsEntry;>;"
    .end local v2    # "le":Lcom/vkontakte/android/NewsEntry;
    .end local v3    # "ne":Lcom/vkontakte/android/NewsEntry;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/PostListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 635
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    sget-object v1, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 268
    sget-object v1, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 269
    sget-object v1, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 270
    sget-object v1, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sput v1, Lcom/vkontakte/android/data/Posts;->feedItem:I

    .line 272
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    sput v0, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->from:Ljava/lang/String;

    sput-object v0, Lcom/vkontakte/android/data/Posts;->feedFrom:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    sput-object v0, Lcom/vkontakte/android/data/Posts;->newNews:Ljava/util/ArrayList;

    .line 275
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newFrom:Ljava/lang/String;

    sput-object v0, Lcom/vkontakte/android/data/Posts;->newNewsFrom:Ljava/lang/String;

    .line 276
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->clearForNew:Z

    sput-boolean v0, Lcom/vkontakte/android/data/Posts;->feedClearForNew:Z

    .line 277
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on destroy view; dl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pdl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vkontakte/android/data/Posts;->feedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 281
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->onDestroyView()V

    .line 282
    return-void
.end method

.method public onDetach()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 217
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "abId":I
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 219
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 224
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 225
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->onDetach()V

    .line 226
    return-void
.end method

.method protected onEmptyViewBtnClick()V
    .locals 3

    .prologue
    .line 104
    iget v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return-void

    .line 107
    :pswitch_1
    const-string v0, "SuggestionsFriendsFragment"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v0, "SuggestionsRecommendationsFragment"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0801f1

    if-ne v0, v1, :cond_0

    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/NewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 655
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateNewPostsBtn()V

    .line 656
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->onRefreshStarted(Landroid/view/View;)V

    .line 657
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->onResume()V

    .line 299
    new-instance v0, Lcom/vkontakte/android/fragments/NewsFragment$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/NewsFragment$4;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public preloadNew()V
    .locals 5

    .prologue
    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ErrorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/NewsFragment$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/NewsFragment$12;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 523
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGet;

    const-string v1, ""

    const/16 v2, 0x14

    const/4 v3, 0x0

    iget v4, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/NewsfeedGet;-><init>(Ljava/lang/String;IZI)V

    new-instance v1, Lcom/vkontakte/android/fragments/NewsFragment$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/NewsFragment$13;-><init>(Lcom/vkontakte/android/fragments/NewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGet;->setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNewsReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public setList(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 61
    iget v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    const/16 v1, -0x2328

    if-eq p1, v1, :cond_2

    .line 63
    iput p1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->listID:I

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->cancelLoading()V

    .line 65
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->showProgress()V

    .line 66
    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/NewsFragment;->refreshing:Z

    .line 67
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->loadData()V

    .line 68
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 69
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateNewPostsBtn()V

    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NewsFragment;->updateEmptyLabel()V

    goto :goto_0
.end method
