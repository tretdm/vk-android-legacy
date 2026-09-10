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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;)Lcom/vkontakte/android/fragments/BoardTopicViewFragment;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$25(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$26(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 346
    return-void
.end method

.method public success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
    .locals 11
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
    .line 276
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .local p6, "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 282
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$7(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 283
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$8(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 290
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$9(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 291
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$10(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$9(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 293
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$11(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 294
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$12(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)V

    .line 296
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 297
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->updateList()V

    .line 298
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$13(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 299
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 301
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$14(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 303
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$15(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v8

    add-int/2addr v6, v8

    if-ge v6, p2, :cond_8

    const/4 v6, 0x1

    :goto_2
    invoke-static {v7, v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$16(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 304
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$17(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->footerView:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$18(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    iget-object v6, v6, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->headerView:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$15(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)I

    move-result v6

    if-lez v6, :cond_a

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 307
    int-to-float v6, p2

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 308
    .local v4, "pages":I
    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    .line 309
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/vkontakte/android/ui/PaginationView;->setPageCount(I)V

    .line 316
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$20(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 317
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$19(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4$1;-><init>(Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;)V

    .line 323
    const-wide/16 v8, 0x12c

    .line 317
    invoke-virtual {v6, v7, v8, v9}, Lcom/vkontakte/android/ui/PaginationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$23(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 328
    :cond_2
    if-eqz p4, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$24(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 329
    new-instance v1, Lcom/vkontakte/android/PollAttachView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-virtual {v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "gid"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    neg-int v7, v7

    invoke-direct {v1, v6, v7, p3}, Lcom/vkontakte/android/PollAttachView;-><init>(Landroid/content/Context;II)V

    .line 330
    .local v1, "av":Lcom/vkontakte/android/PollAttachView;
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/vkontakte/android/PollAttachView;->isBoard:Z

    .line 331
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/vkontakte/android/api/PollOption;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/vkontakte/android/api/PollOption;

    const/4 v7, 0x0

    move/from16 v0, p5

    invoke-virtual {v1, p4, v0, v6, v7}, Lcom/vkontakte/android/PollAttachView;->onLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V

    .line 332
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$24(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$24(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Landroid/widget/LinearLayout;

    move-result-object v6

    const v7, 0x7f0200ab

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 336
    .end local v1    # "av":Lcom/vkontakte/android/PollAttachView;
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$25(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 337
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$26(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;Z)V

    .line 338
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$27(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;I)V

    .line 339
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 340
    :cond_4
    return-void

    .line 276
    .end local v4    # "pages":I
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/BoardComment;

    .line 277
    .local v2, "comment":Lcom/vkontakte/android/api/BoardComment;
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 278
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/high16 v8, 0x42be0000    # 95.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int v5, v7, v8

    .line 279
    .local v5, "tSize":I
    const/16 v7, 0x25c

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 280
    int-to-float v7, v5

    const v8, 0x3f2a7efa    # 0.666f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, v2, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v5, v7, v8}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 284
    .end local v2    # "comment":Lcom/vkontakte/android/api/BoardComment;
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "tSize":I
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_7

    .line 285
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-virtual {p1, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 286
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$8(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 288
    :cond_7
    iget-object v6, p0, Lcom/vkontakte/android/fragments/BoardTopicViewFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicViewFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/BoardTopicViewFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 303
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 305
    :cond_9
    const/16 v6, 0x8

    goto/16 :goto_3

    .line 306
    :cond_a
    const/16 v6, 0x8

    goto/16 :goto_4
.end method
