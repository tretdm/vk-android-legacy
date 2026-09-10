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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 63
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 64
    .local v12, "start":I
    const/4 v2, 0x0

    .line 65
    .local v2, "anyRunning":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_2

    .line 66
    :cond_0
    if-nez v2, :cond_4

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 75
    .local v3, "end":I
    move v4, v12

    :goto_1
    if-lt v4, v3, :cond_6

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v18

    monitor-enter v18

    .line 90
    const/4 v4, 0x0

    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_8

    .line 91
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 92
    .local v7, "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 93
    .local v10, "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move v4, v12

    :goto_3
    if-lt v4, v3, :cond_9

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 102
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_d

    .line 104
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_e

    .line 88
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {}, Lcom/vkontakte/android/ui/ListImageLoader;->access$4()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 110
    .local v9, "numThreads":I
    const/4 v4, 0x0

    :goto_6
    if-lt v4, v9, :cond_f

    .line 116
    .end local v7    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "numThreads":I
    .end local v10    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_7
    return-void

    .line 65
    .end local v3    # "end":I
    :cond_2
    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v17, v0

    aget-boolean v17, v17, v4

    if-nez v17, :cond_3

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_8

    .line 67
    :cond_4
    const-wide/16 v17, 0xa

    :try_start_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_9
    const/4 v2, 0x0

    .line 69
    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_0

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v17, v0

    aget-boolean v17, v17, v4

    if-nez v17, :cond_5

    const/4 v2, 0x0

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_5
    const/4 v2, 0x1

    goto :goto_b

    .line 76
    .restart local v3    # "end":I
    :cond_6
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v17

    move/from16 v0, v17

    if-lt v6, v0, :cond_7

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 77
    :cond_7
    new-instance v14, Lcom/vkontakte/android/ui/ListImageLoader$Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lcom/vkontakte/android/ui/ListImageLoader$Task;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;Lcom/vkontakte/android/ui/ListImageLoader$Task;)V

    .line 78
    .local v14, "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    iput v4, v14, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    .line 79
    iput v6, v14, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 84
    .end local v14    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :catch_0
    move-exception v16

    .line 86
    .local v16, "x":Ljava/lang/Exception;
    goto/16 :goto_7

    .line 90
    .end local v6    # "j":I
    .end local v16    # "x":Ljava/lang/Exception;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    move-object/from16 v17, v0

    const/16 v19, 0x0

    aput-boolean v19, v17, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 94
    .restart local v7    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v10    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v5

    .line 95
    .local v5, "icount":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_d
    if-lt v6, v5, :cond_a

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 96
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v6}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, "url":Ljava/lang/String;
    if-nez v15, :cond_c

    .line 95
    :cond_b
    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 98
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual {v7, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 88
    .end local v5    # "icount":I
    .end local v6    # "j":I
    .end local v7    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v10    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v15    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v17

    .line 102
    .restart local v7    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_d
    :try_start_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 103
    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 104
    .end local v11    # "s":Ljava/lang/String;
    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 105
    .restart local v11    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 111
    .end local v11    # "s":Ljava/lang/String;
    .restart local v9    # "numThreads":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/ListImageLoader;->access$3(Lcom/vkontakte/android/ui/ListImageLoader;)[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/ImageCache$RequestWrapper;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/ImageCache$RequestWrapper;-><init>()V

    aput-object v18, v17, v4

    .line 112
    new-instance v13, Ljava/lang/Thread;

    new-instance v17, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;I)V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    .local v13, "t":Ljava/lang/Thread;
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 67
    .end local v3    # "end":I
    .end local v7    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "numThreads":I
    .end local v10    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v13    # "t":Ljava/lang/Thread;
    :catch_1
    move-exception v17

    goto/16 :goto_9
.end method
