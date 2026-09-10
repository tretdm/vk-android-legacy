.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;
.super Ljava/lang/Object;
.source "BoardTopicsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardGetTopics$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    .line 156
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

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->dataLoading:Z

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$4(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public success(ILjava/util/ArrayList;ZI)V
    .locals 7
    .param p1, "count"    # I
    .param p3, "canCreate"    # Z
    .param p4, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/BoardTopic;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .local p2, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    const/16 v6, 0x12c

    const/16 v5, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$0(Lcom/vkontakte/android/fragments/BoardTopicsFragment;J)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadOnReady:Z

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-boolean v1, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloading:Z

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadOnReady:Z

    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->loadData()V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->updateList()V

    .line 179
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->moreAvailable:Z

    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v6}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$1(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-boolean v1, v1, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->moreAvailable:Z

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshing:Z

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->list:Landroid/widget/ListView;

    check-cast v0, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->refreshing:Z

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-static {v0, p3}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$2(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Z)V

    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-static {v0, p4}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$3(Lcom/vkontakte/android/fragments/BoardTopicsFragment;I)V

    .line 195
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$4(Lcom/vkontakte/android/fragments/BoardTopicsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 196
    return-void

    .line 166
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_6

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {p2, v2, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v5, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$2;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 179
    goto :goto_1
.end method
