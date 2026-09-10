.class Lcom/vkontakte/android/BoardTopicsActivity$2;
.super Ljava/lang/Object;
.source "BoardTopicsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/BoardGetTopics$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicsActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 192
    return-void
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
    const/4 v0, 0x1

    const/16 v6, 0x14

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 156
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->refreshing:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 157
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/BoardTopicsActivity;->access$0(Lcom/vkontakte/android/BoardTopicsActivity;J)V

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    if-eqz v3, :cond_4

    .line 162
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iput-boolean v1, v3, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    .line 170
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-boolean v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->preloadOnReady:Z

    if-eqz v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iput-boolean v0, v3, Lcom/vkontakte/android/BoardTopicsActivity;->preloading:Z

    .line 172
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iput-boolean v1, v3, Lcom/vkontakte/android/BoardTopicsActivity;->preloadOnReady:Z

    .line 173
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/BoardTopicsActivity;->loadData()V

    .line 175
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/BoardTopicsActivity;->updateList()V

    .line 176
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v4, v4, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p1, :cond_6

    :goto_1
    iput-boolean v0, v3, Lcom/vkontakte/android/BoardTopicsActivity;->moreAvailable:Z

    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/BoardTopicsActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/BoardTopicsActivity;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/BoardTopicsActivity;->moreAvailable:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/BoardTopicsActivity;->refreshing:Z

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/BoardTopicsActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->refreshDone()V

    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iput-boolean v1, v0, Lcom/vkontakte/android/BoardTopicsActivity;->refreshing:Z

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicsActivity;->access$1(Lcom/vkontakte/android/BoardTopicsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p3, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-static {v0, p4}, Lcom/vkontakte/android/BoardTopicsActivity;->access$2(Lcom/vkontakte/android/BoardTopicsActivity;I)V

    .line 187
    return-void

    .line 163
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_5

    .line 164
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->preloadedTopics:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p2, v6, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 167
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/BoardTopicsActivity$2;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v3, v3, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 176
    goto :goto_1

    :cond_7
    move v0, v2

    .line 178
    goto :goto_2

    :cond_8
    move v1, v2

    .line 185
    goto :goto_3
.end method
