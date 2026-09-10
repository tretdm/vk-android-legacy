.class Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;
.super Ljava/lang/Object;
.source "ContactsSyncAdapterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ContactsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoDownloader"
.end annotation


# instance fields
.field reqs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;",
            ">;"
        }
    .end annotation
.end field

.field results:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "_reqs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    .local p2, "_results":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object p1, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;->reqs:Ljava/util/Vector;

    .line 618
    iput-object p2, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;->results:Ljava/util/Vector;

    .line 619
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 622
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$608()I

    .line 623
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;->reqs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 624
    iget-object v1, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;->reqs:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;

    .line 625
    .local v0, "req":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    iget-object v1, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    .line 626
    iget-object v1, p0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoDownloader;->results:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 627
    const-string v2, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloaded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " [size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->data:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$800()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 631
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$800()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :goto_2
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 627
    :cond_1
    const-string v1, "NULL"

    goto :goto_1

    .line 636
    .end local v0    # "req":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/ContactsSyncAdapterService;->access$610()I

    .line 637
    const-string v1, "vk"

    const-string v2, "Photo DL thread exiting"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void

    .line 632
    .restart local v0    # "req":Lcom/vkontakte/android/ContactsSyncAdapterService$PhotoUpdateRequest;
    :catch_0
    move-exception v1

    goto :goto_2
.end method
