.class public final Lcom/jakewharton/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/jakewharton/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/jakewharton/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;
    .param p6, "lengths"    # [J

    .prologue
    .line 654
    iput-object p1, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->this$0:Lcom/jakewharton/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput-object p2, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 656
    iput-wide p3, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 657
    iput-object p5, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 658
    iput-object p6, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->lengths:[J

    .line 659
    return-void
.end method

.method synthetic constructor <init>(Lcom/jakewharton/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/jakewharton/DiskLruCache$Snapshot;)V
    .locals 0

    .prologue
    .line 654
    invoke-direct/range {p0 .. p6}, Lcom/jakewharton/DiskLruCache$Snapshot;-><init>(Lcom/jakewharton/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 692
    iget-object v2, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 695
    return-void

    .line 692
    :cond_0
    aget-object v0, v2, v1

    .line 693
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/jakewharton/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public edit()Lcom/jakewharton/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->this$0:Lcom/jakewharton/DiskLruCache;

    iget-object v1, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/jakewharton/DiskLruCache;->access$5(Lcom/jakewharton/DiskLruCache;Ljava/lang/String;J)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/jakewharton/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p0, p1}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/DiskLruCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
