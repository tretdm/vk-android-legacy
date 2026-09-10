.class Lcom/vkontakte/android/fragments/PostViewFragment$32;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/WallGetComments$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->loadComments(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

.field private final synthetic val$clear:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->val$clear:Z

    .line 1389
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

    .line 1491
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$46(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    .line 1492
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 1493
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$23(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$24(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1496
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$23(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 1500
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$45(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 1501
    return-void

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f08006b

    :goto_1
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v0, 0x7f080068

    goto :goto_1
.end method

.method public success(ILjava/util/ArrayList;Ljava/util/ArrayList;IZ)V
    .locals 13
    .param p1, "total"    # I
    .param p4, "likesCount"    # I
    .param p5, "canComment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsComment;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1392
    .local p2, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsComment;>;"
    .local p3, "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$45(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 1394
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$46(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V

    .line 1395
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$47(Lcom/vkontakte/android/fragments/PostViewFragment;J)V

    .line 1397
    if-nez p5, :cond_2

    .line 1398
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$17(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/WriteBar;->setVisibility(I)V

    .line 1399
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1400
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 1403
    :cond_2
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v10

    iput p1, v10, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 1404
    const/4 v10, -0x1

    move/from16 v0, p4

    if-eq v0, v10, :cond_3

    iget-boolean v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->val$clear:Z

    if-eqz v10, :cond_3

    .line 1405
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1406
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1407
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "userphoto"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1408
    .local v9, "userphoto":Ljava/lang/String;
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$6(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1409
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v10

    move/from16 v0, p4

    iput v0, v10, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1410
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$48(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1411
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1413
    .end local v9    # "userphoto":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$40(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1414
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$7(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f09014d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-lez p1, :cond_8

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1422
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v3

    .line 1423
    .local v3, "firstVisible":I
    const/4 v5, -0x1

    .line 1424
    .local v5, "itemOffset":I
    if-nez v3, :cond_9

    .line 1425
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_4

    .line 1426
    add-int/lit8 v3, v3, 0x1

    .line 1427
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1438
    :cond_4
    :goto_2
    sget-object v10, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 1439
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/high16 v11, 0x42be0000    # 95.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    sub-int v8, v10, v11

    .line 1440
    .local v8, "tSize":I
    const/16 v10, 0x25c

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1441
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_a

    .line 1446
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$24(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1447
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$24(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$24(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1448
    :cond_5
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 1449
    iget-boolean v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->val$clear:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1450
    :cond_6
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v4, v10, :cond_b

    .line 1455
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1456
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le p1, v10, :cond_c

    .line 1457
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$14(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    .line 1458
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$14(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 1459
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$14(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v10

    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int v11, p1, v11

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/LoadMoreCommentsView;->setNumComments(I)V

    .line 1463
    :goto_5
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$15(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1464
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$49(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v10

    if-eqz v10, :cond_f

    .line 1465
    const/4 v7, -0x1

    .line 1466
    .local v7, "pos":I
    const/4 v4, 0x0

    .line 1467
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_d

    .line 1474
    :goto_7
    const/4 v10, -0x1

    if-eq v7, v10, :cond_7

    .line 1475
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v10

    add-int/2addr v7, v10

    .line 1479
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    const/high16 v11, 0x42480000    # 50.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    invoke-virtual {v10, v7, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 1480
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10, v7}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$50(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 1483
    :cond_7
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$51(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    goto/16 :goto_0

    .line 1414
    .end local v3    # "firstVisible":I
    .end local v4    # "i":I
    .end local v5    # "itemOffset":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "pos":I
    .end local v8    # "tSize":I
    :cond_8
    const/16 v10, 0x8

    goto/16 :goto_1

    .line 1431
    .restart local v3    # "firstVisible":I
    .restart local v5    # "itemOffset":I
    :cond_9
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 1432
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v5

    goto/16 :goto_2

    .line 1441
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "tSize":I
    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 1442
    .local v1, "c":Lcom/vkontakte/android/NewsComment;
    int-to-float v11, v8

    const v12, 0x3f2a7efa    # 0.666f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v8, v11, v12}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_3

    .line 1451
    .end local v1    # "c":Lcom/vkontakte/android/NewsComment;
    .restart local v4    # "i":I
    :cond_b
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsComment;

    .line 1452
    .local v2, "comm":Lcom/vkontakte/android/NewsComment;
    iget-object v10, v2, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/vkontakte/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p2, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1450
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1461
    .end local v2    # "comm":Lcom/vkontakte/android/NewsComment;
    :cond_c
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$14(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/LoadMoreCommentsView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1467
    .restart local v7    # "pos":I
    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsComment;

    .line 1468
    .restart local v2    # "comm":Lcom/vkontakte/android/NewsComment;
    iget v11, v2, Lcom/vkontakte/android/NewsComment;->cid:I

    iget-object v12, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$49(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v12

    if-ne v11, v12, :cond_e

    .line 1469
    move v7, v4

    .line 1470
    goto/16 :goto_7

    .line 1472
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 1484
    .end local v2    # "comm":Lcom/vkontakte/android/NewsComment;
    .end local v7    # "pos":I
    :cond_f
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0xa

    if-le v10, v11, :cond_0

    .line 1485
    iget-object v10, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$9(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v10, v11, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    goto/16 :goto_0
.end method
