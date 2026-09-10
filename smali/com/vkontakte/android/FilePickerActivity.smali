.class public Lcom/vkontakte/android/FilePickerActivity;
.super Lcom/vkontakte/android/VKActivity;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;,
        Lcom/vkontakte/android/FilePickerActivity$ListItem;,
        Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;,
        Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;

.field private contentView:Landroid/widget/FrameLayout;

.field private currentDir:Ljava/io/File;

.field private empty:Lcom/vkontakte/android/ui/EmptyView;

.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/FilePickerActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vkontakte/android/VKActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->history:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/vkontakte/android/FilePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FilePickerActivity$1;-><init>(Lcom/vkontakte/android/FilePickerActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 415
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/FilePickerActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/FilePickerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->currentDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/FilePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/FilePickerActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vkontakte/android/FilePickerActivity;->listRoots()V

    return-void
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/FilePickerActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/FilePickerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/FilePickerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/FilePickerActivity;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/FilePickerActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FilePickerActivity;->listFiles(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/FilePickerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/FilePickerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/FilePickerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->history:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/FilePickerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/FilePickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FilePickerActivity;->showErrorBox(Ljava/lang/String;)V

    return-void
.end method

.method private getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v3, v5, v7

    .line 230
    .local v3, "total":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 231
    .local v0, "free":J
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const-string v5, ""

    .line 233
    :goto_0
    return-object v5

    :cond_0
    const v5, 0x7f0d00db

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v0, v1, v8}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/vkontakte/android/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/FilePickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private listFiles(Ljava/io/File;)Z
    .locals 17
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 161
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v12

    if-nez v12, :cond_3

    .line 162
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/sdcard"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/mnt/sdcard"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 163
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted_ro"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 164
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/FilePickerActivity;->currentDir:Ljava/io/File;

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 166
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, "state":Ljava/lang/String;
    const-string v12, "shared"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    const v13, 0x7f0d00e2

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 172
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/FilePickerActivity;->updateList()V

    .line 173
    const/4 v12, 0x1

    .line 224
    .end local v10    # "state":Ljava/lang/String;
    :goto_1
    return v12

    .line 170
    .restart local v10    # "state":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    const v13, 0x7f0d00dd

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    goto :goto_0

    .line 176
    .end local v10    # "state":Ljava/lang/String;
    :cond_2
    const v12, 0x7f0d0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/FilePickerActivity;->showErrorBox(Ljava/lang/String;)V

    .line 177
    const/4 v12, 0x0

    goto :goto_1

    .line 179
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    const v13, 0x7f0d0197

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 180
    const/4 v4, 0x0

    .line 182
    .local v4, "files":[Ljava/io/File;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 188
    if-nez v4, :cond_4

    .line 189
    const v12, 0x7f0d033d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/FilePickerActivity;->showErrorBox(Ljava/lang/String;)V

    .line 190
    const/4 v12, 0x0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v11

    .line 184
    .local v11, "x":Ljava/lang/Exception;
    const-string v12, "vk"

    invoke-static {v12, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    invoke-virtual {v11}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vkontakte/android/FilePickerActivity;->showErrorBox(Ljava/lang/String;)V

    .line 186
    const/4 v12, 0x0

    goto :goto_1

    .line 192
    .end local v11    # "x":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/FilePickerActivity;->currentDir:Ljava/io/File;

    .line 193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 194
    new-instance v12, Lcom/vkontakte/android/FilePickerActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vkontakte/android/FilePickerActivity$3;-><init>(Lcom/vkontakte/android/FilePickerActivity;)V

    invoke-static {v4, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 202
    move-object v2, v4

    .local v2, "arr$":[Ljava/io/File;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_b

    aget-object v3, v2, v6

    .line 203
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 202
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 204
    :cond_5
    new-instance v7, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v12}, Lcom/vkontakte/android/FilePickerActivity$ListItem;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$1;)V

    .line 205
    .local v7, "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    .line 206
    iput-object v3, v7, Lcom/vkontakte/android/FilePickerActivity$ListItem;->file:Ljava/io/File;

    .line 207
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 208
    const v12, 0x7f0200c3

    iput v12, v7, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    .line 221
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "fname":Ljava/lang/String;
    const-string v12, "\\."

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 212
    .local v9, "sp":[Ljava/lang/String;
    array-length v12, v9

    const/4 v13, 0x1

    if-le v12, v13, :cond_a

    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v9, v12

    :goto_5
    iput-object v12, v7, Lcom/vkontakte/android/FilePickerActivity$ListItem;->ext:Ljava/lang/String;

    .line 213
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_8

    .line 215
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v7, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 216
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 217
    const-string v12, ".jpg"

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, ".png"

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, ".gif"

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, ".jpeg"

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 218
    :cond_9
    new-instance v12, Landroid/net/Uri$Builder;

    invoke-direct {v12}, Landroid/net/Uri$Builder;-><init>()V

    const-string v13, "file"

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    const-string v13, "w"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v15, 0x425c0000    # 55.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/vkontakte/android/FilePickerActivity$ListItem;->thumb:Ljava/lang/String;

    goto/16 :goto_4

    .line 212
    :cond_a
    const-string v12, "?"

    goto/16 :goto_5

    .line 223
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fname":Ljava/lang/String;
    .end local v7    # "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    .end local v9    # "sp":[Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/FilePickerActivity;->updateList()V

    .line 224
    const/4 v12, 0x1

    goto/16 :goto_1
.end method

.method private listRoots()V
    .locals 17

    .prologue
    .line 237
    const v15, 0x7f0d01f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkontakte/android/FilePickerActivity;->setTitle(I)V

    .line 238
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/vkontakte/android/FilePickerActivity;->currentDir:Ljava/io/File;

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 240
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "extStorage":Ljava/lang/String;
    new-instance v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/vkontakte/android/FilePickerActivity$ListItem;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$1;)V

    .line 242
    .local v2, "ext":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_0
    const v15, 0x7f0d00df

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    .line 243
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_1
    const v15, 0x7f0200dc

    :goto_1
    iput v15, v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/FilePickerActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    iput-object v15, v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;->file:Ljava/io/File;

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :try_start_0
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    const-string v16, "/proc/mounts"

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 250
    .local v12, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v1, "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v13, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 253
    .local v3, "extDevice":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 254
    const-string v15, "/mnt"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "/storage"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "/sdcard"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_3
    const-string v15, "asec"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "tmpfs"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "none"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 255
    const-string v15, " "

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "info":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v15, 0x0

    aget-object v15, v7, v15

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_4
    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    const/16 v16, 0x1

    aget-object v16, v7, v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v15, 0x1

    aget-object v15, v7, v15

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    aget-object v3, v7, v15

    .line 259
    :cond_5
    const/4 v15, 0x1

    aget-object v15, v7, v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 279
    .end local v1    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "extDevice":Ljava/lang/String;
    .end local v7    # "info":[Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v14

    .line 280
    .local v14, "x":Ljava/lang/Exception;
    const-string v15, "vk"

    invoke-static {v15, v14}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .end local v14    # "x":Ljava/lang/Exception;
    :cond_6
    new-instance v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v15}, Lcom/vkontakte/android/FilePickerActivity$ListItem;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$1;)V

    .line 283
    .local v5, "fs":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    const-string v15, "/"

    iput-object v15, v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    .line 284
    const v15, 0x7f0d00e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 285
    const v15, 0x7f0200c3

    iput v15, v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    .line 286
    new-instance v15, Ljava/io/File;

    const-string v16, "/"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v15, v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;->file:Ljava/io/File;

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/FilePickerActivity;->updateList()V

    .line 289
    return-void

    .line 242
    .end local v5    # "fs":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    :cond_7
    const v15, 0x7f0d00dc

    goto/16 :goto_0

    .line 243
    :cond_8
    const v15, 0x7f02015b

    goto/16 :goto_1

    .line 262
    .restart local v1    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v3    # "extDevice":Ljava/lang/String;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 263
    if-eqz v3, :cond_6

    .line 265
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 267
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    .local v11, "path":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, "sd"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 270
    .local v8, "isSd":Z
    new-instance v9, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15}, Lcom/vkontakte/android/FilePickerActivity$ListItem;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$1;)V

    .line 271
    .local v9, "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    if-eqz v8, :cond_a

    const v15, 0x7f0d00df

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    .line 272
    const v15, 0x7f0200dc

    iput v15, v9, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    .line 273
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/vkontakte/android/FilePickerActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v9, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 274
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v15, v9, Lcom/vkontakte/android/FilePickerActivity$ListItem;->file:Ljava/io/File;

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 276
    .end local v8    # "isSd":Z
    .end local v9    # "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    :catch_1
    move-exception v15

    goto :goto_3

    .line 271
    .restart local v8    # "isSd":Z
    .restart local v9    # "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    :cond_a
    const v15, 0x7f0d00da

    goto :goto_4
.end method

.method private showErrorBox(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00d0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 158
    return-void
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->adapter:Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;->notifyDataSetChanged()V

    .line 315
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 316
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/FilePickerActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;

    .line 302
    .local v0, "he":Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;
    iget-object v1, v0, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/FilePickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, v0, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->dir:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, v0, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->dir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/FilePickerActivity;->listFiles(Ljava/io/File;)Z

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    iget v2, v0, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->scrollItem:I

    iget v3, v0, Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;->scrollOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 311
    .end local v0    # "he":Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;
    :goto_1
    return-void

    .line 306
    .restart local v0    # "he":Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/FilePickerActivity;->listRoots()V

    goto :goto_0

    .line 309
    .end local v0    # "he":Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;
    :cond_1
    invoke-super {p0}, Lcom/vkontakte/android/VKActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 68
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->contentView:Landroid/widget/FrameLayout;

    .line 71
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 72
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$1;)V

    iput-object v2, p0, Lcom/vkontakte/android/FilePickerActivity;->adapter:Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/ui/PaddingColorDrawable;

    const v3, -0x1a1a1b

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/ui/PaddingColorDrawable;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 81
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 82
    invoke-static {p0}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    .line 83
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 84
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0d0197

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 85
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/FilePickerActivity;->setContentView(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/vkontakte/android/FilePickerActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/FilePickerActivity$2;-><init>(Lcom/vkontakte/android/FilePickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$1;)V

    iget-object v3, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    invoke-direct {v1, v2, v3, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 131
    invoke-direct {p0}, Lcom/vkontakte/android/FilePickerActivity;->listRoots()V

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/vkontakte/android/FilePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/FilePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/vkontakte/android/VKActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FilePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/vkontakte/android/FilePickerActivity;->finish()V

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
