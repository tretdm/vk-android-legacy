.class Lcom/vkontakte/android/BoardTopicViewActivity$3;
.super Ljava/lang/Object;
.source "BoardTopicViewActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardGetComments$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicViewActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/BoardTopicViewActivity$3;)Lcom/vkontakte/android/BoardTopicViewActivity;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$24(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$25(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 270
    return-void
.end method

.method public success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V
    .locals 8
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
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .local p6, "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    const/16 v7, 0x14

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 209
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$6(Lcom/vkontakte/android/BoardTopicViewActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$7(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$8(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 218
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$9(Lcom/vkontakte/android/BoardTopicViewActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2, v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$8(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 220
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$10(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 221
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$11(Lcom/vkontakte/android/BoardTopicViewActivity;)V

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->updateList()V

    .line 225
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$12(Lcom/vkontakte/android/BoardTopicViewActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v2

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v6}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$3(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getHeaderViewsCount()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    .line 228
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$13(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 230
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v7, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v7}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$14(Lcom/vkontakte/android/BoardTopicViewActivity;)I

    move-result v7

    add-int/2addr v2, v7

    if-ge v2, p2, :cond_7

    move v2, v3

    :goto_1
    invoke-static {v6, v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$15(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 231
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$16(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    iget-object v2, v2, Lcom/vkontakte/android/BoardTopicViewActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$17(Lcom/vkontakte/android/BoardTopicViewActivity;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    iget-object v2, v2, Lcom/vkontakte/android/BoardTopicViewActivity;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v6, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v6}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$14(Lcom/vkontakte/android/BoardTopicViewActivity;)I

    move-result v6

    if-lez v6, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 234
    int-to-float v2, p2

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 235
    .local v1, "pages":I
    if-le v1, v3, :cond_3

    .line 236
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/PaginationView;->setPageCount(I)V

    .line 243
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$19(Lcom/vkontakte/android/BoardTopicViewActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$18(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/PaginationView;

    move-result-object v2

    new-instance v5, Lcom/vkontakte/android/BoardTopicViewActivity$3$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/BoardTopicViewActivity$3$1;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity$3;)V

    .line 250
    const-wide/16 v6, 0x12c

    .line 244
    invoke-virtual {v2, v5, v6, v7}, Lcom/vkontakte/android/ui/PaginationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$22(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 255
    :cond_3
    if-eqz p4, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$23(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 256
    new-instance v0, Lcom/vkontakte/android/PollAttachView;

    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    iget-object v5, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/BoardTopicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "gid"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    neg-int v5, v5

    invoke-direct {v0, v2, v5, p3}, Lcom/vkontakte/android/PollAttachView;-><init>(Landroid/content/Context;II)V

    .line 257
    .local v0, "av":Lcom/vkontakte/android/PollAttachView;
    iput-boolean v3, v0, Lcom/vkontakte/android/PollAttachView;->isBoard:Z

    .line 258
    new-array v2, v4, [Lcom/vkontakte/android/api/PollOption;

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/vkontakte/android/api/PollOption;

    invoke-virtual {v0, p4, p5, v2, v4}, Lcom/vkontakte/android/PollAttachView;->onLoaded(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V

    .line 259
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$23(Lcom/vkontakte/android/BoardTopicViewActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    .end local v0    # "av":Lcom/vkontakte/android/PollAttachView;
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$24(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 263
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2, v4}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$25(Lcom/vkontakte/android/BoardTopicViewActivity;Z)V

    .line 264
    return-void

    .line 211
    .end local v1    # "pages":I
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v7, :cond_6

    .line 212
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v4, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$7(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 215
    :cond_6
    iget-object v2, p0, Lcom/vkontakte/android/BoardTopicViewActivity$3;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v2}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 230
    goto/16 :goto_1

    :cond_8
    move v2, v5

    .line 232
    goto/16 :goto_2
.end method
