.class Lcom/vkontakte/android/ui/PhotoView$7;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView;->load([I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoView;

.field private final synthetic val$positions:[I

.field private final synthetic val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

.field private final synthetic val$thumbPositions:[I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView;[Lcom/vkontakte/android/ui/PhotoView$Texture;[I[I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object p3, p0, Lcom/vkontakte/android/ui/PhotoView$7;->val$thumbPositions:[I

    iput-object p4, p0, Lcom/vkontakte/android/ui/PhotoView$7;->val$positions:[I

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1011
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1012
    .local v10, "tm":J
    const/4 v5, 0x0

    .line 1013
    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    if-eqz v13, :cond_0

    .line 1014
    const-string v13, "vk_photoview"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Wait for init: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v10

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$29(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1018
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    array-length v15, v14

    const/4 v13, 0x0

    :goto_2
    if-lt v13, v15, :cond_2

    .line 1022
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$29(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Vector;->clear()V

    .line 1024
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$thumbPositions:[I

    array-length v15, v14

    const/4 v13, 0x0

    :goto_3
    if-lt v13, v15, :cond_3

    .line 1038
    const/4 v5, 0x0

    .line 1040
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$positions:[I

    array-length v0, v15

    move/from16 v16, v0

    const/4 v13, 0x0

    move v14, v13

    :goto_4
    move/from16 v0, v16

    if-lt v14, v0, :cond_5

    .line 1148
    :goto_5
    return-void

    .line 1013
    :cond_0
    const-wide/16 v13, 0xa

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v13

    goto :goto_0

    .line 1015
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;

    .line 1016
    .local v4, "f":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    const/4 v14, 0x0

    invoke-interface {v4, v14}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->cancel(Z)Z

    goto :goto_1

    .line 1018
    .end local v4    # "f":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    :cond_2
    aget-object v7, v14, v13

    .line 1019
    .local v7, "t":Lcom/vkontakte/android/ui/PhotoView$Texture;
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v7, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    .line 1020
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v7, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 1018
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1024
    .end local v7    # "t":Lcom/vkontakte/android/ui/PhotoView$Texture;
    :cond_3
    aget v6, v14, v13

    .line 1025
    .local v6, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$2(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1026
    .local v9, "thumb":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_4

    .line 1027
    const-string v16, "vk_photoview"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Set thumb "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/vkontakte/android/ui/PhotoView;->access$31(Lcom/vkontakte/android/ui/PhotoView;Z)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 1035
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1024
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1040
    .end local v6    # "pos":I
    .end local v9    # "thumb":Landroid/graphics/Bitmap;
    :cond_5
    aget v6, v15, v14

    .line 1041
    .restart local v6    # "pos":I
    if-ltz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$2(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v13

    invoke-interface {v13}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v13

    if-lt v6, v13, :cond_7

    .line 1040
    :cond_6
    :goto_6
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto/16 :goto_4

    .line 1043
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$11(Lcom/vkontakte/android/ui/PhotoView;)J

    move-result-wide v19

    sub-long v17, v17, v19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$12(Lcom/vkontakte/android/ui/PhotoView;)J

    move-result-wide v19

    cmp-long v13, v17, v19

    if-gez v13, :cond_8

    .line 1044
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$12(Lcom/vkontakte/android/ui/PhotoView;)J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$11(Lcom/vkontakte/android/ui/PhotoView;)J

    move-result-wide v21

    sub-long v19, v19, v21

    sub-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V

    .line 1046
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    aget-object v8, v13, v5

    .line 1047
    .local v8, "tex":Lcom/vkontakte/android/ui/PhotoView$Texture;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$2(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v13

    invoke-interface {v13, v6}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1048
    .restart local v9    # "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v13

    if-ne v6, v13, :cond_9

    .line 1049
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v13}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Landroid/app/Activity;

    new-instance v17, Lcom/vkontakte/android/ui/PhotoView$7$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v9}, Lcom/vkontakte/android/ui/PhotoView$7$1;-><init>(Lcom/vkontakte/android/ui/PhotoView$7;ILandroid/graphics/Bitmap;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1075
    :cond_9
    iput-object v9, v8, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    .line 1076
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 1077
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$2(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v13

    invoke-interface {v13, v6}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getPhoto(I)Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;

    move-result-object v2

    .line 1078
    .local v2, "b":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    new-instance v13, Lcom/vkontakte/android/ui/PhotoView$7$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Lcom/vkontakte/android/ui/PhotoView$7$2;-><init>(Lcom/vkontakte/android/ui/PhotoView$7;I)V

    invoke-interface {v2, v13}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->setProgressCallback(Lcom/vkontakte/android/ImageCache$ProgressCallback;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$29(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-interface {v2}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->run()V

    .line 1096
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$29(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1097
    invoke-interface {v2}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1098
    const-string v13, "vk_photoview"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Load for "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " canceled"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 1145
    .end local v2    # "b":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    .end local v8    # "tex":Lcom/vkontakte/android/ui/PhotoView$Texture;
    .end local v9    # "thumb":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v12

    .local v12, "x":Ljava/lang/Throwable;
    const-string v13, "vk_photoview"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1146
    .end local v12    # "x":Ljava/lang/Throwable;
    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 1102
    .restart local v2    # "b":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    .restart local v8    # "tex":Lcom/vkontakte/android/ui/PhotoView$Texture;
    .restart local v9    # "thumb":Landroid/graphics/Bitmap;
    :cond_b
    :try_start_2
    invoke-interface {v2}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1103
    .local v3, "bmp":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_11

    .line 1104
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iput v13, v8, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    .line 1105
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    iput v13, v8, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    .line 1106
    sget-boolean v13, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 1109
    sget-boolean v13, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    .line 1112
    iput-object v3, v8, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    .line 1113
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    .line 1114
    const/4 v13, 0x0

    iput-boolean v13, v8, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v13

    if-ne v6, v13, :cond_d

    const/4 v13, 0x1

    :goto_8
    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/vkontakte/android/ui/PhotoView;->access$31(Lcom/vkontakte/android/ui/PhotoView;Z)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/PhotoView;->access$34(Lcom/vkontakte/android/ui/PhotoView;)F

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/vkontakte/android/ui/PhotoView;->access$35(Lcom/vkontakte/android/ui/PhotoView;F)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v13

    if-ne v6, v13, :cond_c

    .line 1118
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$7(Lcom/vkontakte/android/ui/PhotoView;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v13}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Landroid/app/Activity;

    new-instance v17, Lcom/vkontakte/android/ui/PhotoView$7$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/PhotoView$7$3;-><init>(Lcom/vkontakte/android/ui/PhotoView$7;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1127
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v13}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 1128
    const-string v17, "vk_photoview"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v18, "Loaded bitmap "

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, " into texture "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$5(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-result-object v13

    if-ne v8, v13, :cond_f

    const-string v13, "NEXT"

    :goto_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, " (cur "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v18, ")"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v13, "vk_photoview"

    const-string v17, "show thumb"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1115
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 1118
    :cond_e
    const-wide/16 v17, 0x14

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_9

    .line 1128
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$36(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-result-object v13

    if-ne v8, v13, :cond_10

    const-string v13, "PREV"

    goto :goto_a

    :cond_10
    const-string v13, "CURRENT"

    goto :goto_a

    .line 1133
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v13}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v13

    if-ne v6, v13, :cond_a

    invoke-interface {v2}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->isCancelled()Z

    move-result v13

    if-nez v13, :cond_a

    .line 1134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v13}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Landroid/app/Activity;

    new-instance v17, Lcom/vkontakte/android/ui/PhotoView$7$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v2}, Lcom/vkontakte/android/ui/PhotoView$7$4;-><init>(Lcom/vkontakte/android/ui/PhotoView$7;ILcom/vkontakte/android/ui/PhotoView$RunnableFuture;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7
.end method
