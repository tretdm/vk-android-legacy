.class Lcom/vkontakte/android/fragments/PostViewFragment$31;
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

.field final synthetic val$clear:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->val$clear:Z

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

    .line 1367
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0, v2}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3802(Lcom/vkontakte/android/fragments/PostViewFragment;Z)Z

    .line 1369
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1370
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1376
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$800(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1380
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3702(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 1381
    return-void

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const v0, 0x7f0d00ce

    :goto_1
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const v0, 0x7f0d00d0

    goto :goto_1
.end method

.method public success(ILjava/util/ArrayList;Ljava/util/ArrayList;IZ)V
    .locals 14
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
    .line 1266
    .local p2, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsComment;>;"
    .local p3, "likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_1

    .line 1363
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3702(Lcom/vkontakte/android/fragments/PostViewFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 1268
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3802(Lcom/vkontakte/android/fragments/PostViewFragment;Z)Z

    .line 1269
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3902(Lcom/vkontakte/android/fragments/PostViewFragment;J)J

    .line 1271
    if-nez p5, :cond_2

    .line 1272
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1200(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/ui/WriteBar;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/ui/WriteBar;->setVisibility(I)V

    .line 1273
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 1274
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1277
    :cond_2
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v11

    iput p1, v11, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 1278
    const/4 v11, -0x1

    move/from16 v0, p4

    if-eq v0, v11, :cond_3

    iget-boolean v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->val$clear:Z

    if-eqz v11, :cond_3

    .line 1279
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2400(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1280
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2400(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1281
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "userphoto"

    const-string v13, ""

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1282
    .local v10, "userphoto":Ljava/lang/String;
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$2400(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1283
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$000(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v11

    move/from16 v0, p4

    iput v0, v11, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 1284
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4000(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1285
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$100(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1287
    .end local v10    # "userphoto":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3300(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1296
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 1297
    .local v3, "firstVisible":I
    const/4 v6, -0x1

    .line 1298
    .local v6, "itemOffset":I
    if-nez v3, :cond_5

    .line 1299
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_4

    .line 1300
    add-int/lit8 v3, v3, 0x1

    .line 1301
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1312
    :cond_4
    :goto_1
    sget-object v11, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1313
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/high16 v12, 0x42be0000    # 95.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    sub-int v9, v11, v12

    .line 1314
    .local v9, "tSize":I
    const/16 v11, 0x25c

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1315
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    .line 1316
    .local v1, "c":Lcom/vkontakte/android/NewsComment;
    int-to-float v11, v9

    const v12, 0x3f2a7efa    # 0.666f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget-object v12, v1, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v9, v11, v12}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto :goto_2

    .line 1305
    .end local v1    # "c":Lcom/vkontakte/android/NewsComment;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    .end local v9    # "tSize":I
    :cond_5
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 1306
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_1

    .line 1322
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "tSize":I
    :cond_6
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4100(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1323
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4300(Lcom/vkontakte/android/fragments/PostViewFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-result-object v11

    invoke-virtual {v11}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 1325
    iget-boolean v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->val$clear:Z

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1326
    :cond_7
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_8

    .line 1327
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsComment;

    .line 1328
    .local v2, "comm":Lcom/vkontakte/android/NewsComment;
    iget-object v11, v2, Lcom/vkontakte/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/vkontakte/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 1329
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1326
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1331
    .end local v2    # "comm":Lcom/vkontakte/android/NewsComment;
    :cond_8
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1332
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1333
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le p1, v11, :cond_9

    .line 1334
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 1335
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int v12, p1, v12

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/LoadMoreCommentsView;->setNumComments(I)V

    .line 1336
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_9
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$800(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1339
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4400(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v11

    if-eqz v11, :cond_d

    .line 1340
    const/4 v8, -0x1

    .line 1341
    .local v8, "pos":I
    const/4 v4, 0x0

    .line 1342
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsComment;

    .line 1343
    .restart local v2    # "comm":Lcom/vkontakte/android/NewsComment;
    iget v11, v2, Lcom/vkontakte/android/NewsComment;->cid:I

    iget-object v12, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4400(Lcom/vkontakte/android/fragments/PostViewFragment;)I

    move-result v12

    if-ne v11, v12, :cond_c

    .line 1344
    move v8, v4

    .line 1349
    .end local v2    # "comm":Lcom/vkontakte/android/NewsComment;
    :cond_a
    const/4 v11, -0x1

    if-eq v8, v11, :cond_b

    .line 1350
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v11

    iget-object v12, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4500(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 1354
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v11

    const/high16 v12, 0x42480000    # 50.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    invoke-virtual {v11, v8, v12}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1355
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11, v8}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4600(Lcom/vkontakte/android/fragments/PostViewFragment;I)V

    .line 1358
    :cond_b
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$4402(Lcom/vkontakte/android/fragments/PostViewFragment;I)I

    goto/16 :goto_0

    .line 1347
    .restart local v2    # "comm":Lcom/vkontakte/android/NewsComment;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1359
    .end local v2    # "comm":Lcom/vkontakte/android/NewsComment;
    .end local v8    # "pos":I
    :cond_d
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$3200(Lcom/vkontakte/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0xa

    if-le v11, v12, :cond_0

    .line 1360
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$700(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/LoadMoreCommentsView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vkontakte/android/LoadMoreCommentsView;->getTop()I

    move-result v6

    .line 1361
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostViewFragment$31;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v11}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1500(Lcom/vkontakte/android/fragments/PostViewFragment;)Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v11, v12, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0
.end method
