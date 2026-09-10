.class Lcom/vkontakte/android/NotificationsView$9;
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
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    iput-boolean p2, p0, Lcom/vkontakte/android/NotificationsView$9;->val$refresh:Z

    .line 331
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

    .line 380
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/NotificationsView;->access$20(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 381
    iget-boolean v0, p0, Lcom/vkontakte/android/NotificationsView$9;->val$refresh:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/NotificationsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 385
    return-void
.end method

.method public success(Ljava/util/Vector;I)V
    .locals 8
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/NotificationEntry;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "n":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/NotificationEntry;>;"
    const/4 v0, 0x1

    const/16 v7, 0x14

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 334
    iget-boolean v3, p0, Lcom/vkontakte/android/NotificationsView$9;->val$refresh:Z

    if-eqz v3, :cond_0

    .line 335
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 336
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$10()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/NotificationsView;->access$11(I)V

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3}, Lcom/vkontakte/android/NotificationsView;->access$12(Lcom/vkontakte/android/NotificationsView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 340
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$10()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 347
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3, v1}, Lcom/vkontakte/android/NotificationsView;->access$13(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 348
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3}, Lcom/vkontakte/android/NotificationsView;->access$14(Lcom/vkontakte/android/NotificationsView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3, v0}, Lcom/vkontakte/android/NotificationsView;->access$13(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 350
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3, v1}, Lcom/vkontakte/android/NotificationsView;->access$15(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 351
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/NotificationsView;->loadData(Z)V

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-virtual {v3}, Lcom/vkontakte/android/NotificationsView;->updateList()V

    .line 354
    iget-boolean v3, p0, Lcom/vkontakte/android/NotificationsView$9;->val$refresh:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v3}, Lcom/vkontakte/android/NotificationsView;->access$6(Lcom/vkontakte/android/NotificationsView;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 355
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, p2, :cond_5

    :goto_1
    invoke-static {v3, v0}, Lcom/vkontakte/android/NotificationsView;->access$16(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 356
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$17(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$18(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$19(Lcom/vkontakte/android/NotificationsView;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/NotificationsView;->access$20(Lcom/vkontakte/android/NotificationsView;Z)V

    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$9;->this$0:Lcom/vkontakte/android/NotificationsView;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView;->access$21(Lcom/vkontakte/android/NotificationsView;)Landroid/widget/TextView;

    move-result-object v0

    if-nez p2, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    return-void

    .line 341
    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v7, :cond_4

    .line 342
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {p1, v1, v7}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 343
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$10()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p1, v7, v4}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 345
    :cond_4
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->access$0()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 355
    goto :goto_1

    :cond_6
    move v0, v2

    .line 357
    goto :goto_2

    :cond_7
    move v1, v2

    .line 359
    goto :goto_3
.end method
