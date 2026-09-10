.class public final Lcom/jakewharton/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/jakewharton/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/jakewharton/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/jakewharton/DiskLruCache;Lcom/jakewharton/DiskLruCache$Entry;)V
    .locals 1
    .param p2, "entry"    # Lcom/jakewharton/DiskLruCache$Entry;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-object p2, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    .line 716
    invoke-static {p2}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->written:[Z

    .line 717
    return-void

    .line 716
    :cond_0
    invoke-static {p1}, Lcom/jakewharton/DiskLruCache;->access$7(Lcom/jakewharton/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/jakewharton/DiskLruCache;Lcom/jakewharton/DiskLruCache$Entry;Lcom/jakewharton/DiskLruCache$Editor;)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0, p1, p2}, Lcom/jakewharton/DiskLruCache$Editor;-><init>(Lcom/jakewharton/DiskLruCache;Lcom/jakewharton/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$0(Lcom/jakewharton/DiskLruCache$Editor;Z)V
    .locals 0

    .prologue
    .line 711
    iput-boolean p1, p0, Lcom/jakewharton/DiskLruCache$Editor;->hasErrors:Z

    return-void
.end method

.method static synthetic access$2(Lcom/jakewharton/DiskLruCache$Editor;)Lcom/jakewharton/DiskLruCache$Entry;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jakewharton/DiskLruCache$Editor;)[Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jakewharton/DiskLruCache;->access$10(Lcom/jakewharton/DiskLruCache;Lcom/jakewharton/DiskLruCache$Editor;Z)V

    .line 814
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 819
    :try_start_0
    invoke-virtual {p0}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 799
    iget-boolean v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jakewharton/DiskLruCache;->access$10(Lcom/jakewharton/DiskLruCache;Lcom/jakewharton/DiskLruCache$Editor;Z)V

    .line 801
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/jakewharton/DiskLruCache$Entry;->access$2(Lcom/jakewharton/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 805
    :goto_0
    iput-boolean v2, p0, Lcom/jakewharton/DiskLruCache$Editor;->committed:Z

    .line 806
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    invoke-static {v0, p0, v2}, Lcom/jakewharton/DiskLruCache;->access$10(Lcom/jakewharton/DiskLruCache;Lcom/jakewharton/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p0, p1}, Lcom/jakewharton/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 745
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jakewharton/DiskLruCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 724
    iget-object v3, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    monitor-enter v3

    .line 725
    :try_start_0
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$1(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 726
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 724
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 728
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 729
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    :goto_0
    return-object v1

    .line 732
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/jakewharton/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    iget-object v5, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    monitor-enter v5

    .line 757
    :try_start_0
    iget-object v4, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    invoke-static {v4}, Lcom/jakewharton/DiskLruCache$Entry;->access$1(Lcom/jakewharton/DiskLruCache$Entry;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 758
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 756
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 760
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    invoke-static {v4}, Lcom/jakewharton/DiskLruCache$Entry;->access$0(Lcom/jakewharton/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 761
    iget-object v4, p0, Lcom/jakewharton/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 763
    :cond_1
    iget-object v4, p0, Lcom/jakewharton/DiskLruCache$Editor;->entry:Lcom/jakewharton/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/jakewharton/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 766
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 777
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/jakewharton/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/jakewharton/DiskLruCache$Editor$FaultHidingOutputStream;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 767
    :catch_0
    move-exception v1

    .line 769
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/jakewharton/DiskLruCache$Editor;->this$0:Lcom/jakewharton/DiskLruCache;

    invoke-static {v4}, Lcom/jakewharton/DiskLruCache;->access$8(Lcom/jakewharton/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 771
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 772
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 774
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {}, Lcom/jakewharton/DiskLruCache;->access$9()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 787
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/jakewharton/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 790
    invoke-static {v1}, Lcom/jakewharton/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 792
    return-void

    .line 789
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    .line 790
    :goto_0
    invoke-static {v0}, Lcom/jakewharton/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 791
    throw v2

    .line 789
    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method
