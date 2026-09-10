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

.field final synthetic val$firstVisibleItem:I

.field final synthetic val$numVisibleItems:I

.field final synthetic val$scrollFwd:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/ListImageLoader;IIZ)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iput p2, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    iput p3, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    iput-boolean p4, p0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$scrollFwd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 64
    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 65
    .local v16, "start":I
    const/4 v3, 0x0

    .line 66
    .local v3, "anyRunning":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_2

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v21, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 67
    :cond_2
    if-eqz v3, :cond_5

    .line 68
    const-wide/16 v21, 0xa

    :try_start_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 69
    :goto_2
    const/4 v3, 0x0

    .line 70
    const/4 v5, 0x0

    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_2

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v5

    if-eqz v21, :cond_4

    :cond_3
    const/4 v3, 0x1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 73
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$000(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 74
    .local v4, "end":I
    const-string v21, "vk_img_loader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LOAD R "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 77
    .local v12, "lStart":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 78
    .local v11, "lEnd":I
    const-string v21, "vk_img_loader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Load visible "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move v5, v12

    :goto_5
    if-ge v5, v11, :cond_7

    .line 80
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$000(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_6

    .line 81
    new-instance v18, Lcom/vkontakte/android/ui/ListImageLoader$Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader$Task;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;Lcom/vkontakte/android/ui/ListImageLoader$1;)V

    .line 82
    .local v18, "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    move-object/from16 v0, v18

    iput v5, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    .line 83
    move-object/from16 v0, v18

    iput v8, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$000(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v8}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$200(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 79
    .end local v18    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 88
    .end local v8    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$scrollFwd:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v22, v0

    add-int v12, v21, v22

    .line 90
    move v11, v4

    .line 95
    :goto_7
    if-le v11, v12, :cond_a

    .line 96
    const-string v21, "vk_img_loader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Load scroll dir "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    move v5, v12

    :goto_8
    if-ge v5, v11, :cond_a

    .line 98
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$000(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_9

    .line 99
    new-instance v18, Lcom/vkontakte/android/ui/ListImageLoader$Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader$Task;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;Lcom/vkontakte/android/ui/ListImageLoader$1;)V

    .line 100
    .restart local v18    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    move-object/from16 v0, v18

    iput v5, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    .line 101
    move-object/from16 v0, v18

    iput v8, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$000(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v8}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$200(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 92
    .end local v8    # "j":I
    .end local v18    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :cond_8
    move/from16 v12, v16

    .line 93
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    goto/16 :goto_7

    .line 97
    .restart local v8    # "j":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 107
    .end local v8    # "j":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$scrollFwd:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$numVisibleItems:I

    move/from16 v22, v0

    add-int v12, v21, v22

    .line 109
    move v11, v4

    .line 114
    :goto_a
    if-le v11, v12, :cond_e

    .line 115
    const-string v21, "vk_img_loader"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Load opposite dir "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    move v5, v12

    :goto_b
    if-ge v5, v11, :cond_e

    .line 117
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$000(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_c

    .line 118
    new-instance v18, Lcom/vkontakte/android/ui/ListImageLoader$Task;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader$Task;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;Lcom/vkontakte/android/ui/ListImageLoader$1;)V

    .line 119
    .restart local v18    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    move-object/from16 v0, v18

    iput v5, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    .line 120
    move-object/from16 v0, v18

    iput v8, v0, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$000(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v8}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$200(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 111
    .end local v8    # "j":I
    .end local v18    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :cond_b
    move/from16 v12, v16

    .line 112
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->val$firstVisibleItem:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_a

    .line 116
    .restart local v8    # "j":I
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 126
    .end local v8    # "j":I
    .end local v11    # "lEnd":I
    .end local v12    # "lStart":I
    :catch_0
    move-exception v20

    .line 127
    .local v20, "x":Ljava/lang/Exception;
    :try_start_4
    const-string v21, "vk_img_loader"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .end local v3    # "anyRunning":Z
    .end local v4    # "end":I
    .end local v5    # "i":I
    .end local v16    # "start":I
    .end local v20    # "x":Ljava/lang/Exception;
    :cond_d
    :goto_d
    return-void

    .line 130
    .restart local v3    # "anyRunning":Z
    .restart local v4    # "end":I
    .restart local v5    # "i":I
    .restart local v11    # "lEnd":I
    .restart local v12    # "lStart":I
    .restart local v16    # "start":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$300(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v22

    monitor-enter v22
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 132
    const/4 v5, 0x0

    :goto_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    move-object/from16 v21, v0

    const/16 v23, 0x0

    aput-boolean v23, v21, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 133
    :cond_f
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 134
    .local v9, "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 135
    .local v14, "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move/from16 v5, v16

    :goto_f
    if-ge v5, v4, :cond_13

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$000(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v7

    .line 137
    .local v7, "icount":I
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_10
    if-ge v8, v7, :cond_12

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$000(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v8}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v19

    .line 139
    .local v19, "url":Ljava/lang/String;
    if-nez v19, :cond_11

    .line 137
    :cond_10
    :goto_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 140
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$300(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 148
    .end local v7    # "icount":I
    .end local v8    # "j":I
    .end local v9    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v14    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v19    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v21
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 158
    .end local v3    # "anyRunning":Z
    .end local v4    # "end":I
    .end local v5    # "i":I
    .end local v11    # "lEnd":I
    .end local v12    # "lStart":I
    .end local v16    # "start":I
    :catch_1
    move-exception v21

    goto/16 :goto_d

    .line 135
    .restart local v3    # "anyRunning":Z
    .restart local v4    # "end":I
    .restart local v5    # "i":I
    .restart local v7    # "icount":I
    .restart local v8    # "j":I
    .restart local v9    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v11    # "lEnd":I
    .restart local v12    # "lStart":I
    .restart local v14    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v16    # "start":I
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 143
    .end local v7    # "icount":I
    .end local v8    # "j":I
    :cond_13
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$300(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 144
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 145
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v9, v15}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    invoke-virtual {v14, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 146
    .end local v15    # "s":Ljava/lang/String;
    :cond_15
    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 147
    .restart local v15    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$300(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 148
    .end local v15    # "s":Ljava/lang/String;
    :cond_16
    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 150
    :try_start_8
    invoke-static {}, Lcom/vkontakte/android/ui/ListImageLoader;->access$400()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/ui/ListImageLoader;->access$200(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 152
    .local v13, "numThreads":I
    const/4 v5, 0x0

    :goto_14
    if-ge v5, v13, :cond_d

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/ui/ListImageLoader;->access$500(Lcom/vkontakte/android/ui/ListImageLoader;)[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v21

    new-instance v22, Lcom/vkontakte/android/ImageCache$RequestWrapper;

    invoke-direct/range {v22 .. v22}, Lcom/vkontakte/android/ImageCache$RequestWrapper;-><init>()V

    aput-object v22, v21, v5

    .line 154
    new-instance v17, Ljava/lang/Thread;

    new-instance v21, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ListImageLoader$1;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v5}, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    .local v17, "t":Ljava/lang/Thread;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 68
    .end local v4    # "end":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "keepURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "lEnd":I
    .end local v12    # "lStart":I
    .end local v13    # "numThreads":I
    .end local v14    # "removeURLs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v17    # "t":Ljava/lang/Thread;
    :catch_2
    move-exception v21

    goto/16 :goto_2
.end method
