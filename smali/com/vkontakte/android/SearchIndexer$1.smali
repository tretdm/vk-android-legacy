.class Lcom/vkontakte/android/SearchIndexer$1;
.super Ljava/lang/Object;
.source "SearchIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SearchIndexer;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SearchIndexer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SearchIndexer;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lcom/vkontakte/android/SearchIndexer$1;, "Lcom/vkontakte/android/SearchIndexer.1;"
    iput-object p1, p0, Lcom/vkontakte/android/SearchIndexer$1;->this$0:Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    .local p0, "this":Lcom/vkontakte/android/SearchIndexer$1;, "Lcom/vkontakte/android/SearchIndexer.1;"
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/SearchIndexer$1;->this$0:Lcom/vkontakte/android/SearchIndexer;

    invoke-static {v3}, Lcom/vkontakte/android/SearchIndexer;->access$000(Lcom/vkontakte/android/SearchIndexer;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 47
    iget-object v3, p0, Lcom/vkontakte/android/SearchIndexer$1;->this$0:Lcom/vkontakte/android/SearchIndexer;

    invoke-static {v3}, Lcom/vkontakte/android/SearchIndexer;->access$100(Lcom/vkontakte/android/SearchIndexer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 48
    iget-object v3, p0, Lcom/vkontakte/android/SearchIndexer$1;->this$0:Lcom/vkontakte/android/SearchIndexer;

    invoke-static {v3}, Lcom/vkontakte/android/SearchIndexer;->access$200(Lcom/vkontakte/android/SearchIndexer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Indexable;

    .line 49
    .local v1, "obj":Lcom/vkontakte/android/Indexable;, "TT;"
    iget-object v3, p0, Lcom/vkontakte/android/SearchIndexer$1;->this$0:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/SearchIndexer;->add(Lcom/vkontakte/android/Indexable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "obj":Lcom/vkontakte/android/Indexable;, "TT;"
    :catch_0
    move-exception v2

    .line 53
    .local v2, "x":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/vkontakte/android/SearchIndexer$1;->this$0:Lcom/vkontakte/android/SearchIndexer;

    invoke-static {v3}, Lcom/vkontakte/android/SearchIndexer;->access$100(Lcom/vkontakte/android/SearchIndexer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 55
    .end local v2    # "x":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 51
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/vkontakte/android/SearchIndexer$1;->this$0:Lcom/vkontakte/android/SearchIndexer;

    invoke-static {v3}, Lcom/vkontakte/android/SearchIndexer;->access$000(Lcom/vkontakte/android/SearchIndexer;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
