.class Lcom/vkontakte/android/ui/ListImageLoader$1;
.super Ljava/lang/Object;
.source "ListImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoader;

.field private final synthetic val$firstVisibleItem:I

.field private final synthetic val$numVisibleItems:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ListImageLoader;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iput p2, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    iput p3, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 56
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 57
    .local v10, "start":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v15, v15, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    const/16 v16, 0x0

    aget-boolean v15, v15, v16

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v15, v15, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    const/16 v16, 0x1

    aget-boolean v15, v15, v16

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v15, v15, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    const/16 v16, 0x2

    aget-boolean v15, v15, v16

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v15, v15, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    const/16 v16, 0x3

    aget-boolean v15, v15, v16

    if-nez v15, :cond_1

    .line 61
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64
    .local v1, "end":I
    move v2, v10

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 76
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v16

    monitor-enter v16

    .line 78
    const/4 v2, 0x0

    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v15, v15, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    array-length v15, v15

    if-lt v2, v15, :cond_4

    .line 79
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 80
    .local v5, "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 81
    .local v8, "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move v2, v10

    :goto_3
    if-lt v2, v1, :cond_5

    .line 89
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 90
    .local v6, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_9

    .line 92
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_a

    .line 76
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 98
    .local v7, "numThreads":I
    const/4 v2, 0x0

    :goto_6
    if-lt v2, v7, :cond_b

    .line 104
    .end local v5    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "numThreads":I
    .end local v8    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_7
    return-void

    .line 58
    .end local v1    # "end":I
    .end local v2    # "i":I
    :cond_1
    const-wide/16 v15, 0xa

    :try_start_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    goto/16 :goto_0

    .line 65
    .restart local v1    # "end":I
    .restart local v2    # "i":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v15

    invoke-virtual {v15, v2}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v15

    if-lt v4, v15, :cond_3

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_3
    new-instance v12, Lcom/vkontakte/android/ui/ListImageLoader$Task;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/vkontakte/android/ui/ListImageLoader$Task;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;Lcom/vkontakte/android/ui/ListImageLoader$Task;)V

    .line 67
    .local v12, "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    iput v2, v12, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    .line 68
    iput v4, v12, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    .line 69
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v15

    invoke-virtual {v15, v2, v4}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 73
    .end local v12    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :catch_1
    move-exception v14

    .line 74
    .local v14, "x":Ljava/lang/Exception;
    goto :goto_7

    .line 78
    .end local v4    # "j":I
    .end local v14    # "x":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v15, v15, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    const/16 v17, 0x0

    aput-boolean v17, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 82
    .restart local v5    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v15

    invoke-virtual {v15, v2}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v3

    .line 83
    .local v3, "icount":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_9
    if-lt v4, v3, :cond_6

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 84
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v15

    invoke-virtual {v15, v2, v4}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, "url":Ljava/lang/String;
    if-nez v13, :cond_8

    .line 83
    :cond_7
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 86
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v5, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 76
    .end local v3    # "icount":I
    .end local v4    # "j":I
    .end local v5    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v8    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v13    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v15

    .line 90
    .restart local v5    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v6    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_9
    :try_start_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 91
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 92
    .end local v9    # "s":Ljava/lang/String;
    :cond_a
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 93
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 99
    .end local v9    # "s":Ljava/lang/String;
    .restart local v7    # "numThreads":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v15}, Lcom/vkontakte/android/ui/ListImageLoader;->access$3(Lcom/vkontakte/android/ui/ListImageLoader;)[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v15

    new-instance v16, Lcom/vkontakte/android/ImageCache$RequestWrapper;

    invoke-direct/range {v16 .. v16}, Lcom/vkontakte/android/ImageCache$RequestWrapper;-><init>()V

    aput-object v16, v15, v2

    .line 100
    new-instance v11, Ljava/lang/Thread;

    new-instance v15, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v2}, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;I)V

    invoke-direct {v11, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    .local v11, "t":Ljava/lang/Thread;
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/Thread;->setPriority(I)V

    .line 102
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6
.end method
