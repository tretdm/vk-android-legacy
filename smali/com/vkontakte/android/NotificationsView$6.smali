.class Lcom/vkontakte/android/NotificationsView$6;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/NotificationsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NotificationsView;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NotificationsView$6;->val$refresh:Z

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/NotificationsView;->access$18(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 433
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView$6;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060051

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 437
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/NotificationsView;->access$20(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/APIRequest;)V

    .line 438
    return-void
.end method

.method public success(Ljava/util/Vector;IILjava/lang/String;)V
    .locals 9
    .param p2, "count"    # I
    .param p3, "newOffset"    # I
    .param p4, "newFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/NotificationEntry;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "n":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    const/4 v0, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x14

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 377
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LOADED NOTIFICATIONS! "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/vkontakte/android/NotificationsView$6;->val$refresh:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3, p3}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;I)V

    .line 379
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3, p4}, Lcom/vkontakte/android/NotificationsView;->access$7(Lcom/vkontakte/android/NotificationsView;Ljava/lang/String;)V

    .line 380
    iget-boolean v3, p0, Lcom/vkontakte/android/NotificationsView$6;->val$refresh:Z

    if-eqz v3, :cond_0

    .line 381
    sget-object v3, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 382
    sget-object v3, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/NotificationsView;->access$8(I)V

    .line 384
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "notifications_updated"

    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$9()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3}, Lcom/vkontakte/android/NotificationsView;->access$10(Lcom/vkontakte/android/NotificationsView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 387
    sget-object v3, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 394
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3, v1}, Lcom/vkontakte/android/NotificationsView;->access$11(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 395
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3}, Lcom/vkontakte/android/NotificationsView;->access$12(Lcom/vkontakte/android/NotificationsView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3, v0}, Lcom/vkontakte/android/NotificationsView;->access$11(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 397
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3, v1}, Lcom/vkontakte/android/NotificationsView;->access$13(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 398
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    .line 400
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 401
    iget-boolean v3, p0, Lcom/vkontakte/android/NotificationsView$6;->val$refresh:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3}, Lcom/vkontakte/android/NotificationsView;->access$5(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 402
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    sget-object v4, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, p2, :cond_6

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_6

    :goto_1
    invoke-static {v3, v0}, Lcom/vkontakte/android/NotificationsView;->access$14(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 403
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$15(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$16(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$17(Lcom/vkontakte/android/NotificationsView;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/NotificationsView;->access$18(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 406
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$19(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez p2, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0, v8}, Lcom/vkontakte/android/NotificationsView;->access$20(Lcom/vkontakte/android/NotificationsView;Lcom/vkontakte/android/APIRequest;)V

    .line 424
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$21(Lcom/vkontakte/android/NotificationsView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$21(Lcom/vkontakte/android/NotificationsView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 426
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$6;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0, v8}, Lcom/vkontakte/android/NotificationsView;->access$22(Lcom/vkontakte/android/NotificationsView;Ljava/lang/Runnable;)V

    .line 428
    :cond_3
    return-void

    .line 388
    :cond_4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v7, :cond_5

    .line 389
    sget-object v3, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {p1, v1, v7}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 390
    sget-object v3, Lcom/vkontakte/android/NotificationsView;->preloaded:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p1, v7, v4}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 392
    :cond_5
    sget-object v3, Lcom/vkontakte/android/NotificationsView;->notifications:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 402
    goto :goto_1

    :cond_7
    move v0, v2

    .line 404
    goto :goto_2

    :cond_8
    move v1, v2

    .line 406
    goto :goto_3
.end method
