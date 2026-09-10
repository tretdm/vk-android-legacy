.class Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/cache/AudioCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyRunner"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field private retries:I

.field sck:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p1, p0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    .line 794
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    .line 795
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 798
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 799
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 800
    return-void

    .line 796
    .end local v0    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "req"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1015
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1016
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "([A-Za-z-]+): ([^\r]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1017
    .local v2, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1018
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1021
    return-object v0

    .line 1019
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 45

    .prologue
    .line 804
    const/4 v14, 0x0

    .line 806
    .local v14, "is":Ljava/io/FileInputStream;
    const/16 v37, 0x0

    .line 807
    .local v37, "tmp":I
    :try_start_0
    const-string v31, ""

    .line 808
    .local v31, "s":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/InputStream;->read()I

    move-result v37

    const/16 v40, -0x1

    move/from16 v0, v37

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    .line 814
    :goto_0
    const-string v40, "vk"

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v40

    if-nez v40, :cond_3

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/InputStream;->close()V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/OutputStream;->close()V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/Socket;->close()V

    .line 1012
    .end local v31    # "s":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 809
    .restart local v31    # "s":Ljava/lang/String;
    :cond_2
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 810
    const-string v40, "\r\n\r\n"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    goto :goto_0

    .line 821
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 824
    .local v11, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    const-string v40, "\r\n"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    aget-object v40, v40, v41

    const-string v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x1

    aget-object v40, v40, v41

    const-string v41, "/"

    const-string v42, ""

    invoke-virtual/range {v40 .. v42}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 825
    const-string v40, ".mp3"

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4

    const/16 v40, 0x0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v41

    add-int/lit8 v41, v41, -0x4

    move-object/from16 v0, v31

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 826
    :cond_4
    const-string v40, "android.util.Base64"

    invoke-static/range {v40 .. v40}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v40

    const-string v41, "decode"

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    const-class v44, Ljava/lang/String;

    aput-object v44, v42, v43

    const/16 v43, 0x1

    sget-object v44, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v44, v42, v43

    invoke-virtual/range {v40 .. v42}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v40

    const/16 v41, 0x0

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v31, v42, v43

    const/16 v43, 0x1

    const/16 v44, 0x8

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-virtual/range {v40 .. v42}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 827
    .local v6, "d":[B
    new-instance v38, Ljava/lang/String;

    const-string v40, "UTF-8"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 831
    .end local v6    # "d":[B
    .local v38, "u":Ljava/lang/String;
    :goto_2
    :try_start_2
    const-string v40, "vk"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "URL "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v40, "___"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 833
    .local v6, "d":[Ljava/lang/String;
    const/16 v40, 0x1

    aget-object v40, v6, v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .local v18, "oid":I
    const/16 v40, 0x2

    aget-object v40, v6, v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 835
    .local v3, "aid":I
    new-instance v22, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 837
    .local v22, "range":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    new-instance v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    const/16 v40, 0x0

    move-object/from16 v0, v40

    invoke-direct {v12, v0}, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;-><init>(Lcom/vkontakte/android/cache/AudioCache$RangesInfo;)V

    .line 838
    .local v12, "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_e

    .line 839
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v10, "fileRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    iput-object v10, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .line 841
    move/from16 v0, v18

    iput v0, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->oid:I

    .line 842
    iput v3, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->aid:I

    .line 843
    sget-object v40, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual/range {v40 .. v40}, Lcom/vkontakte/android/AudioPlayerService;->getCurrentFile()Lcom/vkontakte/android/AudioFile;

    move-result-object v40

    move-object/from16 v0, v40

    iput-object v0, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->file:Lcom/vkontakte/android/AudioFile;

    .line 844
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :goto_3
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v40

    const-string v41, ".vkontakte/cache/audio/"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 851
    .local v7, "dir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v40

    if-nez v40, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 852
    :cond_5
    new-instance v8, Ljava/io/File;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v41, "_"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-direct {v8, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 853
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    .line 854
    .local v9, "fileExisted":Z
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v40

    if-nez v40, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 856
    :cond_6
    const/16 v24, 0x0

    .local v24, "rangeStart":I
    const/16 v23, -0x1

    .line 858
    .local v23, "rangeEnd":I
    const-string v40, "range"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 859
    const-string v40, "range"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 860
    .local v21, "r":Ljava/lang/String;
    const-string v40, "bytes=([0-9]+)-([0-9]+){0,1}"

    invoke-static/range {v40 .. v40}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 861
    .local v20, "ptn1":Ljava/util/regex/Pattern;
    const-string v40, "range"

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 862
    .local v17, "matcher1":Ljava/util/regex/Matcher;
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 863
    const/16 v40, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 864
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v40

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_7

    .line 865
    const/16 v40, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 867
    :cond_7
    const-string v40, "vk"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Request Range = "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " - "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    new-instance v27, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    const/16 v40, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/vkontakte/android/cache/AudioCache$FileRange;-><init>(Lcom/vkontakte/android/cache/AudioCache$FileRange;)V

    .line 869
    .local v27, "reqRange":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    move/from16 v0, v24

    move-object/from16 v1, v27

    iput v0, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 870
    move/from16 v0, v23

    move-object/from16 v1, v27

    iput v0, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    .line 873
    .end local v17    # "matcher1":Ljava/util/regex/Matcher;
    .end local v20    # "ptn1":Ljava/util/regex/Pattern;
    .end local v21    # "r":Ljava/lang/String;
    .end local v27    # "reqRange":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_8
    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    .line 874
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    new-instance v40, Ljava/net/URL;

    const/16 v41, 0x0

    aget-object v41, v6, v41

    invoke-direct/range {v40 .. v41}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v40}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 877
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const-string v41, "Range"

    new-instance v40, Ljava/lang/StringBuilder;

    const-string v42, "bytes="

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "-"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    if-lez v23, :cond_f

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    :goto_4
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const/16 v32, 0x0

    .line 879
    .local v32, "sin":Ljava/io/InputStream;
    const-string v40, "vk"

    const-string v41, "Opening connection"

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const/16 v40, 0x4e20

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 881
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->retries:I

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_10

    .line 903
    :goto_5
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->retries:I

    .line 904
    const-string v40, "vk"

    const-string v41, "Open ok"

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v15

    .line 906
    .local v15, "len":I
    const-string v40, "Content-Range"

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 907
    .local v29, "respRange":Ljava/lang/String;
    move/from16 v26, v15

    .line 908
    .local v26, "realLen":I
    if-eqz v29, :cond_a

    .line 910
    const-string v40, "bytes ([0-9]+)-([0-9]+)/([0-9]+)"

    invoke-static/range {v40 .. v40}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 911
    .local v16, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v40

    if-eqz v40, :cond_a

    .line 912
    const/16 v40, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 913
    const/16 v40, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 914
    const/16 v40, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 917
    .end local v16    # "m":Ljava/util/regex/Matcher;
    :cond_a
    move/from16 v0, v26

    iput v0, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->l:I

    .line 918
    const/16 v40, 0x0

    aget-object v40, v6, v40

    move-object/from16 v0, v40

    iput-object v0, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    .line 931
    const-string v40, "vk"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Content Length = "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", real len = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const/16 v40, -0x1

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_b

    add-int/lit8 v23, v15, -0x1

    .line 933
    :cond_b
    const-string v40, "vk"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Response Range = "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " - "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v28, ""

    .line 936
    .local v28, "resp":Ljava/lang/String;
    iget-object v0, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->file:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v40, v0

    move/from16 v0, v26

    move-object/from16 v1, v40

    iput v0, v1, Lcom/vkontakte/android/AudioFile;->fileSize:I

    .line 938
    if-gtz v24, :cond_c

    if-lez v23, :cond_12

    .line 939
    :cond_c
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "HTTP/1.1 206 Partial Content\r\nContent-Range: bytes "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "-"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    if-lez v23, :cond_11

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    :goto_6
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\r\n"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 941
    const-string v41, "Content-Type: audio/mpeg\r\n"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 942
    const-string v41, "Content-Length: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sub-int v41, v23, v24

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\r\n\r\n"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 939
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 949
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v40, v0

    const-string v41, "UTF-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/OutputStream;->write([B)V

    .line 950
    new-instance v30, Ljava/io/RandomAccessFile;

    const-string v40, "rws"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v8, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 951
    .local v30, "rf":Ljava/io/RandomAccessFile;
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 952
    const-string v40, "vk"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Range start="

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", position="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v42

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/16 v33, 0x0

    .line 955
    .local v33, "tagBuf":Ljava/io/ByteArrayOutputStream;
    const/16 v35, 0x0

    .local v35, "tagLen":I
    const/16 v36, 0x0

    .line 957
    .local v36, "tagRead":I
    const/16 v25, 0x0

    .line 958
    .local v25, "read":I
    const/16 v40, 0x2800

    move/from16 v0, v40

    new-array v4, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .local v4, "buf":[B
    move-object/from16 v34, v33

    .line 960
    .end local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .local v34, "tagBuf":Ljava/io/ByteArrayOutputStream;
    :goto_8
    :try_start_3
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result v25

    if-gtz v25, :cond_13

    move-object/from16 v33, v34

    .line 997
    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :goto_9
    :try_start_4
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    .line 999
    invoke-virtual/range {v32 .. v32}, Ljava/io/InputStream;->close()V

    .line 1000
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/InputStream;->close()V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/OutputStream;->close()V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/Socket;->close()V

    .line 1004
    const-string v40, "vk"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "DL end, rStart="

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", rEnd="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", len="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sget-object v40, Lcom/vkontakte/android/cache/AudioCache;->cacheReqs:Ljava/util/Vector;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_d

    sget v40, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v18

    move/from16 v1, v40

    if-ne v0, v1, :cond_1

    :cond_d
    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    move/from16 v40, v0

    if-nez v40, :cond_1

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 1006
    const/16 v40, 0x1

    iget-object v0, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->file:Lcom/vkontakte/android/AudioFile;

    move-object/from16 v41, v0

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/cache/AudioCache;->saveFile(ZLcom/vkontakte/android/AudioFile;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1008
    .end local v3    # "aid":I
    .end local v4    # "buf":[B
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "d":[Ljava/lang/String;
    .end local v7    # "dir":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileExisted":Z
    .end local v10    # "fileRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    .end local v11    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    .end local v15    # "len":I
    .end local v18    # "oid":I
    .end local v22    # "range":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    .end local v23    # "rangeEnd":I
    .end local v24    # "rangeStart":I
    .end local v25    # "read":I
    .end local v26    # "realLen":I
    .end local v28    # "resp":Ljava/lang/String;
    .end local v29    # "respRange":Ljava/lang/String;
    .end local v30    # "rf":Ljava/io/RandomAccessFile;
    .end local v31    # "s":Ljava/lang/String;
    .end local v32    # "sin":Ljava/io/InputStream;
    .end local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .end local v35    # "tagLen":I
    .end local v36    # "tagRead":I
    .end local v38    # "u":Ljava/lang/String;
    :catch_0
    move-exception v39

    .line 1009
    .local v39, "x":Ljava/lang/Exception;
    const-string v40, "vk"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1010
    if-eqz v14, :cond_1

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v40

    goto/16 :goto_1

    .line 828
    .end local v39    # "x":Ljava/lang/Exception;
    .restart local v11    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v31    # "s":Ljava/lang/String;
    :catch_2
    move-exception v39

    .line 829
    .restart local v39    # "x":Ljava/lang/Exception;
    move-object/from16 v38, v31

    .restart local v38    # "u":Ljava/lang/String;
    goto/16 :goto_2

    .line 846
    .end local v39    # "x":Ljava/lang/Exception;
    .restart local v3    # "aid":I
    .restart local v6    # "d":[Ljava/lang/String;
    .restart local v12    # "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    .restart local v18    # "oid":I
    .restart local v22    # "range":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    :cond_e
    :try_start_6
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v40

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v42, "_"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    check-cast v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    .line 847
    .restart local v12    # "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    iget-object v10, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    .restart local v10    # "fileRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/AudioCache$FileRange;>;"
    goto/16 :goto_3

    .line 877
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "dir":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fileExisted":Z
    .restart local v23    # "rangeEnd":I
    .restart local v24    # "rangeStart":I
    :cond_f
    const-string v40, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 883
    .restart local v32    # "sin":Ljava/io/InputStream;
    :cond_10
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 884
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v32

    goto/16 :goto_5

    .line 886
    :catch_3
    move-exception v39

    .line 887
    .local v39, "x":Ljava/io/FileNotFoundException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v40, v0

    const-string v41, "HTTP/1.1 404 Not Found\r\n\r\n"

    const-string v42, "UTF-8"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/OutputStream;->write([B)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/OutputStream;->close()V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/InputStream;->close()V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/Socket;->close()V

    goto/16 :goto_1

    .line 892
    .end local v39    # "x":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v39

    .line 893
    .local v39, "x":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->retries:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->retries:I

    .line 894
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->retries:I

    move/from16 v40, v0

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_9

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v40, v0

    const-string v41, "HTTP/1.1 404 Not Found\r\n\r\n"

    const-string v42, "UTF-8"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/OutputStream;->write([B)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/OutputStream;->close()V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/io/InputStream;->close()V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/net/Socket;->close()V

    goto/16 :goto_1

    .line 940
    .end local v39    # "x":Ljava/io/IOException;
    .restart local v15    # "len":I
    .restart local v26    # "realLen":I
    .restart local v28    # "resp":Ljava/lang/String;
    .restart local v29    # "respRange":Ljava/lang/String;
    :cond_11
    const-string v40, ""

    goto/16 :goto_6

    .line 944
    :cond_12
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "HTTP/1.1 200 OK\r\nContent-Type: audio/mpeg\r\nContent-Length: "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\r\n\r\n"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 944
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v28

    goto/16 :goto_7

    .line 961
    .restart local v4    # "buf":[B
    .restart local v25    # "read":I
    .restart local v30    # "rf":Ljava/io/RandomAccessFile;
    .restart local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v35    # "tagLen":I
    .restart local v36    # "tagRead":I
    :cond_13
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v25

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 962
    const/16 v40, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v25

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 963
    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v40, v0

    if-nez v40, :cond_17

    const/16 v40, 0x0

    aget-byte v40, v4, v40

    const/16 v41, 0x49

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_17

    const/16 v40, 0x1

    aget-byte v40, v4, v40

    const/16 v41, 0x44

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_17

    const/16 v40, 0x2

    aget-byte v40, v4, v40

    const/16 v41, 0x33

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_17

    .line 965
    const/16 v40, 0x9

    aget-byte v40, v4, v40

    const/16 v41, 0x8

    aget-byte v41, v4, v41

    shl-int/lit8 v41, v41, 0x7

    or-int v40, v40, v41

    const/16 v41, 0x7

    aget-byte v41, v4, v41

    shl-int/lit8 v41, v41, 0xe

    or-int v40, v40, v41

    const/16 v41, 0x6

    aget-byte v41, v4, v41

    shl-int/lit8 v41, v41, 0x15

    or-int v35, v40, v41

    .line 966
    add-int/lit8 v35, v35, 0x14

    .line 967
    const-string v40, "vk"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Found ID3v2 tag, len="

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const v40, 0xfa000

    move/from16 v0, v35

    move/from16 v1, v40

    if-ge v0, v1, :cond_17

    .line 969
    new-instance v33, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v33 .. v33}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 971
    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :goto_a
    if-eqz v33, :cond_14

    move/from16 v0, v36

    move/from16 v1, v35

    if-ge v0, v1, :cond_14

    .line 972
    const/16 v40, 0x0

    sub-int v41, v35, v36

    :try_start_a
    move/from16 v0, v41

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v41

    move-object/from16 v0, v33

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 973
    add-int v36, v36, v25

    .line 975
    :cond_14
    if-eqz v33, :cond_15

    move/from16 v0, v36

    move/from16 v1, v35

    if-lt v0, v1, :cond_15

    .line 976
    const-string v40, "vk"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Tag read, len="

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v19, Lcom/vkontakte/android/cache/ID3Parser;

    invoke-virtual/range {v33 .. v33}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v40

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/vkontakte/android/cache/ID3Parser;-><init>([B)V

    .line 978
    .local v19, "parser":Lcom/vkontakte/android/cache/ID3Parser;
    const/16 v33, 0x0

    .line 979
    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v40

    if-eqz v40, :cond_16

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/cache/ID3Parser;->getAlbumArt()[B

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->saveCovers([BII)Z

    move-result v40

    if-eqz v40, :cond_16

    .line 980
    new-instance v13, Landroid/content/Intent;

    const-string v40, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    move-object/from16 v0, v40

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 981
    .local v13, "intent":Landroid/content/Intent;
    const-string v40, "aid"

    move-object/from16 v0, v40

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    const-string v40, "oid"

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    sget-object v40, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 988
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v19    # "parser":Lcom/vkontakte/android/cache/ID3Parser;
    :cond_15
    :goto_b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move/from16 v40, v0

    add-int v40, v40, v25

    move/from16 v0, v40

    move-object/from16 v1, v22

    iput v0, v1, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    move-object/from16 v34, v33

    .end local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8

    .line 985
    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "parser":Lcom/vkontakte/android/cache/ID3Parser;
    .restart local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :cond_16
    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/cache/ID3Parser;->getArtist()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/cache/ID3Parser;->getAlbum()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoversFromDiscogs(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_b

    .line 992
    .end local v19    # "parser":Lcom/vkontakte/android/cache/ID3Parser;
    :catch_5
    move-exception v39

    .line 994
    .local v39, "x":Ljava/lang/Exception;
    :goto_c
    :try_start_b
    const-string v40, "vk"

    const-string v41, "Audio proxy error"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_9

    .line 992
    .end local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .end local v39    # "x":Ljava/lang/Exception;
    .restart local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v39

    move-object/from16 v33, v34

    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    goto :goto_c

    .end local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    :cond_17
    move-object/from16 v33, v34

    .end local v34    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v33    # "tagBuf":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_a
.end method
