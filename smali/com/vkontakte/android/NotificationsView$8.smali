.class Lcom/vkontakte/android/NotificationsView$8;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NotificationsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->loadData(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;

.field private final synthetic val$fromCache:Z

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NotificationsView$8;->val$fromCache:Z

    iput-boolean p3, p0, Lcom/vkontakte/android/NotificationsView$8;->val$refresh:Z

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/NotificationsView;->access$19(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 458
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView$8;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 461
    :cond_0
    sget-object v0, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 464
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NotificationsView;->access$21(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/APIRequest;)V

    .line 469
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(Ljava/util/List;IILjava/lang/String;)V
    .locals 10
    .param p2, "count"    # I
    .param p3, "newOffset"    # I
    .param p4, "newFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/api/NotificationEntry;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "n":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/NotificationEntry;>;"
    const/4 v9, 0x0

    const/16 v8, 0x14

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v4}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setDraggingEnabled(Z)V

    .line 397
    iget-boolean v4, p0, Lcom/vkontakte/android/NotificationsView$8;->val$fromCache:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$7()I

    move-result v4

    if-nez v4, :cond_0

    .line 398
    sput v2, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 399
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 402
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$7()I

    move-result v0

    .line 403
    .local v0, "oldOffset":I
    invoke-static {p3}, Lcom/vkontakte/android/NotificationsView;->access$8(I)V

    .line 404
    invoke-static {p4}, Lcom/vkontakte/android/NotificationsView;->access$9(Ljava/lang/String;)V

    .line 405
    iget-boolean v4, p0, Lcom/vkontakte/android/NotificationsView$8;->val$refresh:Z

    if-eqz v4, :cond_1

    .line 406
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 407
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/NotificationsView;->access$10(I)V

    .line 409
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v9, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "notifications_updated"

    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$11()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v4}, Lcom/vkontakte/android/NotificationsView;->access$12(Lcom/vkontakte/android/NotificationsView;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 412
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 419
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v4, v2}, Lcom/vkontakte/android/NotificationsView;->access$13(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 420
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v4}, Lcom/vkontakte/android/NotificationsView;->access$14(Lcom/vkontakte/android/NotificationsView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v4, v1}, Lcom/vkontakte/android/NotificationsView;->access$13(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 422
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v4, v2}, Lcom/vkontakte/android/NotificationsView;->access$15(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 423
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v4, v2}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)Z

    .line 425
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v4}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 426
    iget-boolean v4, p0, Lcom/vkontakte/android/NotificationsView$8;->val$refresh:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v4}, Lcom/vkontakte/android/NotificationsView;->access$4(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 427
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    sget-object v5, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v5, p2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    if-le p3, v0, :cond_7

    :goto_1
    invoke-static {v4, v1}, Lcom/vkontakte/android/NotificationsView;->access$16(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 428
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 429
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$17(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$18(Lcom/vkontakte/android/NotificationsView;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1, v2}, Lcom/vkontakte/android/NotificationsView;->access$19(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 431
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$20(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v1

    if-nez p2, :cond_9

    :goto_3
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1, v9}, Lcom/vkontakte/android/NotificationsView;->access$21(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/APIRequest;)V

    .line 449
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$22(Lcom/vkontakte/android/NotificationsView;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/vkontakte/android/NotificationsView$8;->val$fromCache:Z

    if-eqz v1, :cond_4

    .line 450
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1}, Lcom/vkontakte/android/NotificationsView;->access$22(Lcom/vkontakte/android/NotificationsView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 452
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NotificationsView$8;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v1, v9}, Lcom/vkontakte/android/NotificationsView;->access$23(Lcom/vkontakte/android/NotificationsView;Ljava/lang/Runnable;)V

    .line 453
    return-void

    .line 413
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_6

    .line 414
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-interface {p1, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 415
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v8, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 417
    :cond_6
    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 427
    goto :goto_1

    :cond_8
    move v1, v3

    .line 429
    goto :goto_2

    :cond_9
    move v2, v3

    .line 431
    goto :goto_3
.end method
