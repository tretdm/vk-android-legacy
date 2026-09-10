.class Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;
.super Ljava/lang/Object;
.source "PhotoViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotoViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocPhotoLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private canceled:Z

.field in:Ljava/io/InputStream;

.field private photo:Lcom/vkontakte/android/Photo;

.field private progr:Lcom/vkontakte/android/ImageCache$ProgressCallback;

.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)V
    .locals 1

    .prologue
    .line 928
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->canceled:Z

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    .line 930
    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;)Lcom/vkontakte/android/fragments/PhotoViewerFragment;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1010
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->canceled:Z

    .line 1015
    :cond_0
    return v1

    .line 1011
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1028
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->get(JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->canceled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 934
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->canceled:Z

    .line 935
    const/4 v11, 0x0

    .line 937
    .local v11, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v15, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    const-string v18, ".vkontakte"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 938
    .local v15, "vkdir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 939
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    const-string v18, ".vkontakte/temp_doc"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 940
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 941
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .local v12, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$0(Lcom/vkontakte/android/fragments/PhotoViewerFragment;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 943
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 944
    .local v4, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 945
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    .line 946
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    .line 947
    .local v7, "len":I
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "url="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Len="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->progr:Lcom/vkontakte/android/ImageCache$ProgressCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->progr:Lcom/vkontakte/android/ImageCache$ProgressCallback;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v7}, Lcom/vkontakte/android/ImageCache$ProgressCallback;->onProgressChanged(II)V

    .line 950
    :cond_1
    const/4 v13, 0x0

    .line 951
    .local v13, "read":I
    const/4 v9, 0x0

    .local v9, "loaded":I
    const/4 v3, 0x0

    .line 952
    .local v3, "c":I
    const/16 v17, 0x2800

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 953
    .local v2, "buf":[B
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-gtz v13, :cond_7

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 962
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 963
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 964
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Downloaded "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 967
    .local v10, "opts":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 968
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 969
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v17, :cond_a

    .line 1000
    :cond_3
    if-eqz v12, :cond_4

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1003
    :cond_4
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    :cond_5
    :goto_2
    move-object v11, v12

    .line 1006
    .end local v2    # "buf":[B
    .end local v3    # "c":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v9    # "loaded":I
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "read":I
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "vkdir":Ljava/io/File;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    :cond_6
    :goto_3
    return-void

    .line 954
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "c":I
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "len":I
    .restart local v9    # "loaded":I
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "read":I
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "vkdir":Ljava/io/File;
    :cond_7
    const/16 v17, 0x0

    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v12, v2, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 955
    add-int/2addr v9, v13

    .line 956
    add-int/lit8 v3, v3, 0x1

    .line 957
    rem-int/lit8 v17, v3, 0x5

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->progr:Lcom/vkontakte/android/ImageCache$ProgressCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->progr:Lcom/vkontakte/android/ImageCache$ProgressCallback;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v7}, Lcom/vkontakte/android/ImageCache$ProgressCallback;->onProgressChanged(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 986
    .end local v2    # "buf":[B
    .end local v3    # "c":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "len":I
    .end local v9    # "loaded":I
    .end local v13    # "read":I
    .end local v14    # "url":Ljava/net/URL;
    :catch_0
    move-exception v16

    move-object v11, v12

    .line 987
    .end local v6    # "file":Ljava/io/File;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "vkdir":Ljava/io/File;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    .local v16, "x":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 988
    const-string v17, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$2;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;)V

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1000
    :cond_8
    if-eqz v11, :cond_9

    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1003
    :cond_9
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 1004
    :catch_1
    move-exception v17

    goto :goto_3

    .line 970
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .end local v16    # "x":Ljava/lang/Exception;
    .restart local v2    # "buf":[B
    .restart local v3    # "c":I
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "len":I
    .restart local v9    # "loaded":I
    .restart local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "read":I
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "vkdir":Ljava/io/File;
    :cond_a
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 971
    .local v5, "display":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->useSmall:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    const/16 v17, 0x200

    :goto_6
    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 972
    .local v8, "limit":I
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 973
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v0, v8, :cond_b

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v8, :cond_c

    .line 974
    :cond_b
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 976
    :cond_c
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->bmp:Landroid/graphics/Bitmap;

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->access$3(Lcom/vkontakte/android/fragments/PhotoViewerFragment;Z)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->this$0:Lcom/vkontakte/android/fragments/PhotoViewerFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/fragments/PhotoViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    new-instance v18, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader$1;-><init>(Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;)V

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1000
    :cond_d
    if-eqz v12, :cond_e

    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 1003
    :cond_e
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-object v11, v12

    .line 1004
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 971
    .end local v8    # "limit":I
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :cond_f
    const/16 v17, 0x400

    goto/16 :goto_6

    .line 998
    .end local v2    # "buf":[B
    .end local v3    # "c":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "display":Landroid/util/DisplayMetrics;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v9    # "loaded":I
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "read":I
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "vkdir":Ljava/io/File;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v17

    .line 1000
    :goto_8
    if-eqz v11, :cond_10

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1003
    :cond_10
    :goto_9
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->in:Ljava/io/InputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1005
    :cond_11
    :goto_a
    throw v17

    .line 1004
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "c":I
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "display":Landroid/util/DisplayMetrics;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "len":I
    .restart local v8    # "limit":I
    .restart local v9    # "loaded":I
    .restart local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "read":I
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "vkdir":Ljava/io/File;
    :catch_2
    move-exception v17

    move-object v11, v12

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 1001
    .end local v5    # "display":Landroid/util/DisplayMetrics;
    .end local v8    # "limit":I
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v17

    goto/16 :goto_1

    .end local v2    # "buf":[B
    .end local v3    # "c":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v9    # "loaded":I
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "read":I
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "vkdir":Ljava/io/File;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v16    # "x":Ljava/lang/Exception;
    :catch_4
    move-exception v17

    goto/16 :goto_5

    .end local v16    # "x":Ljava/lang/Exception;
    :catch_5
    move-exception v18

    goto :goto_9

    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "c":I
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "display":Landroid/util/DisplayMetrics;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "len":I
    .restart local v8    # "limit":I
    .restart local v9    # "loaded":I
    .restart local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "read":I
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "vkdir":Ljava/io/File;
    :catch_6
    move-exception v17

    goto :goto_7

    .line 1004
    .end local v2    # "buf":[B
    .end local v3    # "c":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "display":Landroid/util/DisplayMetrics;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v8    # "limit":I
    .end local v9    # "loaded":I
    .end local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "read":I
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "vkdir":Ljava/io/File;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v18

    goto :goto_a

    .line 998
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "vkdir":Ljava/io/File;
    :catchall_1
    move-exception v17

    move-object v11, v12

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 986
    .end local v6    # "file":Ljava/io/File;
    .end local v15    # "vkdir":Ljava/io/File;
    :catch_8
    move-exception v16

    goto/16 :goto_4

    .line 1004
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "c":I
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "len":I
    .restart local v9    # "loaded":I
    .restart local v10    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "read":I
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "vkdir":Ljava/io/File;
    :catch_9
    move-exception v17

    goto/16 :goto_2

    .restart local v5    # "display":Landroid/util/DisplayMetrics;
    .restart local v8    # "limit":I
    :cond_12
    move-object v11, v12

    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public setProgressCallback(Lcom/vkontakte/android/ImageCache$ProgressCallback;)V
    .locals 0
    .param p1, "c"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoViewerFragment$DocPhotoLoader;->progr:Lcom/vkontakte/android/ImageCache$ProgressCallback;

    .line 1044
    return-void
.end method
