.class Lcom/vkontakte/android/fragments/FriendListFragment$5;
.super Ljava/lang/Object;
.source "FriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendListFragment;->createSections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

.field private final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FriendListFragment$5;)Lcom/vkontakte/android/fragments/FriendListFragment;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 346
    :try_start_0
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$8(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 348
    :goto_0
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10, v4}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$9(Lcom/vkontakte/android/fragments/FriendListFragment;Z)V

    .line 349
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " Create sections thread start, users size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$10(Lcom/vkontakte/android/fragments/FriendListFragment;)I

    move-result v10

    if-ne v10, v4, :cond_2

    .line 351
    .local v4, "firstName":Z
    :goto_1
    const/4 v1, 0x0

    .line 352
    .local v1, "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v0, "_sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/FriendListFragment$Section;>;"
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$11(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 354
    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {v1, v10, v14}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$Section;)V

    .line 355
    .restart local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    sget-object v10, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0800f4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    .line 356
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 357
    iget-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x5

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v11, v9, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    const-string v10, "\u2605"

    iput-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->shortTitle:Ljava/lang/String;

    .line 359
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 367
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    new-instance v11, Lcom/vkontakte/android/fragments/FriendListFragment$5$1;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$5$1;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment$5;)V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 372
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 375
    const/4 v3, 0x0

    .line 376
    .local v3, "fc":C
    const/4 v5, 0x0

    .line 377
    .local v5, "offset":I
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 391
    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 392
    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 393
    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 394
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " Create sections done, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$8(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->release()V

    .line 396
    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 397
    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    new-instance v10, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment$5;)V

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 408
    :cond_1
    return-void

    .end local v0    # "_sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/FriendListFragment$Section;>;"
    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .end local v3    # "fc":C
    .end local v4    # "firstName":Z
    .end local v5    # "offset":I
    :cond_2
    move v4, v9

    .line 350
    goto/16 :goto_1

    .line 361
    .restart local v0    # "_sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/FriendListFragment$Section;>;"
    .restart local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .restart local v4    # "firstName":Z
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 362
    .local v6, "p":Lcom/vkontakte/android/UserProfile;
    if-eqz v4, :cond_4

    .line 363
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_2

    .line 365
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v6, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_2

    .line 372
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 373
    .restart local v6    # "p":Lcom/vkontakte/android/UserProfile;
    iput-object v14, v6, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_3

    .line 377
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v3    # "fc":C
    .restart local v5    # "offset":I
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 379
    .local v7, "user":Lcom/vkontakte/android/UserProfile;
    if-eqz v4, :cond_8

    :try_start_1
    iget-object v10, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    :goto_5
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v3, :cond_7

    .line 380
    if-eqz v4, :cond_9

    iget-object v10, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    :goto_6
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 381
    if-eqz v1, :cond_a

    iget-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    :goto_7
    add-int/2addr v5, v10

    .line 382
    new-instance v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v12, 0x0

    invoke-direct {v2, v10, v12}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$Section;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .local v2, "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    .line 384
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 385
    iput v5, v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->startPos:I

    .line 386
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 388
    .end local v2    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .restart local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :cond_7
    :try_start_3
    iget-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 389
    :catch_0
    move-exception v8

    .local v8, "x":Ljava/lang/Exception;
    :goto_8
    const-string v10, "vk"

    invoke-static {v10, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 379
    .end local v8    # "x":Ljava/lang/Exception;
    :cond_8
    :try_start_4
    iget-object v10, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    goto :goto_5

    .line 380
    :cond_9
    iget-object v10, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :cond_a
    move v10, v9

    .line 381
    goto :goto_7

    .line 389
    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .restart local v2    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :catch_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .restart local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    goto :goto_8

    .line 347
    .end local v0    # "_sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/FriendListFragment$Section;>;"
    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .end local v3    # "fc":C
    .end local v4    # "firstName":Z
    .end local v5    # "offset":I
    .end local v7    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method
