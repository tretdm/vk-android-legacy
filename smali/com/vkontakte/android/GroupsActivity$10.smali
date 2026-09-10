.class Lcom/vkontakte/android/GroupsActivity$10;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity;->loadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    .line 413
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

    .line 476
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$20(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 477
    const/16 v0, 0x104

    if-ne p1, v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$22(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 479
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$22(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(Ljava/util/Vector;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "groups":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    const/4 v8, 0x3

    .line 417
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$0(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 418
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 433
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 442
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uid"

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_1

    .line 443
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/GroupsActivity$10$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/GroupsActivity$10$1;-><init>(Lcom/vkontakte/android/GroupsActivity$10;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 448
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v8, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/Vector;->setSize(I)V

    .line 451
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$2(Lcom/vkontakte/android/GroupsActivity;)V

    .line 452
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$20(Lcom/vkontakte/android/GroupsActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 455
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$9(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 460
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 462
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 463
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 464
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$4(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 466
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uid"

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_3

    .line 467
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {p1, v2}, Lcom/vkontakte/android/cache/GroupsCache;->replace(Ljava/util/Vector;Landroid/content/Context;)V

    .line 468
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$3(Lcom/vkontakte/android/GroupsActivity;)V

    .line 470
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$21(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/SearchIndexer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 471
    iget-object v2, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/GroupsActivity;->access$21(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/SearchIndexer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 472
    return-void

    .line 433
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 434
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/GroupsActivity;->access$0(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/GroupsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "uid"

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/vkontakte/android/api/Group;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 436
    iget v3, v1, Lcom/vkontakte/android/api/Group;->startTime:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    if-le v3, v4, :cond_0

    .line 437
    iget-object v3, p0, Lcom/vkontakte/android/GroupsActivity$10;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v3}, Lcom/vkontakte/android/GroupsActivity;->access$6(Lcom/vkontakte/android/GroupsActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
