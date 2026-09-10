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

.field final synthetic val$positions:[I

.field final synthetic val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

.field final synthetic val$thumbPositions:[I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView;[Lcom/vkontakte/android/ui/PhotoView$Texture;[I[I)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object p3, p0, Lcom/vkontakte/android/ui/PhotoView$7;->val$thumbPositions:[I

    iput-object p4, p0, Lcom/vkontakte/android/ui/PhotoView$7;->val$positions:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 1011
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1012
    .local v13, "tm":J
    const/4 v6, 0x0

    .line 1013
    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    if-nez v16, :cond_0

    const-wide/16 v16, 0xa

    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    goto :goto_0

    .line 1014
    :cond_0
    const-string v16, "vk_photoview"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Wait for init: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v13

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$2500(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;

    .line 1016
    .local v5, "f":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->cancel(Z)Z

    goto :goto_1

    .line 1018
    .end local v5    # "f":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    .local v2, "arr$":[Lcom/vkontakte/android/ui/PhotoView$Texture;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v10, v2, v7

    .line 1019
    .local v10, "t":Lcom/vkontakte/android/ui/PhotoView$Texture;
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    .line 1020
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 1018
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1022
    .end local v10    # "t":Lcom/vkontakte/android/ui/PhotoView$Texture;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$2500(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->clear()V

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$thumbPositions:[I

    .local v2, "arr$":[I
    array-length v8, v2

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_4

    aget v9, v2, v7

    .line 1025
    .local v9, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$200(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1026
    .local v12, "thumb":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_3

    .line 1027
    const-string v16, "vk_photoview"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set thumb "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    move-object/from16 v0, v16

    iput-object v12, v0, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/vkontakte/android/ui/PhotoView;->access$2700(Lcom/vkontakte/android/ui/PhotoView;Z)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 1035
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 1024
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 1038
    .end local v9    # "pos":I
    .end local v12    # "thumb":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v6, 0x0

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$positions:[I

    array-length v8, v2

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_9

    aget v9, v2, v7

    .line 1041
    .restart local v9    # "pos":I
    if-ltz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$200(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v16

    move/from16 v0, v16

    if-lt v9, v0, :cond_6

    .line 1040
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1043
    :cond_6
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ui/PhotoView;->access$1100(Lcom/vkontakte/android/ui/PhotoView;)J

    move-result-wide v18

    sub-long v16, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ui/PhotoView;->access$1200(Lcom/vkontakte/android/ui/PhotoView;)J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gez v16, :cond_7

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$1200(Lcom/vkontakte/android/ui/PhotoView;)J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/ui/PhotoView;->access$1100(Lcom/vkontakte/android/ui/PhotoView;)J

    move-result-wide v20

    sub-long v18, v18, v20

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 1046
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->val$textures:[Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-object/from16 v16, v0

    aget-object v11, v16, v6

    .line 1047
    .local v11, "tex":Lcom/vkontakte/android/ui/PhotoView$Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$200(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1048
    .restart local v12    # "thumb":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$300(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v16

    move/from16 v0, v16

    if-ne v9, v0, :cond_8

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Landroid/app/Activity;

    new-instance v17, Lcom/vkontakte/android/ui/PhotoView$7$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v12}, Lcom/vkontakte/android/ui/PhotoView$7$1;-><init>(Lcom/vkontakte/android/ui/PhotoView$7;ILandroid/graphics/Bitmap;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1075
    :cond_8
    iput-object v12, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    .line 1076
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$200(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getPhoto(I)Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;

    move-result-object v3

    .line 1078
    .local v3, "b":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    new-instance v16, Lcom/vkontakte/android/ui/PhotoView$7$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/vkontakte/android/ui/PhotoView$7$2;-><init>(Lcom/vkontakte/android/ui/PhotoView$7;I)V

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->setProgressCallback(Lcom/vkontakte/android/ImageCache$ProgressCallback;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$2500(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-interface {v3}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->run()V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$2500(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1098
    invoke-interface {v3}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->isCancelled()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1099
    const-string v16, "vk_photoview"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Load for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " canceled"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .end local v3    # "b":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    .end local v9    # "pos":I
    .end local v11    # "tex":Lcom/vkontakte/android/ui/PhotoView$Texture;
    .end local v12    # "thumb":Landroid/graphics/Bitmap;
    :cond_9
    return-void

    .line 1103
    .restart local v3    # "b":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    .restart local v9    # "pos":I
    .restart local v11    # "tex":Lcom/vkontakte/android/ui/PhotoView$Texture;
    .restart local v12    # "thumb":Landroid/graphics/Bitmap;
    :cond_a
    invoke-interface {v3}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1104
    .local v4, "bmp":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_13

    .line 1105
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    iput v0, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    .line 1106
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    iput v0, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    .line 1107
    sget-boolean v16, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v16, :cond_b

    .line 1110
    :cond_b
    sget-boolean v16, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v16, :cond_c

    .line 1113
    :cond_c
    iput-object v4, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    .line 1114
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    .line 1115
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$300(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v16

    move/from16 v0, v16

    if-ne v9, v0, :cond_e

    const/16 v16, 0x1

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$2700(Lcom/vkontakte/android/ui/PhotoView;Z)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ui/PhotoView;->access$2900(Lcom/vkontakte/android/ui/PhotoView;)F

    move-result v17

    invoke-static/range {v16 .. v17}, Lcom/vkontakte/android/ui/PhotoView;->access$3000(Lcom/vkontakte/android/ui/PhotoView;F)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$300(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v16

    move/from16 v0, v16

    if-ne v9, v0, :cond_10

    .line 1119
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$700(Lcom/vkontakte/android/ui/PhotoView;)Z

    move-result v16

    if-nez v16, :cond_f

    const-wide/16 v16, 0x14

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 1146
    .end local v3    # "b":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v11    # "tex":Lcom/vkontakte/android/ui/PhotoView$Texture;
    .end local v12    # "thumb":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v15

    .local v15, "x":Ljava/lang/Throwable;
    const-string v16, "vk_photoview"

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1147
    .end local v15    # "x":Ljava/lang/Throwable;
    :cond_d
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 1116
    .restart local v3    # "b":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    .restart local v4    # "bmp":Landroid/graphics/Bitmap;
    .restart local v11    # "tex":Lcom/vkontakte/android/ui/PhotoView$Texture;
    .restart local v12    # "thumb":Landroid/graphics/Bitmap;
    :cond_e
    const/16 v16, 0x0

    goto :goto_6

    .line 1120
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Landroid/app/Activity;

    new-instance v17, Lcom/vkontakte/android/ui/PhotoView$7$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/PhotoView$7$3;-><init>(Lcom/vkontakte/android/ui/PhotoView$7;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1128
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 1129
    const-string v17, "vk_photoview"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Loaded bitmap "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " into texture "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$500(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_11

    const-string v16, "NEXT"

    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " (cur "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ui/PhotoView;->access$300(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ")"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string v16, "vk_photoview"

    const-string v17, "show thumb"

    invoke-static/range {v16 .. v17}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1129
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$3100(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_12

    const-string v16, "PREV"

    goto :goto_9

    :cond_12
    const-string v16, "CURRENT"

    goto :goto_9

    .line 1134
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->access$300(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v16

    move/from16 v0, v16

    if-ne v9, v0, :cond_d

    invoke-interface {v3}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->isCancelled()Z

    move-result v16

    if-nez v16, :cond_d

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Landroid/app/Activity;

    new-instance v17, Lcom/vkontakte/android/ui/PhotoView$7$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v3}, Lcom/vkontakte/android/ui/PhotoView$7$4;-><init>(Lcom/vkontakte/android/ui/PhotoView$7;ILcom/vkontakte/android/ui/PhotoView$RunnableFuture;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8
.end method
