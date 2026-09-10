.class Lcom/vkontakte/android/PhotoViewerActivity$12;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->savePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$12;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity$12;)Lcom/vkontakte/android/PhotoViewerActivity;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$12;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 351
    const-string v4, ""

    .line 352
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity$12;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v5, v5, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    if-eqz v5, :cond_3

    .line 353
    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity$12;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v5, v5, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity$12;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v6, v6, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v5, v5, v6

    iget-object v4, v5, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    .line 356
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "path":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "VK/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "dirFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 361
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {v4, v2}, Lcom/vkontakte/android/ImageCache;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 363
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 364
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity$12;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 365
    .local v0, "con":Landroid/media/MediaScannerConnection;
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 366
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 367
    const-string v5, "image/jpeg"

    invoke-virtual {v0, v2, v5}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 370
    .end local v0    # "con":Landroid/media/MediaScannerConnection;
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity$12;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    new-instance v6, Lcom/vkontakte/android/PhotoViewerActivity$12$1;

    invoke-direct {v6, p0, v3}, Lcom/vkontakte/android/PhotoViewerActivity$12$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity$12;Z)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 373
    return-void

    .line 355
    .end local v1    # "dirFile":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "result":Z
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/PhotoViewerActivity$12;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v5}, Lcom/vkontakte/android/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "photo"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 366
    .restart local v0    # "con":Landroid/media/MediaScannerConnection;
    .restart local v1    # "dirFile":Ljava/io/File;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "result":Z
    :cond_4
    const-wide/16 v5, 0xa

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1
.end method
