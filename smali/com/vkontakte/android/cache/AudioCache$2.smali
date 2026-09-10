.class Lcom/vkontakte/android/cache/AudioCache$2;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/cache/AudioCache;->endPlayback(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$aid:I

.field private final synthetic val$oid:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$oid:I

    iput p2, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$aid:I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 189
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "End playback for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".vkontakte/cache/audio/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    iget v2, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$oid:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    iget v2, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$aid:I

    if-ne v1, v2, :cond_0

    .line 193
    const-string v1, "vk"

    const-string v2, "stopping downloader"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/cache/AudioCache$Downloader;->stop()V

    .line 196
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v1

    iget-object v1, v1, Lcom/vkontakte/android/cache/AudioCache$Downloader;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    const-string v1, "vk"

    const-string v2, "downloader stopped"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 204
    const-string v1, "vk"

    const-string v2, "temp file deleted"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "End playback for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/cache/AudioCache$2;->val$aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " done!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 197
    :catch_0
    move-exception v1

    goto :goto_0
.end method
