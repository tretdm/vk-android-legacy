.class Lcom/vkontakte/android/ui/GifView$SyncedInputStream;
.super Ljava/io/FilterInputStream;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncedInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/GifView;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->this$0:Lcom/vkontakte/android/ui/GifView;

    .line 421
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 423
    return-void
.end method

.method private waitForData()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$102(Lcom/vkontakte/android/ui/GifView;Z)Z

    .line 427
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/GifView;->access$200(Lcom/vkontakte/android/ui/GifView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/GifView;->access$200(Lcom/vkontakte/android/ui/GifView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 428
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->waitForData()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->waitForData()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->waitForData()V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
