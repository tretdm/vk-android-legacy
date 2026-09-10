.class Lcom/vkontakte/android/NewsView$19$1$1;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView$19$1;->success(Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/NewsView$19$1;

.field private final synthetic val$newFrom:Ljava/lang/String;

.field private final synthetic val$news:Ljava/util/ArrayList;

.field private final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView$19$1;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    iput-boolean p2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$refresh:Z

    iput-object p3, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$newFrom:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$news:Ljava/util/ArrayList;

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v4, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 918
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$refresh:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$14(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 919
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$14(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 920
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/NewsView;->access$9(Lcom/vkontakte/android/NewsView;Lcom/vkontakte/android/APIRequest;)V

    .line 922
    :cond_0
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$refresh:Z

    if-eqz v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->newNews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 924
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$7(Lcom/vkontakte/android/NewsView;)V

    .line 926
    :cond_1
    const-string v2, "0"

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$newFrom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 927
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$newFrom:Ljava/lang/String;

    iput-object v3, v2, Lcom/vkontakte/android/NewsView;->commentsFrom:Ljava/lang/String;

    .line 929
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView;->access$13(Lcom/vkontakte/android/NewsView;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 930
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$news:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 932
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$news:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v4, :cond_9

    .line 933
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    if-eqz v2, :cond_8

    .line 934
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$news:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 935
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iput-boolean v5, v2, Lcom/vkontakte/android/NewsView;->dataLoading:Z

    .line 944
    .end local v1    # "i":I
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iput-boolean v5, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 945
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    if-eqz v2, :cond_5

    .line 946
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iput-boolean v5, v2, Lcom/vkontakte/android/NewsView;->preloadOnReady:Z

    .line 947
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iput-boolean v6, v2, Lcom/vkontakte/android/NewsView;->preloading:Z

    .line 948
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 950
    :cond_5
    return-void

    .line 930
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    const-string v3, ""

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 934
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v3, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$news:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 937
    .end local v1    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$news:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$refresh:Z

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    goto :goto_2

    .line 940
    :cond_9
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$news:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$refresh:Z

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/NewsView;->onDataLoaded(Ljava/util/List;Z)V

    .line 941
    iget-boolean v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$refresh:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v2, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 942
    :cond_a
    const/16 v1, 0xa

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$news:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->this$2:Lcom/vkontakte/android/NewsView$19$1;

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19$1;->access$0(Lcom/vkontakte/android/NewsView$19$1;)Lcom/vkontakte/android/NewsView$19;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/NewsView$19;->access$0(Lcom/vkontakte/android/NewsView$19;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    iget-object v3, v2, Lcom/vkontakte/android/NewsView;->preloadedNews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/NewsView$19$1$1;->val$news:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
