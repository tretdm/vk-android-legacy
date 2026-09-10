.class Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardGetComments$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2002(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 351
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2102(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 352
    return-void
.end method

.method public success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
    .locals 13
    .param p2, "total"    # I
    .param p3, "pollID"    # I
    .param p4, "pollQuestion"    # Ljava/lang/String;
    .param p5, "pollUserAnswer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/BoardComment;",
            ">;II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/PollOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .local p6, "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/BoardComment;

    .line 283
    .local v3, "comment":Lcom/vkontakte/android/api/BoardComment;
    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 284
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/high16 v9, 0x42be0000    # 95.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    sub-int v7, v8, v9

    .line 285
    .local v7, "tSize":I
    const/16 v8, 0x25c

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 286
    int-to-float v8, v7

    const v9, 0x3f2a7efa    # 0.666f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget-object v9, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto :goto_0

    .line 288
    .end local v3    # "comment":Lcom/vkontakte/android/api/BoardComment;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "tSize":I
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 289
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$600(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    :goto_1
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$502(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 297
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$800(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 298
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$502(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 299
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$802(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 300
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$900(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    .line 302
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 303
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 304
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1100(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 305
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1000(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 307
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1102(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 309
    :cond_2
    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v10, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1300(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v10

    add-int/2addr v8, v10

    if-ge v8, p2, :cond_8

    const/4 v8, 0x1

    :goto_2
    invoke-static {v9, v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1202(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 310
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1400(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 311
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v8, v8, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->footerView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1200(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v8, v8, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->headerView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1300(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v8

    if-lez v8, :cond_a

    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 313
    int-to-float v8, p2

    const/high16 v9, 0x41a00000    # 20.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 314
    .local v6, "pages":I
    const/4 v8, 0x1

    if-le v6, v8, :cond_3

    .line 315
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/ui/PaginationView;->setPageCount(I)V

    .line 322
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1600(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 323
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1500(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v9, v10, v11}, Lcom/vkontakte/android/ui/PaginationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1602(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 334
    :cond_3
    if-eqz p4, :cond_4

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1900(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-nez v8, :cond_4

    .line 335
    new-instance v2, Lcom/vkontakte/android/PollAttachView;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "gid"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    neg-int v9, v9

    move/from16 v0, p3

    invoke-direct {v2, v8, v9, v0}, Lcom/vkontakte/android/PollAttachView;-><init>(Landroid/content/Context;II)V

    .line 336
    .local v2, "av":Lcom/vkontakte/android/PollAttachView;
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/vkontakte/android/PollAttachView;->isBoard:Z

    .line 337
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/vkontakte/android/api/PollOption;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/vkontakte/android/api/PollOption;

    const/4 v9, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1, v8, v9}, Lcom/vkontakte/android/PollAttachView;->onLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V

    .line 338
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1900(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$1900(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v8

    const v9, 0x7f02003d

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 342
    .end local v2    # "av":Lcom/vkontakte/android/PollAttachView;
    :cond_4
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2002(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 343
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2102(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)Z

    .line 344
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v9, v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2202(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;I)I

    .line 345
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2300(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-result-object v8

    invoke-virtual {v8}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isRefreshing()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$2300(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-result-object v8

    invoke-virtual {v8}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 346
    :cond_5
    return-void

    .line 290
    .end local v6    # "pages":I
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x14

    if-le v8, v9, :cond_7

    .line 291
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-virtual {p1, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 292
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$600(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    const/16 v9, 0x14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 294
    :cond_7
    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$700(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 309
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 311
    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_3

    .line 312
    :cond_a
    const/16 v8, 0x8

    goto/16 :goto_4
.end method
