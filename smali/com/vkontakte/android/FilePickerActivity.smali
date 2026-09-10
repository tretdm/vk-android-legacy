.class public Lcom/vkontakte/android/FilePickerActivity;
.super Lcom/vkontakte/android/VKActivity;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;,
        Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;,
        Lcom/vkontakte/android/FilePickerActivity$HistoryEntry;,
        Lcom/vkontakte/android/FilePickerActivity$ListItem;
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

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FilePickerActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->currentDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FilePickerActivity;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/vkontakte/android/FilePickerActivity;->listRoots()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/FilePickerActivity;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FilePickerActivity;->listFiles(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/FilePickerActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/FilePickerActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/FilePickerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/FilePickerActivity;->history:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/FilePickerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
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

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    const v5, 0x7f0802e7

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
    .locals 14
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_3

    .line 162
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/sdcard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/mnt/sdcard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 163
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted_ro"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 164
    iput-object p1, p0, Lcom/vkontakte/android/FilePickerActivity;->currentDir:Ljava/io/File;

    .line 165
    iget-object v7, p0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 166
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "state":Ljava/lang/String;
    const-string v7, "shared"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    iget-object v7, p0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    const v8, 0x7f0802e6

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 172
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/FilePickerActivity;->updateList()V

    .line 173
    const/4 v7, 0x1

    .line 224
    .end local v5    # "state":Ljava/lang/String;
    :goto_1
    return v7

    .line 170
    .restart local v5    # "state":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    const v8, 0x7f0802e5

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    goto :goto_0

    .line 176
    .end local v5    # "state":Ljava/lang/String;
    :cond_2
    const v7, 0x7f0802d8

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vkontakte/android/FilePickerActivity;->showErrorBox(Ljava/lang/String;)V

    .line 177
    const/4 v7, 0x0

    goto :goto_1

    .line 179
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/FilePickerActivity;->empty:Lcom/vkontakte/android/ui/EmptyView;

    const v8, 0x7f0802e8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "files":[Ljava/io/File;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    if-nez v1, :cond_4

    .line 189
    const v7, 0x7f080281

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vkontakte/android/FilePickerActivity;->showErrorBox(Ljava/lang/String;)V

    .line 190
    const/4 v7, 0x0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v6

    .line 184
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    invoke-virtual {v6}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vkontakte/android/FilePickerActivity;->showErrorBox(Ljava/lang/String;)V

    .line 186
    const/4 v7, 0x0

    goto :goto_1

    .line 192
    .end local v6    # "x":Ljava/lang/Exception;
    :cond_4
    iput-object p1, p0, Lcom/vkontakte/android/FilePickerActivity;->currentDir:Ljava/io/File;

    .line 193
    iget-object v7, p0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 194
    new-instance v7, Lcom/vkontakte/android/FilePickerActivity$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/FilePickerActivity$3;-><init>(Lcom/vkontakte/android/FilePickerActivity;)V

    invoke-static {v1, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 202
    array-length v9, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-lt v8, v9, :cond_5

    .line 223
    invoke-direct {p0}, Lcom/vkontakte/android/FilePickerActivity;->updateList()V

    .line 224
    const/4 v7, 0x1

    goto :goto_1

    .line 202
    :cond_5
    aget-object v0, v1, v8

    .line 203
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 202
    :goto_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_2

    .line 204
    :cond_6
    new-instance v3, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/vkontakte/android/FilePickerActivity$ListItem;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$ListItem;)V

    .line 205
    .local v3, "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    .line 206
    iput-object v0, v3, Lcom/vkontakte/android/FilePickerActivity$ListItem;->file:Ljava/io/File;

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 208
    const v7, 0x7f020130

    iput v7, v3, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    .line 221
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "fname":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "sp":[Ljava/lang/String;
    array-length v7, v4

    const/4 v10, 0x1

    if-le v7, v10, :cond_b

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v4, v7

    :goto_5
    iput-object v7, v3, Lcom/vkontakte/android/FilePickerActivity$ListItem;->ext:Ljava/lang/String;

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/vkontakte/android/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v10, v11, v7}, Lcom/vkontakte/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_9

    .line 215
    iget-object v7, v3, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v10, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 216
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 217
    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, ".png"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, ".gif"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, ".jpeg"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 218
    :cond_a
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v10, "file"

    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v10, "w"

    new-instance v11, Ljava/lang/StringBuilder;

    const/high16 v12, 0x425c0000    # 55.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkontakte/android/FilePickerActivity$ListItem;->thumb:Ljava/lang/String;

    goto/16 :goto_4

    .line 212
    :cond_b
    const-string v7, "?"

    goto/16 :goto_5
.end method

.method private listRoots()V
    .locals 17

    .prologue
    .line 237
    const v14, 0x7f0802e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/FilePickerActivity;->setTitle(I)V

    .line 238
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkontakte/android/FilePickerActivity;->currentDir:Ljava/io/File;

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 240
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "extStorage":Ljava/lang/String;
    new-instance v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/vkontakte/android/FilePickerActivity$ListItem;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$ListItem;)V

    .line 242
    .local v2, "ext":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x9

    if-lt v14, v15, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_0
    const v14, 0x7f0802e1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    .line 243
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x9

    if-lt v14, v15, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_1
    const v14, 0x7f020148

    :goto_1
    iput v14, v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/FilePickerActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    iput-object v14, v2, Lcom/vkontakte/android/FilePickerActivity$ListItem;->file:Ljava/io/File;

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    const-string v15, "/proc/mounts"

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 250
    .local v11, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v1, "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 253
    .local v3, "extDevice":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-nez v9, :cond_6

    .line 262
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 263
    if-eqz v3, :cond_3

    .line 265
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 267
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_a

    .line 282
    .end local v1    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "extDevice":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_4
    new-instance v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/vkontakte/android/FilePickerActivity$ListItem;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$ListItem;)V

    .line 283
    .local v5, "fs":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    const-string v14, "/"

    iput-object v14, v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    .line 284
    const v14, 0x7f0802e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 285
    const v14, 0x7f020130

    iput v14, v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    .line 286
    new-instance v14, Ljava/io/File;

    const-string v15, "/"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v14, v5, Lcom/vkontakte/android/FilePickerActivity$ListItem;->file:Ljava/io/File;

    .line 287
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/FilePickerActivity;->updateList()V

    .line 289
    return-void

    .line 242
    .end local v5    # "fs":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    :cond_4
    const v14, 0x7f0802e2

    goto/16 :goto_0

    .line 243
    :cond_5
    const v14, 0x7f0201db

    goto/16 :goto_1

    .line 254
    .restart local v1    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v3    # "extDevice":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    const-string v14, "/mnt"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "/storage"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "/sdcard"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_7
    const-string v14, "asec"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "tmpfs"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "none"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 255
    const-string v14, " "

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "info":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const/4 v14, 0x0

    aget-object v14, v6, v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_8
    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    aget-object v3, v6, v14

    .line 259
    :cond_9
    const/4 v14, 0x1

    aget-object v14, v6, v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 279
    .end local v1    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "extDevice":Ljava/lang/String;
    .end local v6    # "info":[Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v13

    .line 280
    .local v13, "x":Ljava/lang/Exception;
    const-string v14, "vk"

    invoke-static {v14, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 267
    .end local v13    # "x":Ljava/lang/Exception;
    .restart local v1    # "aliases":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v3    # "extDevice":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :try_start_2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    .local v10, "path":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v16, "sd"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 270
    .local v7, "isSd":Z
    new-instance v8, Lcom/vkontakte/android/FilePickerActivity$ListItem;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Lcom/vkontakte/android/FilePickerActivity$ListItem;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$ListItem;)V

    .line 271
    .local v8, "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    if-eqz v7, :cond_b

    const v14, 0x7f0802e1

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/vkontakte/android/FilePickerActivity$ListItem;->title:Ljava/lang/String;

    .line 272
    const v14, 0x7f020148

    iput v14, v8, Lcom/vkontakte/android/FilePickerActivity$ListItem;->icon:I

    .line 273
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/vkontakte/android/FilePickerActivity;->getRootSubtitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/vkontakte/android/FilePickerActivity$ListItem;->subtitle:Ljava/lang/String;

    .line 274
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v14, v8, Lcom/vkontakte/android/FilePickerActivity$ListItem;->file:Ljava/io/File;

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/FilePickerActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 276
    .end local v7    # "isSd":Z
    .end local v8    # "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    :catch_1
    move-exception v14

    goto/16 :goto_3

    .line 271
    .restart local v7    # "isSd":Z
    .restart local v8    # "item":Lcom/vkontakte/android/FilePickerActivity$ListItem;
    :cond_b
    const v14, 0x7f0802e3

    goto :goto_5
.end method

.method private showErrorBox(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    const v1, 0x7f080042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 157
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

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$FileListAdapter;)V

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

    const v2, 0x7f0200e6

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

    const v2, 0x7f0802e8

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

    invoke-direct {v2, p0, v5}, Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;-><init>(Lcom/vkontakte/android/FilePickerActivity;Lcom/vkontakte/android/FilePickerActivity$DocsThumbsAdapter;)V

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

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 292
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

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
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
