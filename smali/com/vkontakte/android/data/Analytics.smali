.class public Lcom/vkontakte/android/data/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/data/Analytics$EventBuilder;,
        Lcom/vkontakte/android/data/Analytics$StatsBackgroundRunner;
    }
.end annotation


# static fields
.field private static collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static events:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static logWriteQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static postedRunner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

.field private static queueAccess:Ljava/util/concurrent/Semaphore;

.field private static thread:Lcom/vkontakte/android/background/WorkerThread;

.field private static unique:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Analytics;->events:Ljava/util/HashSet;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Analytics;->unique:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Analytics;->logWriteQueue:Ljava/util/Vector;

    .line 32
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    .line 35
    new-instance v0, Lcom/vkontakte/android/background/WorkerThread;

    const-string v1, "Analytics background"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vkontakte/android/data/Analytics;->thread:Lcom/vkontakte/android/background/WorkerThread;

    .line 36
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->thread:Lcom/vkontakte/android/background/WorkerThread;

    invoke-virtual {v0}, Lcom/vkontakte/android/background/WorkerThread;->start()V

    .line 37
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->thread:Lcom/vkontakte/android/background/WorkerThread;

    new-instance v1, Lcom/vkontakte/android/data/Analytics$1;

    invoke-direct {v1}, Lcom/vkontakte/android/data/Analytics$1;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;I)V

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->events:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->logWriteQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .prologue
    .line 24
    sput-object p0, Lcom/vkontakte/android/data/Analytics;->postedRunner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->unique:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lcom/vkontakte/android/data/Analytics;->flushFile()V

    return-void
.end method

.method static synthetic access$900(Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/vkontakte/android/data/Analytics;->trackEvent(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    .line 110
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->events:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 111
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 112
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->unique:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 114
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "analytics.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 115
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "analytics_collapsed.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->postedRunner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->postedRunner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->cancel()V

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/data/Analytics;->postedRunner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .line 121
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static flushFile()V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->postedRunner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/vkontakte/android/data/Analytics$StatsBackgroundRunner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/data/Analytics$StatsBackgroundRunner;-><init>(Lcom/vkontakte/android/data/Analytics$1;)V

    sput-object v0, Lcom/vkontakte/android/data/Analytics;->postedRunner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .line 94
    sget-object v0, Lcom/vkontakte/android/data/Analytics;->thread:Lcom/vkontakte/android/background/WorkerThread;

    sget-object v1, Lcom/vkontakte/android/data/Analytics;->postedRunner:Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;->toRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;I)V

    .line 96
    :cond_0
    return-void
.end method

.method public static getEvents(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    sget-object v2, Lcom/vkontakte/android/data/Analytics;->events:Ljava/util/HashSet;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    sget-object v2, Lcom/vkontakte/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "k":Ljava/lang/String;
    sget-object v2, Lcom/vkontakte/android/data/Analytics;->collapsedEvents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;
    .locals 2
    .param p0, "ev"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Lcom/vkontakte/android/data/Analytics$EventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/data/Analytics$EventBuilder;-><init>(Ljava/lang/String;Lcom/vkontakte/android/data/Analytics$1;)V

    return-object v0
.end method

.method private static trackEvent(Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "e"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "needWrite":Z
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    sget-object v1, Lcom/vkontakte/android/data/Analytics;->events:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lcom/vkontakte/android/data/Analytics;->logWriteQueue:Ljava/util/Vector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x1

    .line 85
    :cond_0
    sget-object v1, Lcom/vkontakte/android/data/Analytics;->queueAccess:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 86
    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Lcom/vkontakte/android/data/Analytics;->flushFile()V

    .line 89
    :cond_1
    return-void

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0
.end method
