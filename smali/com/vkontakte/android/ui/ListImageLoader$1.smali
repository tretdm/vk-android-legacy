.class Lcom/vkontakte/android/ui/ListImageLoader$1;
.super Ljava/lang/Object;
.source "ListImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/ListImageLoader;->load(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoader;

.field private final synthetic val$firstVisibleItem:I

.field private final synthetic val$numVisibleItems:I

.field private final synthetic val$scrollFwd:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ListImageLoader;IIZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iput p2, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    iput p3, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    iput-boolean p4, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$scrollFwd:Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 64
    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 65
    .local v15, "start":I
    const/4 v3, 0x0

    .line 66
    .local v3, "anyRunning":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v5, v0, :cond_4

    .line 67
    :cond_0
    if-nez v3, :cond_6

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 76
    .local v4, "end":I
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 77
    .local v11, "lStart":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 79
    .local v10, "lEnd":I
    move v5, v11

    :goto_1
    if-lt v5, v10, :cond_8

    .line 88
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$scrollFwd:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v21, v0

    add-int v11, v20, v21

    .line 90
    move v10, v4

    .line 95
    :goto_2
    if-le v10, v11, :cond_1

    .line 97
    move v5, v11

    :goto_3
    if-lt v5, v10, :cond_b

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$scrollFwd:Z

    move/from16 v20, v0

    if-nez v20, :cond_d

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v21, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int v11, v20, v21

    .line 109
    move v10, v4

    .line 114
    :goto_4
    if-le v10, v11, :cond_2

    .line 116
    move v5, v11

    :goto_5
    if-lt v5, v10, :cond_e

    .line 130
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v21

    monitor-enter v21
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    const/4 v5, 0x0

    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v5, v0, :cond_10

    .line 133
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 134
    .local v8, "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 135
    .local v13, "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move v5, v15

    :goto_7
    if-lt v5, v4, :cond_11

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 144
    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_3
    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_15

    .line 146
    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_16

    .line 130
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :try_start_4
    invoke-static {}, Lcom/vkontakte/android/ui/ListImageLoader;->access$4()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->size()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 152
    .local v12, "numThreads":I
    const/4 v5, 0x0

    :goto_a
    if-lt v5, v12, :cond_17

    .line 159
    .end local v3    # "anyRunning":Z
    .end local v4    # "end":I
    .end local v5    # "i":I
    .end local v8    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "lEnd":I
    .end local v11    # "lStart":I
    .end local v12    # "numThreads":I
    .end local v13    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v15    # "start":I
    :goto_b
    return-void

    .line 66
    .restart local v3    # "anyRunning":Z
    .restart local v5    # "i":I
    .restart local v15    # "start":I
    :cond_4
    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v20, :cond_5

    const/4 v3, 0x0

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_c

    .line 68
    :cond_6
    const-wide/16 v20, 0xa

    :try_start_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 69
    :goto_d
    const/4 v3, 0x0

    .line 70
    const/4 v5, 0x0

    :goto_e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v5, v0, :cond_0

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v20, v0

    aget-boolean v20, v20, v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-nez v20, :cond_7

    const/4 v3, 0x0

    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_7
    const/4 v3, 0x1

    goto :goto_f

    .line 80
    .restart local v4    # "end":I
    .restart local v10    # "lEnd":I
    .restart local v11    # "lStart":I
    :cond_8
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_9

    .line 79
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 81
    :cond_9
    new-instance v17, Lcom/vkontakte/android/ui/ListImageLoader$Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader$Task;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;Lcom/vkontakte/android/ui/ListImageLoader$Task;)V

    .line 82
    .local v17, "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    move-object/from16 v0, v17

    iput v5, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    .line 83
    move-object/from16 v0, v17

    iput v7, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v7}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 92
    .end local v7    # "j":I
    .end local v17    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :cond_a
    move v11, v15

    .line 93
    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    goto/16 :goto_2

    .line 98
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_c

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 99
    :cond_c
    new-instance v17, Lcom/vkontakte/android/ui/ListImageLoader$Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader$Task;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;Lcom/vkontakte/android/ui/ListImageLoader$Task;)V

    .line 100
    .restart local v17    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    move-object/from16 v0, v17

    iput v5, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    .line 101
    move-object/from16 v0, v17

    iput v7, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v7}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 111
    .end local v7    # "j":I
    .end local v17    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :cond_d
    move v11, v15

    .line 112
    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    goto/16 :goto_4

    .line 117
    :cond_e
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_f

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 118
    :cond_f
    new-instance v17, Lcom/vkontakte/android/ui/ListImageLoader$Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader$Task;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;Lcom/vkontakte/android/ui/ListImageLoader$Task;)V

    .line 119
    .restart local v17    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    move-object/from16 v0, v17

    iput v5, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    .line 120
    move-object/from16 v0, v17

    iput v7, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v7}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 117
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 126
    .end local v7    # "j":I
    .end local v10    # "lEnd":I
    .end local v11    # "lStart":I
    .end local v17    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :catch_0
    move-exception v19

    .local v19, "x":Ljava/lang/Exception;
    goto/16 :goto_b

    .line 132
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v10    # "lEnd":I
    .restart local v11    # "lStart":I
    :cond_10
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    move-object/from16 v20, v0

    const/16 v22, 0x0

    aput-boolean v22, v20, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 136
    .restart local v8    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v13    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v6

    .line 137
    .local v6, "icount":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_13
    if-lt v7, v6, :cond_12

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 138
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v7}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v18

    .line 139
    .local v18, "url":Ljava/lang/String;
    if-nez v18, :cond_14

    .line 137
    :cond_13
    :goto_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 140
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 130
    .end local v6    # "icount":I
    .end local v7    # "j":I
    .end local v8    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v13    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v18    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v20
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 158
    .end local v3    # "anyRunning":Z
    .end local v4    # "end":I
    .end local v5    # "i":I
    .end local v10    # "lEnd":I
    .end local v11    # "lStart":I
    .end local v15    # "start":I
    :catch_1
    move-exception v20

    goto/16 :goto_b

    .line 144
    .restart local v3    # "anyRunning":Z
    .restart local v4    # "end":I
    .restart local v5    # "i":I
    .restart local v8    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "lEnd":I
    .restart local v11    # "lStart":I
    .restart local v13    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v15    # "start":I
    :cond_15
    :try_start_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 145
    .local v14, "s":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 146
    .end local v14    # "s":Ljava/lang/String;
    :cond_16
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 147
    .restart local v14    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_9

    .line 153
    .end local v14    # "s":Ljava/lang/String;
    .restart local v12    # "numThreads":I
    :cond_17
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/ListImageLoader;->access$3(Lcom/vkontakte/android/ui/ListImageLoader;)[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/ImageCache$RequestWrapper;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/ImageCache$RequestWrapper;-><init>()V

    aput-object v21, v20, v5

    .line 154
    new-instance v16, Ljava/lang/Thread;

    new-instance v20, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    .local v16, "t":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    .line 68
    .end local v4    # "end":I
    .end local v8    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "lEnd":I
    .end local v11    # "lStart":I
    .end local v12    # "numThreads":I
    .end local v13    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v16    # "t":Ljava/lang/Thread;
    :catch_2
    move-exception v20

    goto/16 :goto_d
.end method
