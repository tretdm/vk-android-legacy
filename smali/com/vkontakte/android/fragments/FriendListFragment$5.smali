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

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 354
    :try_start_0
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 356
    :goto_0
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1102(Lcom/vkontakte/android/fragments/FriendListFragment;Z)Z

    .line 357
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

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

    .line 358
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1200(Lcom/vkontakte/android/fragments/FriendListFragment;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 359
    .local v4, "firstName":Z
    :goto_1
    const/4 v1, 0x0

    .line 360
    .local v1, "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, "_sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/FriendListFragment$Section;>;"
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1300(Lcom/vkontakte/android/fragments/FriendListFragment;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 362
    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$1;)V

    .line 363
    .restart local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    sget-object v10, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d013e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    .line 364
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 365
    iget-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 366
    const-string v10, "\u2605"

    iput-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->shortTitle:Ljava/lang/String;

    .line 367
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 370
    .local v7, "p":Lcom/vkontakte/android/UserProfile;
    if-eqz v4, :cond_2

    .line 371
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_2

    .line 358
    .end local v0    # "_sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/FriendListFragment$Section;>;"
    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .end local v4    # "firstName":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 373
    .restart local v0    # "_sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/FriendListFragment$Section;>;"
    .restart local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .restart local v4    # "firstName":Z
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_2

    .line 375
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    new-instance v11, Lcom/vkontakte/android/fragments/FriendListFragment$5$1;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$5$1;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment$5;)V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 380
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 381
    .restart local v7    # "p":Lcom/vkontakte/android/UserProfile;
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_3

    .line 383
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    const/4 v3, 0x0

    .line 384
    .local v3, "fc":C
    const/4 v6, 0x0

    .line 385
    .local v6, "offset":I
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 387
    .local v8, "user":Lcom/vkontakte/android/UserProfile;
    if-eqz v4, :cond_6

    :try_start_1
    iget-object v10, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    :goto_5
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v3, :cond_5

    .line 388
    if-eqz v4, :cond_7

    iget-object v10, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    :goto_6
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 389
    if-eqz v1, :cond_8

    iget-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    :goto_7
    add-int/2addr v6, v10

    .line 390
    new-instance v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    const/4 v11, 0x0

    invoke-direct {v2, v10, v11}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .local v2, "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    .line 392
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 393
    iput v6, v2, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->startPos:I

    .line 394
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 396
    .end local v2    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .restart local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :cond_5
    :try_start_3
    iget-object v10, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 397
    :catch_0
    move-exception v9

    .local v9, "x":Ljava/lang/Exception;
    :goto_8
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 387
    .end local v9    # "x":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    iget-object v10, v8, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    goto :goto_5

    .line 388
    :cond_7
    iget-object v10, v8, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 389
    :cond_8
    const/4 v10, 0x0

    goto :goto_7

    .line 399
    .end local v8    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_9
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 400
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 402
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Create sections done, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->access$1000(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->release()V

    .line 404
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 405
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v10}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$5$2;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment$5;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    :cond_a
    return-void

    .line 397
    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .restart local v2    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .restart local v8    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .restart local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    goto :goto_8

    .line 355
    .end local v0    # "_sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/FriendListFragment$Section;>;"
    .end local v1    # "curSection":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    .end local v3    # "fc":C
    .end local v4    # "firstName":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "offset":I
    .end local v8    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method
