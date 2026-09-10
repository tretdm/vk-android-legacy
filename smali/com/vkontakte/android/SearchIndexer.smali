.class public Lcom/vkontakte/android/SearchIndexer;
.super Ljava/lang/Object;
.source "SearchIndexer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vkontakte/android/Indexable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final translit1:[Ljava/lang/String;

.field private static final translit2:[Ljava/lang/String;


# instance fields
.field private index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0449"

    aput-object v1, v0, v3

    const-string v1, "\u0436"

    aput-object v1, v0, v4

    const-string v1, "\u0447"

    aput-object v1, v0, v5

    const-string v1, "\u0448"

    aput-object v1, v0, v6

    const-string v1, "\u044e"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u044f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0431"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0432"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0433"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0434"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u0437"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u0439"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u043c"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u043d"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u043f"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u0440"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u0441"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u0443"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u0444"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u0445"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u0446"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u044a"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u044b"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u044c"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u044d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/SearchIndexer;->translit1:[Ljava/lang/String;

    .line 21
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sch"

    aput-object v1, v0, v3

    const-string v1, "zh"

    aput-object v1, v0, v4

    const-string v1, "ch"

    aput-object v1, v0, v5

    const-string v1, "sh"

    aput-object v1, v0, v6

    const-string v1, "yu"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ya"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/SearchIndexer;->translit2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkontakte/android/SearchIndexer;, "Lcom/vkontakte/android/SearchIndexer<TT;>;"
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SearchIndexer;->index:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/SearchIndexer;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/SearchIndexer;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/SearchIndexer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkontakte/android/SearchIndexer;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/SearchIndexer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/SearchIndexer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkontakte/android/SearchIndexer;->index:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/SearchIndexer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/SearchIndexer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkontakte/android/SearchIndexer;->objects:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/vkontakte/android/Indexable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/vkontakte/android/SearchIndexer;, "Lcom/vkontakte/android/SearchIndexer<TT;>;"
    .local p1, "obj":Lcom/vkontakte/android/Indexable;, "TT;"
    invoke-interface {p1}, Lcom/vkontakte/android/Indexable;->getIndexChars()[C

    move-result-object v2

    .line 65
    .local v2, "chars":[C
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-char v1, v0, v3

    .line 66
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "s":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/SearchIndexer;->index:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/SearchIndexer;->index:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/SearchIndexer;->index:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/SearchIndexer;->index:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/SearchIndexer;->index:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "c":C
    .end local v5    # "s":Ljava/lang/String;
    :cond_3
    return-void

    .line 71
    .restart local v1    # "c":C
    .restart local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public bind(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/vkontakte/android/SearchIndexer;, "Lcom/vkontakte/android/SearchIndexer<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/vkontakte/android/SearchIndexer;->objects:Ljava/util/List;

    .line 36
    return-void
.end method

.method public build()V
    .locals 2

    .prologue
    .line 42
    .local p0, "this":Lcom/vkontakte/android/SearchIndexer;, "Lcom/vkontakte/android/SearchIndexer<TT;>;"
    iget-object v0, p0, Lcom/vkontakte/android/SearchIndexer;->objects:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/SearchIndexer$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SearchIndexer$1;-><init>(Lcom/vkontakte/android/SearchIndexer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "q"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkontakte/android/SearchIndexer;, "Lcom/vkontakte/android/SearchIndexer<TT;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 82
    move-object v6, p1

    .local v6, "qTranslit1":Ljava/lang/String;
    move-object v7, p1

    .line 84
    .local v7, "qTranslit2":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v9, Lcom/vkontakte/android/SearchIndexer;->translit1:[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_1

    .line 85
    sget-object v9, Lcom/vkontakte/android/SearchIndexer;->translit1:[Ljava/lang/String;

    aget-object v9, v9, v1

    sget-object v10, Lcom/vkontakte/android/SearchIndexer;->translit2:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 86
    sget-object v9, Lcom/vkontakte/android/SearchIndexer;->translit2:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 87
    sget-object v9, Lcom/vkontakte/android/SearchIndexer;->translit2:[Ljava/lang/String;

    aget-object v9, v9, v1

    sget-object v10, Lcom/vkontakte/android/SearchIndexer;->translit1:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v5, v7

    .line 94
    .local v5, "qTranslit":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9

    .line 96
    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "firstChar":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkontakte/android/SearchIndexer;->index:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 98
    .local v3, "m":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v3, :cond_5

    .line 99
    :try_start_0
    iget-object v9, p0, Lcom/vkontakte/android/SearchIndexer;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Indexable;

    .line 101
    .local v4, "obj":Lcom/vkontakte/android/Indexable;, "TT;"
    if-eqz v4, :cond_2

    invoke-interface {v4, p1}, Lcom/vkontakte/android/Indexable;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 90
    .end local v0    # "firstChar":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v4    # "obj":Lcom/vkontakte/android/Indexable;, "TT;"
    .end local v5    # "qTranslit":Ljava/lang/String;
    .end local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_3
    move-object v5, v6

    .restart local v5    # "qTranslit":Ljava/lang/String;
    goto :goto_1

    .line 103
    .restart local v0    # "firstChar":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "m":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .restart local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_4
    iget-object v9, p0, Lcom/vkontakte/android/SearchIndexer;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->release()V

    .line 105
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 106
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v9, p0, Lcom/vkontakte/android/SearchIndexer;->index:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "m":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 108
    .restart local v3    # "m":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v3, :cond_8

    .line 109
    :try_start_1
    iget-object v9, p0, Lcom/vkontakte/android/SearchIndexer;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Indexable;

    .line 111
    .restart local v4    # "obj":Lcom/vkontakte/android/Indexable;, "TT;"
    if-eqz v4, :cond_6

    invoke-interface {v4, v5}, Lcom/vkontakte/android/Indexable;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 113
    .end local v4    # "obj":Lcom/vkontakte/android/Indexable;, "TT;"
    :cond_7
    iget-object v9, p0, Lcom/vkontakte/android/SearchIndexer;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->release()V

    .line 119
    .end local v0    # "firstChar":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :cond_8
    :goto_6
    return-object v8

    .line 117
    :cond_9
    iget-object v9, p0, Lcom/vkontakte/android/SearchIndexer;->objects:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 109
    .restart local v0    # "firstChar":Ljava/lang/String;
    .restart local v3    # "m":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :catch_0
    move-exception v9

    goto :goto_4

    .line 99
    :catch_1
    move-exception v9

    goto :goto_2
.end method
